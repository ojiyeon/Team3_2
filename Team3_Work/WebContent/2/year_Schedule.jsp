<%@page import="schedule.ScheduleBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="student.StudentDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Univ_Scheduel</title>
<link rel="stylesheet" href="../css/schedule.css" type="text/css" />
</head>
<body>
	<%
		StudentDBBean student = StudentDBBean.getInstance();
	ArrayList<ScheduleBean> viewlist = null;

	int year = Integer.parseInt(request.getParameter("year"));
	viewlist = student.ScheduleView(year);

	for (int i = 0; i < viewlist.size(); i++) {
		ScheduleBean view2 = viewlist.get(i);

		int start_year = view2.getShce_startyear();
		int start_month = view2.getShce_startmonth();
		int start_day = view2.getShce_startday();
		int end_month = view2.getShce_endmonth();
		int end_day = view2.getShce_endday();
		int holiday = view2.getShce_holiday();
		String content = view2.getSche_content();
		
		if(start_month == end_month && start_day == end_day){
	%>
	<!-- <tr>
		<td class="phead1" colspan="2">2020³â 9¿ù</td>
	</tr> -->
	<tr calss="trbody">
		<td class="pdate"><%=start_month%>&nbsp;.<%=start_day %></td>
		<td class="pdesc"><%=content%></td>
	</tr>
	
	<%
		
		}else{
			%>
			<tr calss="trbody">
			
			<td class="pdate">
				<%=start_month%>&nbsp;.<%=start_day %> ~
				<%=end_month%>&nbsp;.<%=end_day %>
			</td>
			<td class="pdesc"><%=content%></td>
		
		</tr>
		<%
		}
		
		}
	%>
</body>
</html>
