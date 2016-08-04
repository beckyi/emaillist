<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.sungkyul.emaillist.dao.EmailListDao"%>
<%@page import="kr.ac.sungkyul.emaillist.vo.EmailListVo"%>

<%
	request.setCharacterEncoding("utf-8");
	String firstname = request.getParameter("fn");
	String lastname = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmailListVo vo = new EmailListVo();
	vo.setFirstname(firstname);
	vo.setLastname(lastname);
	vo.setEmail(email);
	   
	EmailListDao dao = new EmailListDao();
	boolean result = dao.insert(vo);
	
	response.sendRedirect("/emaillist/show_emaillist.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(result == true){
	%>
	<h1>성공했습니다.</h1>
	<%
	}else {
	%>
	<h1>실패했습니다.</h1>
	<%
	}
	%>
</body>
</html>