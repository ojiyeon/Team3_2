<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="myUtil.HanConv"%>
<%@page import="student.*"%>
<%@page import="board.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Timestamp"%>

<%
	// request.setCharacterEncoding("euc-kr");	

	//페이징 처리
	String pageNUM = request.getParameter("pageNUM");
	if (pageNUM == null) {
		pageNUM = "1";
	}

	// 세션정보 받아와서 id에 저장
	int id = (Integer) session.getAttribute("uid"); 

	// 게시글 고유번호
	int comm_index = Integer.parseInt(request.getParameter("comm_index")); 
	
	// 학생 정보 받아오기
	StudentDBBean manager = StudentDBBean.getInstance();
	StudentBean stu_b = manager.getStudent(id);
	
	String stu_name = stu_b.getStu_name();
	int stu_id = stu_b.getStu_id();
	
	// 댓글 내용
	String cmt_content = HanConv.toKor(request.getParameter("comment")); 
	
	// 작성시간
	Timestamp cmt_date = new Timestamp(System.currentTimeMillis());
	
	
	// 게시판 정보 받아오기
	BoardDBBean bd = BoardDBBean.getInstance();
	BoardBean board = bd.getBoard(comm_index, true);
	
	if (board != null) {
		comm_index = board.getComm_index(); // 게시판 index 번호 받아와서 저장 
	}
	
	// 댓글 인스턴스 생성
	CommentDBBean cdb = CommentDBBean.getInstance();
	CommentBean comment = new CommentBean(comm_index, stu_name, cmt_content, cmt_date, stu_id);

	int re = cdb.insertComment(comment);
	
	if (re == 1) { // 메소드를 돌고 난 return 값이 1이면 삭제
		out.print("<script>");
		out.print("alert('댓글이 정상적으로 등록되었습니다');");
		out.print("location.href='comm_Show.jsp?comm_index=" + comm_index + "&pageNUM=" + pageNUM + "'");
		out.print("</script>");		
	}else{
		out.print("<script>");
		out.print("alert('댓글 삭제 실패');");
		out.print("history.go(-1);");
		out.print("</script>");
	}
	 %>
	