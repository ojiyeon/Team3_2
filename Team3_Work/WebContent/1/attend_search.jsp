<%@page import="java.util.ArrayList"%>
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
		int id2 = Integer.parseInt(request.getParameter("id"));
		int grade2 = Integer.parseInt(request.getParameter("grade"));
		int semester2 = Integer.parseInt(request.getParameter("semester"));
		int sc_subj_code = Integer.parseInt(request.getParameter("sc_subj_code"));
	%>
	
   <form action="stu_Class_Info.jsp" name="hiddenForm">
      <input type="hidden" name="id" value="<%=id2%>">
      <input type="hidden" name="grade" value="<%=grade2%>">
      <input type="hidden" name="semester" value="<%=semester2%>">
      <input type="hidden" name="code" value="<%=sc_subj_code%>">
      <input type="hidden" name="class_search_result" value="result">
      <input type="hidden" name="attend_search_result" value="result">
  <!-- input type="hidden" name="class_search_result" value="result"> -->
   </form>
   <script>
      document.hiddenForm.submit();
   </script>
</body>
</html>