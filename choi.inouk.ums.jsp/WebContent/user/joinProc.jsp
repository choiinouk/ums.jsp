<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="choi.inouk.ums.service.UserService" %>
<%@ page import="choi.inouk.ums.service.UserServiceImpl" %>
<%@ page import="choi.inouk.ums.dao.UserDao" %>
<%@ page import="choi.inouk.ums.dao.UserDaoImpl" %>
<%@ page import="choi.inouk.ums.domain.User" %>
<%
	UserDao userDao = new UserDaoImpl();
	UserService userService = new UserServiceImpl(userDao);
	
	String userName = request.getParameter("userName");
	if(userName==null || userName.equals("")){
		request.setAttribute("msg","이름을 입력하지 않았네요.");	
%>
		<jsp:forward page="join.jsp"/>
<%
	}else{
		userService.join(userName);
	}
%>
<jsp:forward page="join.jsp"/>
