function execPostCode() { //stu_Info_Update 우편검색 onClick
   daum.postcode.load(function() {
      new daum.Postcode({
         oncomplete : function(data) { //팝업에서 검색결과 항목 클릭시 실행 코드
            var addr = ''; //주소 변수

            if (data.userSelectedType === 'R') { //사용자가 도로명 주소 선택시 R(rode)
               addr = data.roadAddress;
            } else {   //사용자가 지번 주소 선택시
               addr = data.jibunAddress;

            }

            //stu_Info_Update에서 id로 불러와서 주소 저장
            document.getElementById('stu_addr').value = addr;
            
            // 주소란으로 커서 이동
            document.getElementById('detailAddr').focus();
            
         }
      }).open();
   })
}