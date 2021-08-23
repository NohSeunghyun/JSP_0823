<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); // 한글깨짐방지
	
	//방법1 밑에서 parseInt로 수로 변환
	//String dan = request.getParameter("dan");
	
	//방법2 바로 수로 변환하여 int타입으로 대입
	int dan = Integer.parseInt(request.getParameter("dan"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력창</title>
</head>
<body>
	<table border="1" width=200>
		<tr bgcolor="#ffff66">
			<th colspan="2"><%=dan %>단 출력</th>
		</tr>
		<%
			for (int i = 1 ; i <= 9 ; i++) {
				if (i%2 == 1) {%>
		<tr align="center" bgcolor="red">
		<%
				} else { 
		%>
		<tr align="center" bgcolor="blue">
		<%
				}
		%>
			<td><%=dan %> x <%=i %> = </td>
			<%-- <td><%=Integer.parseInt(dan) * i%></td> --%>
			<td><%=dan*i %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>