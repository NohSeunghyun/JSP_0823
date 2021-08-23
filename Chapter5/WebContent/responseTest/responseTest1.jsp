<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//responseTest2.jsp페이지로 요청 재전송 : 주소가바뀜-새요청-request객체 공유안함
response.sendRedirect("responseTest2.jsp");
%>
<!-- 결과화면의 주소표시줄을 보면 responseTest2.jsp로 변경되어 있다. -->
<!-- 리다이렉트 방식 : 브라우저에 표시되는 주소가 바뀌는 방식
					이동할 페이지로 요청과 응답객체를 새로 생성하여 전송하므로
					요청정보와 응답정보가 유지되지 않는다.
					즉, 요청 정보가 변경되어 클라이언트의 주소URL이 변경된다. -->