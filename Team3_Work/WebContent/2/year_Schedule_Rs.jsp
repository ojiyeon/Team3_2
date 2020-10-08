<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Univ_Scheduel</title>
<link rel="stylesheet" href="../css/schedule.css" type="text/css" />
</head>
<body>
	<jsp:include page="../main/menu.jsp"></jsp:include>
	<jsp:include page="../main/sidemenu.jsp"></jsp:include>
	
    <div id="doc-wrap">
      <article id="container-wrap">
   
        <div id="container">
          <div id="contents" class="div-cont">
            <div id="cont" class="pg-">
              <div class="c-tit01">2020학년도 학사일정</div>
              ◈ 학사일정과 관련한 내용은 학사관리팀 또는 게시판으로 문의하시기
              바랍니다.
              <br />
              <div class="pad20tf c">
                <a class="sg-btn" href="#" alt="작년" onclick="year(2019)">
                  <span>◀ 2019학년도</span>
                </a>
                <a class="sg-btn" alt="올해" onclick="year(2020)">
                  <span> 현재 2020학년도</span>
                </a>
                <a class="sg-btn" href="#" alt="내년" onclick="year(2021)">
                  <span>2021학년도▶</span>
                </a>
              </div>
        
              <table class="haksa-schedule-tb1" border="0" id="result">
              
             
              </table>
            </div>
            <!--pg- END-->
          </div>
          <!--div-cont END-->
        </div>
        <!--container END-->
      </article>
      <!-- -=============== container-wrap END-=============== -->
    </div>
    <!-- -=============== doc-wrap END-=============== -->
 
  </body>
  
  <script>
  var links = $(".sg-btn"); //클릭한 년도의  색상지정
  links.click(function() {
       links.css('background-color', '#f0f0f0');
       links.css('color', '#666666');
       $(this).css('background-color', '#12264f');
       $(this).css('color', '#f0f0f0');
  }); 

  function year(num){
     $.ajax({
           type:"POST",
           url:"year_Schedule.jsp",
           data : {year : num},//getParameter로 받을 때 이름year와 매개변수 값 num
           success: function(xml){
				//table id="result"에 결과값이 표시 됨
        	   var tableData = document.getElementById("result");
               tableData.innerHTML = xml;
           },
           error: function(xhr, status, error) {
               alert(error);
           }  
       });  
  }
  </script>
</html>