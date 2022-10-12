<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<%-- Ajax를 사용하려면 jquery 원본이 있어야 한다. --%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>회원 정보 추가</h1>
		
		<form method="post" action="/lesson06/ex01/add_user">
			<div class="form-group">
				<label for="name">이름</label>
				<input type="text" id="name" name="name" class="form-control">
			</div>
			<div class="form-group">
				<label for="yyyymmdd">생년월일</label>
				<input type="text" id="yyyymmdd" name="yyyymmdd" class="form-control">
			</div>
			<div class="form-group">
				<label for="email">이메일 주소</label>
				<input type="text" id="email" name="email" class="form-control">
			</div>
			<div class="form-group">
				<label for="introduce">자기소개</label>
				<textarea id="introduce" name="introduce" class="form-control"></textarea>				
			</div>
			
			<%-- ajax 사용할 때는 type을 반드시 button으로 한다. --%>
			<button type="button" id="addBtn" class="btn btn-info">추가</button>
		</form>
	</div>
	
<script>
$(document).ready(function() {
	// (1) jquery의 submit 기능 이용하기
	/* $('form').on('submit', function(e) {
		//e.preventDefault(); // submit 되는 것을 막는다.
		//alert("추가 버튼 클릭");
		
		// validation
		let name = $('#name').val().trim();
		if (name.length < 1) {
			alert("이름을 입력하세요");
			return false;
		}
		
		let yyyymmdd = $('#yyyymmdd').val().trim();
		if (yyyymmdd == "") {
			alert("생년월일 입력하세요");
			return false;
		}
		
		if (isNaN(yyyymmdd)) {
			alert("숫자만 입력하세요");
			return false;
		}
		
		let email = $('#email').val().trim();
		if (email == "") {
			alert("이메일을 입력하세요");
			return false;
		}
		
		// 여기까지 도달하면 submit이 진행된다.
	}); */
	
	// (2) jquery의 AJAX 통신을 이용하기 - ***button type을 button으로 변경***
	$('#addBtn').on('click', function(e) {
		e.preventDefault(); // 안해도 되는데...
		
		//alert("추가 버튼 클릭");
		
		// validation
		let name = $('#name').val().trim();
		if (name.length < 1) {
			alert("이름을 입력하세요");
			return;
		}
		
		let yyyymmdd = $('#yyyymmdd').val().trim();
		if (yyyymmdd == "") {
			alert("생년월일 입력하세요");
			return;
		}
		
		if (isNaN(yyyymmdd)) {
			alert("숫자만 입력하세요");
			return;
		}
		
		let email = $('#email').val().trim();
		if (email == "") {
			alert("이메일을 입력하세요");
			return;
		}
		
		let introduce = $('#introduce').val();
		
		// 서버에 전송 AJAX: 폼태그와 상관없이 비동기로 별도 요청(request)
		$.ajax({
			// request
			type:"POST"   // method 방식
			, url:"/lesson06/ex01/add_user" // 요청 주소
			, data:{"name":name, "yyyymmdd":yyyymmdd, "email":email, "introduce":introduce}
			
			// response
			, success: function(data) {
				//alert(data);
				if (data == "success") {
					location.href = "/lesson06/ex01/get_user_view";
				}
			}
			, complete: function(data) {
				alert("완료");
			}
			, error: function(e) {
				alert("에러:" + e);
			}
		});
	});
	
});
</script>
</body>
</html>



