<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="choi.inouk.ums.service.UserService" %>
<%@ page import="choi.inouk.ums.service.UserServiceImpl" %>
<%@ page import="choi.inouk.ums.dao.UserDao" %>
<%@ page import="choi.inouk.ums.dao.UserDaoImpl" %>
<%@ page import="choi.inouk.ums.domain.User" %>
<br><br>
<%
	UserDao dao = new UserDaoImpl();
	UserService service=new UserServiceImpl(dao);
	
	String msg = "사용자를 선택 후 이름을 수정하세요.";
	if(request.getAttribute("msg")!=null)
		msg = (String)request.getAttribute("msg");
%>

<!DOCTYPE html>
<html lang="ko">
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
<input id="numFrom" type="text" name="editNum" style="display:none" value="">
	<div class="form-group">
<%
	if(service.listUsers().size()==0){
		out.print("<h3>등록된 사용자가 없습니다.</h3>");
	}else{
%>
<h2>사용자 수정</h2>
		
<form action="updateProc.jsp">
	<p>수정할 사용자를 체크, 입력란에 이름을 입력하고 수정버튼을 누르세요</p>
	<input name="updateName" style="width:300px;"class="form-control"type="text" placeholder="<%=msg%>">
	<br>
	<input type="submit" value="수정" class="btn btn"/>
		
	<div id="home">
	<h2>사용자 목록</h2><hr>
		<div id="list">
		<table class="table table-condensed">
			<thead>
				<tr>
					<th></th>
					<th>번호</th>
					<th>이름</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody id="userTable">
<%
	for(User tmp:service.listUsers()){
%>
			<tr>
				<td><input type="radio" name="index" value="<%=tmp.getUserNo()%>"></td>
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
	</div>
</form>
<%
	}
%>	
<button type="submit"><a href="join.jsp">메인으로</a></button>
</div>
</div>
</body>
</html>
