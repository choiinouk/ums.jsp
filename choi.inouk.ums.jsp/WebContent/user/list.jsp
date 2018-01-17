<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="choi.inouk.ums.service.UserService" %>
<%@ page import="choi.inouk.ums.service.UserServiceImpl" %>
<%@ page import="choi.inouk.ums.dao.UserDao" %>
<%@ page import="choi.inouk.ums.dao.UserDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="choi.inouk.ums.domain.User" %>

<%
	UserDao userDao = new UserDaoImpl();
	UserService userService = new UserServiceImpl(userDao);
	List<User>users = userService.listUsers();
%>

<!DOCTYPE html>
<html>
<head>
<title>main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>

<div class="container">
	<div id="home">
<%
	if(users.size()==0){
		out.print("<h4>등록된 사용자가 없습니다.</h4>");
	}else{
%>	
	<h2>사용자 목록</h2><hr>
		<div id="list">
		<table class="table table-condensed">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody id="userTable">
<%
	for(User tmp:users){
%>
		<tr>
			<td><%=tmp.getUserNo() %></td>
			<td><%=tmp.getUserName() %></td>
			<td><%=tmp.getRegDate() %></td>
		</tr>
<%
	}
%>
				</tbody>
			</table>
		</div>
<%
	}
%>		
	<button type="submit"><a href="join.jsp">메인으로</a></button>
	</div>
</div>
</body>
</html>