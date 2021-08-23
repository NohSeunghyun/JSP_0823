<!-- 
클라이언트의 정보가 유지되어야 할 필요가 있는 경우를 위해
서버의 연결이 끊어져도 클라이언트의 정보를 유지하도록 하기 위해
session객체를 이용한다.
예) 로그인, 장바구니와 같은 p/g
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // 사용자의 요청이 없어도 세션을 유지할 시간을 5초로 설정
	session.setMaxInactiveInterval(5);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Test</title>
</head>
<body>
	<h2>세션 테스트</h2>
	<!-- 새 세션:true, 기존세션:false -->
	isNew():<%=session.isNew() %><br>
	생성시간:<%=session.getCreationTime() %><br>
	최종접속시간:<%=session.getLastAccessedTime() %><br>
	세션ID:<%=session.getId() %><br>
</body>
</html>