<%@page import="java.sql.Timestamp"%>
<%@page import="board.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="board" class="board.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="board" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>

<link href="../css/notice_sty.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../3/script.js" charset="utf-8"></script>


<!-- <link rel="stylesheet" href="../css/notice_sty.css" type="text/css"/> -->
<style>
section {
	height: 80vh;
	display: block;
}

footer {
	clear: both;
	display: block;
}

footer {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../main/menu.jsp"></jsp:include>
	<jsp:include page="../main/sidemenu.jsp"></jsp:include>

	<%
	BoardDBBean db = new BoardDBBean();

	String search_col = request.getParameter("select_col");
	String search = request.getParameter("search");

	ArrayList<BoardBean> noticeList = new ArrayList<BoardBean>();
	ArrayList<BoardBean> boardList = new ArrayList<BoardBean>();

	String pageNUM = request.getParameter("pageNUM");
	if (pageNUM == null) {
		pageNUM = "1";
	}

	noticeList = db.getListBoard(search_col, search, 4, pageNUM);
	boardList = db.getListBoard(search_col, search, 1, pageNUM);

	String stu_name = (String) session.getAttribute("stu_name");

	String comm_title, comm_date2;

	Timestamp b_date;

	int comm_index = 0;
	int comm_groupn = 0;
	int comm_step = 0;
	%>



	<section class="notice">
		
		<div class="clear">
			<article>
					<!--1-->
				<div class="temp">
					<h2>학사 공지</h2>

					<%
						for (int i = 0; i < noticeList.size(); i++) { // 5개까지만(공지는 답댓 기능이 없어서 단순 for문으로 처리)
							
						board = noticeList.get(i);
						comm_index = board.getComm_index();
						comm_groupn = board.getComm_groupn();
						comm_title = board.getComm_title();
						comm_date2 = board.getDate2();

						if (comm_groupn == 4) {
							
					%>
					<ul>
						<li>
						<a class="a" href="../3/comm_Show.jsp?comm_index=<%=comm_index%>&pageNUM=<%=pageNUM%>"><span> <%=comm_title%></span>
								<p><%=comm_date2%></p>
						</a>
					</li>

				<%
					}
				}
				%>
					</ul>
					<a class="a1" href="../2/stu_Notice.jsp">더보기</a>
				</div>


					<!--2-->
				<div class="temp">
					<h2>자유게시판</h2>
					<%
						for (int i = 0; i < 5; i++) { // 5개까지만
						board = boardList.get(i);
						comm_index = board.getComm_index();
						comm_groupn = board.getComm_groupn();
						comm_title = board.getComm_title();
						comm_date2 = board.getDate2();
						comm_step = board.getComm_step();

						if (comm_groupn == 1) {
							
							
					%>
					<ul>
						<li>
						<a class="a" href="../3/comm_Show.jsp?comm_index=<%=comm_index%>&pageNUM=<%=pageNUM%>"><span> <%=comm_title%></span>
								<p><%=comm_date2%></p>
						</a>
					</li>

				<%
							}
				}
				%>
					</ul>
					<a class="a1" href="../3/comm_Freeboard.jsp">더보기</a>
				</div>
			</article>
		</div>

	</section>
	<footer>
		<jsp:include page="../main/footer.jsp"></jsp:include>
	</footer>

</body>
</html>




