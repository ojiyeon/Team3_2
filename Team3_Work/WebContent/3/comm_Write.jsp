<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="student.*"%>
<%@ page import="board.*" %>

<jsp:useBean id="board" class="board.BoardBean" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="board" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>글쓰기</title>
  	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
		int commgroupn = Integer.parseInt(request.getParameter("comm_groupn")); 
		
		int comm_num = 0, comm_ref = 0, comm_step = 0, comm_level = 0, comm_index = 0;
		String comm_title = "";
		int comm_groupn = 0;
		
		// 답글일 경우(comm_num과 comm_index 값 받기)
		if(request.getParameter("comm_num") != null && request.getParameter("comm_index") != null){
			comm_num = Integer.parseInt(request.getParameter("comm_num"));
			comm_index = Integer.parseInt(request.getParameter("comm_index"));
		}
		
		BoardDBBean db = BoardDBBean.getInstance();
		
		board = db.getBoard(comm_index, true);
		
		if(board != null){
			comm_index = board.getComm_index(); 
			comm_num = board.getComm_num();
			comm_step = board.getComm_step();
			comm_level = board.getComm_level();
			comm_ref = board.getComm_ref();
			comm_title = board.getComm_title();
			comm_groupn = board.getComm_groupn();
		}
	%>
	


	<div id="contents">
		<div class="container">
			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">글쓰기</li>
			</ul>
			<div id="tab-1" class="tab-content current">
				<form action="comm_Write_Ok.jsp?comm_groupn=<%=commgroupn%>&comm_num=<%=comm_num %>" method="post" name="form" enctype="multipart/form-data">
				<input type="hidden" name="comm_index" value="<%=comm_index%>">
				<input type="hidden" name="comm_step" value="<%=comm_step%>">
				<input type="hidden" name="comm_level" value="<%=comm_level%>">
				<input type="hidden" name="comm_ref" value="<%=comm_ref%>">
				<input type="hidden" name="qanda" value="<%=comm_groupn %>">
				
					<div class="table">
						<table class="table table-bordered" cellpadding="10" cellspacing="4" width="800" height="200">
						
						<%
							// 원글 작성일 경우
							if(comm_index == 0){
								// 게시판 종류가 1이면
								if(commgroupn == 1){
									// 문의 선택란 없음
								}else{
									// 게시판 종류가 2,3 이므로 문의 선택란 있음
						%>
							<tr height="40">
								<td align="left">
									<select name="qanda">
										<option>문의 종류를 선택하세요</option>
										<option value="2">[학사관련 문의]</option>
										<option value="3">[학적관련 문의]</option>
									</select>
								</td>
						<%		
								}
						%>
							</tr>
							<tr height="40">
								<td>
									<input type="text" size="100" name="comm_title" placeholder="제목을 입력하세요" />
								</td>
						<%
							}else{
								// 답글일 경우, 게시판종류와 상관없이 제목과 내용만 입력 가능하도록(groupn은 hidden 값으로 넘겨줌)
						%>
								<td>
									<input type="text" size="100" name="comm_title" value="[Re] <%=comm_title %>" />
								</td>
						<%
							}
						 %>
							</tr>			
							<tr height="450">
								<td>
									<textarea class="textarea" rows="25" cols="100" name="comm_content" placeholder="내용을 입력하세요"></textarea>
								</td>
							</tr>
							<tr height="40">
								<td class="file">
									<img alt="파일 아이콘" src="../css/file_icon.png" height="30">&nbsp;&nbsp;
									<input type="file" id="file" name="uploads" multiple/>
								</td>
							</tr>
						</table>
					<div id="selectedFileListWrap" class="table">
	           			 <table id="selectedFileList" class="table table-bordered">
	           			</table>
					</div>
					</div>
							

					<!-- 글쓰기 버튼 -->
					<p class="mbutton">
						<input type="button" class="button" value="글쓰기" onclick="check_ok()" /> 
						&nbsp;&nbsp; 
						<input type="reset" class="button" value="초기화" />
					</p>
				</form>
				
			</div>
			<!-- <div id="tab-1" class="tab-content current"> END -->
		</div>
		<!-- <div class="container"> END -->
	</div>
	<!-- <div id="contents"> END -->
</body>
<script>
$("#selectedFileListWrap").hide();
$(document).ready(function(){
    $('input[type="file"]').change(function(e){
    	$("#selectedFileListWrap").show();
    	const input = document.querySelector('#file');
    	const selectedFiles = input.files;
		var cnt = 1;
		var Parent = document.getElementById("selectedFileList");
		while(Parent.hasChildNodes()){
			Parent.removeChild(Parent.firstChild);		
		}

    	for(const file of selectedFiles) {
    		var tableData = document.getElementById("selectedFileList");
    		var row = tableData.insertRow(tableData.rows.length);
    		var cell = row.insertCell(0);
        	cell.innerHTML = "첨부파일 " + cnt + " <input type='text' readonly value='"+file.name+"'>";
       		cnt++;
    	}
    });
});
</script>
</html>