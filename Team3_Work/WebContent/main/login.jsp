<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="student.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script language="JavaScript" src="login_sc.js" charset="utf-8"></script>
</head>
<body>
	<table border="1" align="center">
		<form method="post" name="login_frm" action="loginOk.jsp">
			<tr>
				<td align="center" colspan="2">
					<h2>로그인 페이지</h2>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="radio" name="class" value="s" checked>학 생 &nbsp;&nbsp;&nbsp;&nbsp;
					 <input type="radio" name="class" value="p">교 직 원
				</td>
			</tr>
			<tr height="30">
				<td width="100" align="center">ID</td>
				<td>
					<input type="text" name="user_id">
				</td>
			</tr>
			<tr height="30">
				<td width="100" align="center">PASSWORD</td>
				<td>
					<input type="password" name="user_pwd">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="LOGIN" onClick="check_ok()"> &nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="ID/PW찾기" onClick="javascript:window.location='id_Pwd_find.jsp'">
				</td>  
			</tr>
		</form>
	</table>
</body>
</html>