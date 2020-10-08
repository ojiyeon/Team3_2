<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<!-- <link rel="stylesheet" href="../css/notice_sty.css" type="text/css"/> -->
<link href="../css/notice_sty.css" rel="stylesheet" type="text/css">
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
	<section class="notice">
		<div class="clear">
			<article>
				<div class="temp">
					<!--1-->
					<h2>학사 공지</h2>
					<ul>
						<li><a class="a" href="#a"><span>수강신청 하기 전 비밀번호 설정에 관한 자세한 사항을 확인하세요</span>
								<p>2020.09.06</p></a></li>
						<li><a class="a" href="#a">휴/복학 신청 안내 공지사항을 확인해주세요
								<p>2020.09.06</p>
						</a></li>
						<li><a class="a" href="#a"> 2020년 2학기 유고 결석에 따른 출석 인정 안내 사항
								<p>2020.09.06</p>
						</a></li>
						<li><a class="a" href="#a">학업증진 프로그램 참가신청에 대한 자세한 사항
								<p>2020.09.06</p>
						</a></li>
					</ul>
					<a class="a1" href="#a">더보기</a>
				</div>
				<div div class="temp">
					<!--2-->
					<h2>취업 공지</h2>
					<ul>
						<li><a class="a" href="#a">[부산도로교통공사] 2020년 상반기 신입 공채
								<p>2020.09.10</p>
						</a></li>
						<li><a class="a" href="#a"> <span> 2020년 취업에 성공하고 싶다면?!! 공백기를 대체할 수 있는 면접 Skill </span>
								<p>2020.09.10</p></a></li>
						<li><a class="a" href="#a"> 온/오프라인 면접, 자소서 클리닉 [4학년 대상]
								<p>2020.09.10</p>
						</a></li>
					</ul>
					<a class="a1" href="#a">더보기</a>
				</div>
			</article>
		</div>

	</section>
	<footer>
		<jsp:include page="../main/footer.jsp"></jsp:include>
	</footer>

</body>
</html>




