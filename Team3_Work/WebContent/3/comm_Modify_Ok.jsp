<!-- 게시글 수정 완료 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="myUtil.HanConv"%>
<%@page import="java.util.Enumeration"%>
<%@page import="board.*"%>

<jsp:useBean id="board" class="board.BoardBean">
	<jsp:setProperty property="*" name="board" />
</jsp:useBean>

	<%
	// 게시판 종류
	int comm_groupn = Integer.parseInt(request.getParameter("comm_groupn")); 
	// 게시글 고유 번호
	int comm_index = Integer.parseInt(request.getParameter("comm_index"));
	
	// 게시글 인스턴스 생성
	BoardDBBean db = BoardDBBean.getInstance();
	
	// 파일 업로드
	// request.getRealPath("/upload") 를 통해 파일을 저장할 절대 경로를 구해온다
	// 운영체제 및 프로젝트가 위차할 환경에 따라 경로가 다르기 때문에 아래처럼 구해오는 것
	String path = request.getRealPath("/upload");
	System.out.println("절대경로 : " + path + "<br/>");

	int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한

	String comm_title = "";
	String comm_content = "";
	String existFile = ""; // 기존 파일명
	String existingSysFile = ""; // 기존 시스템 파일명

	String fileName1 = ""; // 중복처리된 이름
	String comm_originalFileName = ""; // 중복 처리 전 실제 원본 이름
	String fileType = ""; // 파일 타입
	long fileSize = 0; // 파일 사이즈

	MultipartRequest multi = null;

	try {

		multi = new MultipartRequest(request, path, maxSize, "euc-kr", new DefaultFileRenamePolicy());

		comm_title = multi.getParameter("comm_title");
		comm_content = multi.getParameter("comm_content");
		
		existFile = multi.getParameter("existing_file");
		existingSysFile = multi.getParameter("existing_sys_file");

		Enumeration files = multi.getFileNames();
		
		if (files != null) {

			while (files.hasMoreElements()) {

				String file1 = (String) files.nextElement();
				comm_originalFileName = multi.getOriginalFileName(HanConv.toKor(file1));
				
				System.out.println(comm_originalFileName);
				
				// 파일을 새로 등록했을 경우
				if(comm_originalFileName != null){
					fileName1 = multi.getFilesystemName(file1);
					fileType = multi.getContentType(file1);
					File file = multi.getFile(file1);
					fileSize = file.length();
					
					board.setComm_originFileName(comm_originalFileName);
					board.setComm_systemFileName(fileName1);
				}else{
				// 수정시에 파일을 업로드 하지 않았다면 기존 파일명 유지
					board.setComm_originFileName(existFile);
					board.setComm_systemFileName(existingSysFile);
				}
			}
		}	
	} catch (IOException e) {
		e.printStackTrace();
	}
	
	// 게시판 종류로 조건 걸기
	// 넘어온 게시판 종류 값에 따라 1 이면 자유게시판
	if (comm_groupn == 1) { 
		board.setComm_groupn(1);

	} else { 
	// 2 이면 문의 게시판
		// 문의 게시판 종류 판단
		int qanda = Integer.parseInt(multi.getParameter("qanda")); 
	
		// 만약 qanda:select option value 가 2이면 => 학사
		if (qanda == 2) { 
			board.setComm_groupn(2);
		} else {
		// 만약 qanda:select option value 가 3이면 => 학적
			board.setComm_groupn(3); 
		}
	}

	// 제목과 본문 인스턴스에 저장
	board.setComm_title(comm_title);
	board.setComm_content(comm_content);

	int re = db.editBoard(board);

	if (re == 1) {
		out.print("<script>");
		out.print("alert('게시글 수정이 완료되었습니다.');");
		out.print("location.href='comm_Show.jsp?comm_index=" + comm_index + "'");
		out.print("</script>");	
	} else {
		out.print("<script>");
		out.print("alert('게시글 수정에 실패했습니다');");
		out.print("history.go(-1);");
		out.print("</script>");
	}
	%>
