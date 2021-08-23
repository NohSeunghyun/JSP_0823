<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Test</title>
<style>
	h1 , #commandCell {
		text-align: center;
	}
	table {
		margin: auto;
		width: 400px;
		border: 1px solid red;
	}
</style>
</head>
<body>
	<h1>Request 예제입니다.</h1>
	<form action="requestTest1.jsp" method="post">
		<table>
			<tr>
				<td><label for="name">이름</label></td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td><label for="gender">성별</label></td>
				<td>
					<label>남<input type="radio" name="gender" id="gender" value="male"></label>
					<label>여<input type="radio" name="gender" value="female"></label>
				</td>
			</tr>
			<tr>
				<td><label for="hobby">취미</label></td>
				<td>
					<label>독서<input type="checkbox" name="hobby" id="hobby" value="독서"></label>
					<label>게임<input type="checkbox" name="hobby" value="게임"></label>
					<label>TV시청<input type="checkbox" name="hobby" value="TV시청"></label>
					<label>축구<input type="checkbox" name="hobby" value="축구"></label>
					<label>기타<input type="checkbox" name="hobby" value="기타"></label>
				</td>
			</tr>
			<tr>
				<td colspan="2" id="commandCell">
					<input type="submit" value="전송">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>