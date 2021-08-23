<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Test3</title>
<style>
	h1 {
		text-align: center;
	}
	table {
		margin: auto;
		width: 800px;
		border: 1px solid red;
	}
</style>
</head>
<body>
	<h1>쿠키, URL/URI, 요청방식에 관련된 정보 예제</h1>
	<table>
		<tr>
			<td>쿠키 정보</td>
			<%
				Cookie[] cookie = request.getCookies(); // 쿠키 정보를 얻어와
				if(cookie == null) { // 쿠키 정보가 존재하지 않으면
			%>
			<td>쿠키가 존재하지 않습니다.</td>
			<%
				} else { // 쿠키가 존재하면 쿠키 이름과 쿠키값을 얻어와 출력
					for(int i = 0 ; i < cookie.length ; i++) {
			%>
			<td>
			<%=cookie[i].getName() %>(<%=cookie[i].getValue() %>)
			</td>
			<%
					}
				}
			%>
		</tr>
		<tr>
			<td>서버 도메인명</td>
			<td><%=request.getServerName() %></td>
		</tr>
		<tr>
			<td>서버 포트번호</td>
			<td><%=request.getServerPort() %></td>
		</tr>
		<tr>
			<td>요청 URL</td>
			<td><%=request.getRequestURL() %></td>
		</tr>
		<tr>
			<td>요청 URI</td>
			<td><%=request.getRequestURI() %></td>
		</tr>
		<tr>
			<td>요청 쿼리</td>
			<td><%=request.getQueryString() %></td>
		</tr>
		<tr>
			<td>클라이언트 호스트명</td>
			<td><%=request.getRemoteHost() %></td>
		</tr>
		<tr>
			<td>클라이언트 IP 주소</td>
			<td><%=request.getRemoteAddr() %></td>
		</tr>
		<tr>
			<td>프로토콜</td>
			<td><%=request.getProtocol() %></td>
		</tr>
		<tr>
			<td>요청 방식</td>
			<td><%=request.getMethod() %></td>
		</tr>
		<tr>
			<td>컨텍스트 경로</td>
			<td><%=request.getContextPath() %></td>
		</tr>
	</table>
</body>
</html>