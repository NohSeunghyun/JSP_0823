<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Test</title>
<style>
	h1 {
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
	<table>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
			<%
				if (request.getParameter("gender").equals("male")) {
					out.print("남자"); // 표현식 출력하는방법 1
				} else {
			%>
			여자
			<%
				}
			%>
			</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>[ <!-- []안에 값을 넣고싶다면 이 위치에 감싸줘야함. -->
			<%
				String[] hobby = request.getParameterValues("hobby");
				for (int i = 0 ; i < hobby.length ; i++) {
					// out.print(hobby[i] + "  "); // 표현식 출력하는방법 1
					// 이 코드에 hobby[i] + ", " 할 경우 마지막에도 구분자가 찍힘
			%>
				<!-- 사이에 구분자(,) 넣기 방법1 -->
				<%=(i==0)?hobby[i]:", "+hobby[i] %><!-- 표현식 출력하는 방법 2 -->
				<%-- <%=hobby[i].toString() %> 위 결과와 같음 --%>
				<!-- 표현식 내에 사용하는 메서드 뒤에 세미콜론(;)사용하면 안됨. -->
			<%
				}
			%>
			] <!-- []안에 값을 넣고싶다면 이 위치에 감싸줘야함. -->
			<!-- 사이에 구분자(,) 넣기 방법2 for문 안써도됨 -->
			<br>
			<%=Arrays.toString(hobby) %><!-- [취미, 취미] -->
			<!-- 사이에 구분자(,) 넣기 방법3 for문 안써도됨 -->
			<br>
			[<%=String.join(",", hobby) %>]
			</td>
		</tr>
	</table>
</body>
</html>