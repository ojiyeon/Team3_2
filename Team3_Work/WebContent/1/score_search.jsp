<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	int year = Integer.parseInt(request.getParameter("year"));
	int semester = Integer.parseInt(request.getParameter("semester"));
%>
   <form action="stu_Score_Info.jsp" name="hiddenForm">
      <input type="hidden" name="id" value="<%=id%>">
      <input type="hidden" name="year" value="<%=year%>">
      <input type="hidden" name="semester" value="<%=semester%>">
      <input type="hidden" name="score_search_result" value="result">
   
   </form>
   <script>
      document.hiddenForm.submit();
      
   </script>