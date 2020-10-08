<!-- 댓글 삭제 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="student.*"%>
<%@ page import="board.*"%>

	<%
	// 세션정보 받아와서 id에 저장
	int id = (Integer) session.getAttribute("uid"); 

	// 학생 인스턴스 생성, 학생 정보 가져와서 stu_b에 저장
	StudentDBBean manager = StudentDBBean.getInstance(); 
	StudentBean stu_b = manager.getStudent(id); 
	
	// 가져온 학생 정보에서 학번을 가져와서 저장
	int stu_id = stu_b.getStu_id(); 

	// 넘어온 게시판 고유번호
	int cmt_index = Integer.parseInt(request.getParameter("comm_index"));
	// 넘어온 댓글 번호
	int cmtnum = Integer.parseInt(request.getParameter("cmt_num")); 
	
	// 댓글 인스턴스 생성
	CommentDBBean cdb = CommentDBBean.getInstance(); 
	CommentBean comment = new CommentBean();
	
	ArrayList<CommentBean> commentList = cdb.getListComment(cmt_index); 
	
	int cmt_num = 0;
	int cmt_stu_id = 0;
	
	// commentList 값 조회 반복(삭제시 필요한 정보 가져오기)
	for (int i = 0; i < commentList.size(); i++) { 
		comment = commentList.get(i);
		cmt_num = comment.getCmt_num();
		cmt_stu_id = comment.getCmt_stu_id();
		
		// 만약 댓글 작성자의 학번과 현재 세션의 학번이 같고, 넘어온 댓글번호와 commentList에 있는 댓글번호가 같으면 삭제
		if(cmt_stu_id == stu_id && cmtnum == cmt_num) { 
			
			int re = cdb.deleteComment(cmt_index, cmt_num);

			System.out.print("re >> " + re);
			
			if (re == 1) { // 삭제 메소드를 돌고 난 return 값이 1이면 삭제 후 기존 게시글로 이동
				out.print("<script>");
				out.print("alert('삭제 완료');");
				out.print("location.href='comm_Show.jsp?comm_index=" + cmt_index + "'");
				out.print("</script>");		
			}else{
				out.print("<script>");
				out.print("alert('댓글 삭제 실패');");
				out.print("history.go(-1);");
				out.print("</script>");
			}
		}
	}
	
	%>
