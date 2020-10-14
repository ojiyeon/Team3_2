<%@page import="java.util.ArrayList"%>
<%@page import="student.StudentDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="left">
		<select name="sc_grade">
			<%
			int id = Integer.parseInt(request.getParameter("id"));

			StudentDBBean student = StudentDBBean.getInstance();
			/* 자신이 수강 들었던 학년만 option에 나타나게 하기 위해  */
			ArrayList<Integer> grade = student.getGrade(id);
			for (int i = 0; i < grade.size(); i++) {
				out.println("<option value='" + grade.get(i) + "'>" + grade.get(i) + "학년</option>");
			}
			%>
		</select> 
		<select name="sc_semester">
			<option value="1">1학기</option>
			<option value="2">2학기</option>
		</select> <input type="button" class="button" value="조회"
			onclick="getClassInfo('<%=id%>')">
	</div>
	
	<div style="float: left; margin: 25px 10px 25px 100px;" id="resultClass">
				<!-- 자신이 들었던 수강과목 정보 테이블 결과를 받음  -->
	</div>

	<div class="cont2 cont_1" style="float: right; margin: 25px 100px 25px 10px;" id="resultAttend">
			<!-- 자신이 들었던 수강과목 정보 테이블에 해당 행 클릭시  보여줄 출석 테이블의 결과-->
	</div>
</body>
</html>