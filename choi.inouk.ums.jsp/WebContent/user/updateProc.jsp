<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="choi.inouk.ums.service.UserService" %>
<%@ page import="choi.inouk.ums.service.UserServiceImpl" %>
<%@ page import="choi.inouk.ums.dao.UserDao" %>
<%@ page import="choi.inouk.ums.dao.UserDaoImpl" %>
<%@ page import="choi.inouk.ums.domain.User" %>
<!DOCTYPE html>
<%
	UserDao userDao = new UserDaoImpl();
	UserService userService = new UserServiceImpl(userDao);
	
	if(request.getParameter("updateName")==null||
		request.getParameter("updateName").equals("")){
		request.setAttribute("msg", "이름을 입력하지 않았습니다.");
%>
	<jsp:forward page="update.jsp" />

<%
	}

	
	int userNo = Integer.parseInt(request.getParameter("index"));
	User user = userService.findUser(userNo);
	
	user.setUserName(request.getParameter("updateName"));
	
	userService.correctUser(user);
	
%>
<jsp:forward page="join.jsp"/>