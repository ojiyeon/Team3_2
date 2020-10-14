<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="myUtil.HanConv"%>
<%@page import="board.*"%>
<%@page import="student.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<jsp:useBean id="board" class="board.BoardBean" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="board" />

	<%
	request.setCharacterEncoding("euc-kr");
	
	// 세션정보 받아와서 id에 저장
	int id = (Integer) session.getAttribute("uid"); 

	// 학생 인스턴스 생성, 학생 정보 가져와서 stu_b에 저장
	StudentDBBean manager = StudentDBBean.getInstance();
	StudentBean stu_b = manager.getStudent(id);
	
	// 가져온 학생의 이름과 학번을 변수에 저장
	String stu_name = stu_b.getStu_name();
	int stu_id = stu_b.getStu_id();

	// 넘어온 게시판종류 저장
	int comm_groupn = Integer.parseInt(request.getParameter("comm_groupn")); 
	
	// 작성일 저장
	board.setComm_date(new Timestamp(System.currentTimeMillis())); 

	// 게시글 객체 생성
	BoardDBBean db = BoardDBBean.getInstance(); 

	// 파일 업로드
	// request.getRealPath("/upload") 를 통해 파일을 저장할 절대 경로를 구해온다
	// 운영체제 및 프로젝트가 위차할 환경에 따라 경로가 다르기 때문에 아래처럼 구해오는 것
	String path = request.getRealPath("/upload");
	System.out.println("절대경로 : " + path + "<br/>");

	int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한

	String comm_title = "";
	String comm_content = "";

	int comm_num = 0, comm_step = 0, comm_level = 0, comm_ref = 1;

	String fileName1 = ""; // 중복처리된 이름
	String comm_originalFileName = ""; // 중복 처리 전 실제 원본 이름
	long fileSize = 0; // 파일 사이즈
	String fileType = ""; // 파일 타입
	
	MultipartRequest multi = null;

	try {

		multi = new MultipartRequest(request, path, maxSize, "euc-kr", new DefaultFileRenamePolicy());

		comm_title = multi.getParameter("comm_title");
		comm_content = multi.getParameter("comm_content");

		comm_num = Integer.parseInt(multi.getParameter("comm_num"));
		comm_step = Integer.parseInt(multi.getParameter("comm_step"));
		comm_level = Integer.parseInt(multi.getParameter("comm_level"));
		comm_ref = Integer.parseInt(multi.getParameter("comm_ref"));

		Enumeration files = multi.getFileNames();
			
		if (files != null) {
			while (files.hasMoreElements()) {
	
				String file1 = (String) files.nextElement();
				comm_originalFileName = multi.getOriginalFileName(HanConv.toKor(file1));
					
				System.out.println(comm_originalFileName);
				
				// 파일이 있을 경우
				if(comm_originalFileName != null){
					fileName1 = multi.getFilesystemName(file1);
					fileType = multi.getContentType(file1);
					File file = multi.getFile(file1);
					fileSize = file.length();
					board.setComm_originFileName(comm_originalFileName);
					board.setComm_systemFileName(fileName1);
				}else{
					board.setComm_originFileName(null);
					board.setComm_systemFileName(null);						
				}
			}
		}	
		
	} catch (IOException e) {
		e.printStackTrace();
	}

	
	// 게시판 종류로 조건 걸어서 게시판번호 저장
	// 넘어온 게시판 종류 값에 따라 1 이면 자유게시판
	if (comm_groupn == 1) { 
		board.setComm_groupn(1);
	
	} else if (comm_groupn == 2) { // 2 이면 문의 게시판
		// 문의 게시판 종류 받아옴
		int qanda = Integer.parseInt(multi.getParameter("qanda")); 
		
		// 문의게시판에서 만약 qanda 가 2이면(select value 값) 학사
		if (qanda == 2) { 
			board.setComm_groupn(2);
		} else {
			board.setComm_groupn(3); // 문의게시판에서 만약 qanda 가 3이면(select value 값) 학적
		}
	}
	

	// 받아온 학생이름, 학번을 board 인스턴스에 저장
	board.setComm_writer(stu_name);
	board.setComm_stu_id(stu_id);
	
	// 제목과 본문 인스턴스에 저장
	board.setComm_title(comm_title);
	board.setComm_content(comm_content);
	
	// 그룹번호(게시글의 index값을 받아와서 저장)
	board.setComm_ref(comm_ref); 

	// 답글일 경우 multi.getPara 로 받은 값들 저장
	if (comm_level != 0) { 
		board.setComm_step(comm_step); // 순서
		board.setComm_level(comm_level); // 위치
	}
	
	int re = db.insertBoard(board);

	if (re == 1) {
		if (comm_groupn == 1) {
			out.print("<script>");
			out.print("alert('게시글이 정상적으로 등록되었습니다');");
			out.print("location.href='comm_Freeboard.jsp';");
			out.print("</script>");
		} else if (comm_groupn == 2 || comm_groupn == 3) {
			out.print("<script>");
			out.print("alert('게시글이 정상적으로 등록되었습니다');");
			out.print("location.href='comm_Q_And_A.jsp';");
			out.print("</script>");
		}
	} else {
		out.print("<script>");
		out.print("alert('게시글 작성이 실패했습니다');");
		out.print("history.go(-1)");
		out.print("</script>");
	}
	%>
