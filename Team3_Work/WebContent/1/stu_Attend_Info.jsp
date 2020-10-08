<!-- 수강정보 - 시간표확인 / 출석확인 -->
<%@page import="java.sql.Date"%>
<%@page import="attend.AttendBean"%>
<%@page import="attend.View2Bean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="student.StudentBean"%>
<%@page import="student.StudentDBBean"%>
<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수강정보</title>
<link rel="stylesheet" href="../css/1_1.css" type="text/css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="script.js"></script>

<style>
section {
	height: 80vh;
	display: block;
}
</style>

</head>
<body>
	<jsp:include page="../main/menu.jsp"></jsp:include>
	<jsp:include page="../main/sidemenu.jsp"></jsp:include>

	<%
		int id = (Integer) session.getAttribute("uid"); // 세션정보 받아와서 uid에 저장

		StudentDBBean student = StudentDBBean.getInstance();
		StudentBean stu_b = student.getStudent(id);
	
	%>
	<section>
		<div id="contents">
			<div class="container">

				<ul class="tabs">
					<li class="tab-link" data-tab="tab-1">나의 시간표</li>
					<li class="tab-link current" data-tab="tab-2">나의 출석</li>

				</ul>

				<div id="tab-1" class="tab-content">

					<select>
						<option><%=stu_b.getStu_grade()%>학년
						</option>
					</select> <select name="" id="">
						<option value="" selected>1학기</option>
						<option value="">2학기</option>
					</select> <input type="button" class="button" value="조회">

					<div class="timetable">
						<table cellpadding="8" cellspacing="0" width="500" height="400"
							align="center">
							<tr>
								<th>교시</th>
								<th>시간</th>
								<th>월</th>
								<th>화</th>
								<th>수</th>
								<th>목</th>
								<th>금</th>
							</tr>
							<tr>
								<td>1</td>
								<td>9:00~10:00</td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>2</td>
								<td>10:00~11:00</td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>3</td>
								<td>11:00~12:00</td>
								<td></td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>4</td>
								<td>12:00~13:00</td>
								<td></td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>5</td>
								<td>13:00~14:00</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>6</td>
								<td>13:00~14:00</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>7</td>
								<td>14:00~15:00</td>
								<td></td>
								<td></td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>8</td>
								<td>15:00~16:00</td>
								<td></td>
								<td></td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>10</td>
								<td>16:00~17:00</td>
								<td></td>
								<td></td>
								<td></td>
								<td>데이터베이스 구축</td>
							</tr>
							<tr>
								<td>11</td>
								<td>17:00~18:00</td>
								<td></td>
								<td></td>
								<td></td>
								<td>데이터베이스 구축</td>
							</tr>
						</table>
					</div>
				</div><!-- tab1 END -->


				<!-- =========================== 출석 정보 =============================== -->
			<div id="tab-2" class="tab-content current">
				<div>
					<select name="sc_grade">
			 	<%
			 		/* 자신이 수강 들었던 학년만 option에 나타나게 하기 위해  */
		           ArrayList<Integer> grade = student.getGrade(id);
		           for(int i=0; i<grade.size(); i++){
		              out.println("<option value='"+grade.get(i)+"'>"+grade.get(i)+"학년</option>");
		           }
		        %>
					</select> 
					<select name="sc_semester">
						<option value="1">1학기</option>
						<option value="2">2학기</option>
					</select>
					<input type="button" class="button" value="조회" onclick="getClassInfo(<%=id%>)">
				</div>
					
					
					
				<%
					ArrayList<View2Bean> viewlist = null;
					if(request.getParameter("class_search_result") != null){
				%>
					<div style="float: left; margin: 25px;">
						<table style="width: 500px;">
							<tr>
								<th>이수구분</th>
								<th>교과목명</th>
								<th>학점</th>
								<th>담당교수</th>								
							</tr>

				<%
						int temp_id = Integer.parseInt(request.getParameter("id"));
						int temp_grade = Integer.parseInt(request.getParameter("grade"));
						int temp_semester = Integer.parseInt(request.getParameter("semester"));
						
						viewlist = student.listView(temp_id, temp_grade, temp_semester);
						
						for(int i=0; i<viewlist.size(); i++){
							View2Bean view2 = viewlist.get(i);
							
							String subj_state = view2.getSubj_state();
							String subj_name = view2.getSubj_name();
							int subj_hakjum = view2.getSubj_hakjum();
							String pro_name = view2.getPro_name();
							int subj_code = view2.getSc_subj_code();
				%>
							<tr onclick="test(<%=id%>, <%=subj_code%>)" 
								style="cursor:pointer onMouseOver=this.style.backgroundColor='#F0F1F3' 
															 onMouseOut=this.style.backgroundColor='#FFFFFF'">
								<td><%=subj_state%></td>
								<td><%=subj_name%></td>
								<td><%=subj_hakjum %></td>
								<td><%=pro_name %></td>
							</tr>
				<% 
						}
					}
				%>	
					</table>
				  </div>
				<%
					if(request.getParameter("attend_search_result") !=null){
				%>
				  <div class="cont2 cont_1" style="float: right; margin-top:25px;">
					<table style="width: 300px;">
						<tr>
							<th>일자</th>
							<th>출결</th>
							<th>비고</th>
						</tr>
				<%
						ArrayList<AttendBean> listatd = null;				
						int temp_id2 = Integer.parseInt(request.getParameter("id"));
						int temp_grade2 = Integer.parseInt(request.getParameter("grade"));
						int temp_semester2 = Integer.parseInt(request.getParameter("semester"));
						int temp_code2 = Integer.parseInt(request.getParameter("code"));
						
				
						listatd= student.listAtd(temp_id2 , temp_grade2, temp_semester2 ,temp_code2);
						
						
						for(int i=0; i<listatd.size(); i++){
							AttendBean atd = listatd.get(i);
							
							Date atd_date= atd.getAtd_date();
							String atd_state= atd.getAtd_state();
							String atd_remark= atd.getAtd_remark();
							System.out.println(atd_state);
				%>
							<tr> 
								<td><%=atd_date%></td>
								<td><%=atd_state%></td>
								<td><%=atd_remark %></td>
							</tr>
							
				<% 
						}
					}
				%>	
					</table>
				  </div>	
				</div><!-- tab-2 END -->
			</div>
		</div>
	</section>
	
	<script>
		function getClassInfo(id){
			var grade = $("select[name=sc_grade]").val();
			var semester = $("select[name=sc_semester]").val();
			console.log(grade);
			console.log(semester);
			location.href='class_search.jsp?id='+id+'&grade='+grade+'&semester='+semester;

		
		}
		
		
		function test(id, sc_subj_code){
			var grade2 = $("select[name=sc_grade]").val();
			var semester2 = $("select[name=sc_semester]").val();
			console.log(grade2);
			console.log(semester2);
			location.href='attend_search.jsp?id='+id+'&grade='+grade2+'&semester='+semester2+'&sc_subj_code='+sc_subj_code;
		}
		
	</script>
	
	<jsp:include page="../main/footer.jsp"></jsp:include>
	
</body>
</html>