<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext Test</title>
</head>
<body>
	<% // include를 만나면 제어권이 Test3로 임시로 넘어갔다가 Test3실행 후 include위치로 다시 돌아와 아래 실행문 실행 
	   // forward는 넘어가기만 하고 돌아오진 않음. // forward와 include 둘다 request객체 공유=주소 그대로유지=기존요청
	   // 이부분에 pageContextTest3.jsp 페이지의 소스를 복사하여 삽입하는 효과를 가진다.
		pageContext.include("pageContextTest3.jsp");
	%>
	<h2>pageContext의 forward 메소드로 포워딩된 페이지입니다.</h2>
</body>
</html>