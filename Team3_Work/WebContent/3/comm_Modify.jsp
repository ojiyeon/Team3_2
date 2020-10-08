<!-- 글 수정 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="board.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/1_1.css" type="text/css" />
<script type="text/javascript" src="../3/script.js" charset="utf-8"></script>

<link href="../resource/css/bootstrap.min.css" rel="stylesheet">
<link href="../resource/css/custom.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resource/js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:include page="../main/menu.jsp"></jsp:include>
	<jsp:include page="../main/sidemenu.jsp"></jsp:include>

	<%
	// 게시판 종류
	int comm_groupn = Integer.parseInt(request.getParameter("comm_groupn"));
	
	// 게시글 고유번호
	int comm_index = Integer.parseInt(request.getParameter("comm_index")); 
	
	// 게시판 인스턴스 생성
	BoardDBBean db = BoardDBBean.getInstance();

	// 글 수정은 조회수 올릴 필요 없기때문에 false 값
	BoardBean board = db.getBoard(comm_index, false); 
	%>

	<div id="contents">
		<div class="container">
			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">게시글 수정</li>
			</ul>

			<div id="tab-1" class="tab-content current">
				<form action="comm_Modify_Ok.jsp?comm_index=<%=comm_index%>&comm_groupn=<%=comm_groupn%>" method="post" name="form" enctype="multipart/form-data">
				<input type="hidden" name="existing_file" value="<%=board.getComm_originFileName()%>">
				<input type="hidden" name="existing_sys_file" value="<%=board.getComm_systemFileName()%>">
					<div class="table">
						<table class="table table-bordered" cellpadding="10" cellspacing="4" width="800" height="200">
							<%
								if (comm_groupn == 1) {
									// 자유게시판에서 글 쓸 경우 select 박스 안보임
							%>

							<%
								} else if (comm_groupn == 2 || comm_groupn == 3) {
							%>
							<tr height="40">
								<td align="left">
									<select name="qanda">
										<option>문의 종류를 선택하세요</option>
										<option value="2">[학사 문의]</option>
										<option value="3">[학적 문의]</option>
									</select>
								</td>
							</tr>
							<%
								}
							%>
							<tr height="40">
								<td>
									<input type="text" size="100" name="comm_title" value="<%=board.getComm_title()%>" />
								</td>
							</tr>
							<tr height="450">
								<td>
									<textarea class="textarea" rows="25" cols="100" name="comm_content"><%=board.getComm_content()%></textarea>
								</td>
							</tr>
							<tr height="40">
							<%
								// 기존에 첨부한 파일이 있을 경우
								if(board.getComm_originFileName() != null){
							%>
								<td>
									기존 파일 : <%=board.getComm_originFileName() %>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="file" id="file" name="comm_file"/>							
								</td>
							<%
								}else{
									// 기존에 첨부한 파일이 없을 경우
							%>
								<td class="file">
									<input type="file" id="file" name="comm_file"/>
								</td>
							<%
								}
							%>
							</tr>
						</table>
					</div>

					<!-- 수정 & 초기화 & 목록으로 버튼 -->
					<p class="mbutton">
						<input type="button" class="button" value="수정" onclick="check_ok()" /> 
						&nbsp;&nbsp; 
						<input type="reset" class="button" value="초기화" />
						&nbsp;&nbsp; 
						<input type="button" class="button" value="목록으로" onClick="history.go(-1);"/>
					</p>
				</form>
				
			</div>
			<!-- <div id="tab-1" class="tab-content current"> END -->
		</div>
		<!-- <div class="container"> END -->
	</div>
	<!-- <div id="contents"> END -->
</body>
</html>