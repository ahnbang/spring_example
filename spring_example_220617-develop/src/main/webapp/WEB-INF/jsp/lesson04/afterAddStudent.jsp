<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${subject}</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>${subject}</h1>
		
		<table class="table table-striped">
			<tr>
				<th>번호</th>
				<td>${student.id}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${student.name}</td>
			</tr>
			<tr>
				<th>휴대폰 번호</th>
				<td>${student.phoneNumber}</td>
			</tr>
			<tr>
				<th>장래희망</th>
				<td>${student.dreamJob}</td>
			</tr>
			<tr>
				<th>생성일</th>
				<td>${student.createdAt}</td>
			</tr>
			<tr>
				<th>수정일</th>
				<td>${student.updatedAt}</td>
			</tr>
		</table>
	</div>
</body>
</html>




