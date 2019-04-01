<%@page import="java.util.List"%>
<%@page import="com.javaex.vo.EmailBookVo"%>
<%@page import="com.javaex.dao.EmailBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	EmailBookDao dao = new EmailBookDao();

	String lastName = request.getParameter("ln");
	String firstName = request.getParameter("fn");
	String email = request.getParameter("email");
	
	EmailBookVo vo = new EmailBookVo();
	vo.setLastName(lastName);
	vo.setFirstName(firstName);
	vo.setEmail(email);
	
	dao.insert(vo);
	
	response.sendRedirect("http://localhost:8088/emailbook1/list.jsp");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>