<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.forward("pageContextTest2.jsp"); // 요청과 응답에관한 제어권을 넘긴다.주소그대로 유지=요청=request객체 공유(디스패치방식)
//아래 실행문이 있다고 가정하면 forward를 만나면 실행하지않고 Test2로 넘어간다.(include와 다르게 다시 돌아오지않음.)
//제어권을 영구히 넘김.
%>