<%@page import="kr.ac.sungkyul.emaillist.dao.EmailListDao"%>
<%@page import="kr.ac.sungkyul.emaillist.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");

	EmailListVo vo = new EmailListVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);

	EmailListDao dao = new EmailListDao();
	boolean result = dao.insert(vo);

	response.sendRedirect("/emaillist");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if (result == true) {
	%>
	<h1>성공했습니다</h1>
	<%
		} else {
	%>
	<h1>실패했습니다</h1>
	<%
		}
	%>
</body>
</html>