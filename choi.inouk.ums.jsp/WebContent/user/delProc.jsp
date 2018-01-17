<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="choi.inouk.ums.service.UserService" %>
<%@ page import="choi.inouk.ums.service.UserServiceImpl" %>
<%@ page import="choi.inouk.ums.dao.UserDao" %>
<%@ page import="choi.inouk.ums.dao.UserDaoImpl" %>
<%@ page import="choi.inouk.ums.domain.User" %>
<!DOCTYPE html>
<%
	UserDao userDao=new UserDaoImpl();
	UserService userService=new UserServiceImpl(userDao);
	
	if(request.getParameter("index")==null||
		request.getParameter("index").equals("")){
		request.setAttribute("msg", "체크박스를 선택하세요.");
	}
%>
<jsp:forward page="del.jsp"/>
<%
	int i=0;
	String[] indexs = request.getParameterValues("index");
	for(String index:indexs){
		i=Integer.parseInt(index);
		userService.secede(i);
	}
%>

<jsp:forward page="join.jsp"/>