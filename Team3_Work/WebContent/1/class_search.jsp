<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		int grade = Integer.parseInt(request.getParameter("grade"));
		int semester = Integer.parseInt(request.getParameter("semester"));
	%>
	
   <form action="stu_Class_Info.jsp" name="hiddenForm">
      <input type="hidden" name="id" value="<%=id%>">
      <input type="hidden" name="grade" value="<%=grade%>">
      <input type="hidden" name="semester" value="<%=semester%>">
      <input type="hidden" name="class_search_result" value="result">
   
   </form>
   <script>
      document.hiddenForm.submit();
      
   </script>
	
</body>
</html>