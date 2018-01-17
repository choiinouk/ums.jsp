<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <br><br>
<%@ include file="menu.jsp" %>
<% 		
		String msg = "이름을 입력하세요";
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
<br><br>
<body>
<div class="container">

	<div class="form-group">
		<h2>사용자 등록</h2>
		<p>등록할 이름을 입력하고 등록버튼을 누르세요</p>
		<br>
		<div>
			<form action="joinProc.jsp">
				<input name="userName" style="width:300px;"class="form-control" id="nameForm" type="text" placeholder="<%=msg%>">
				<input type="submit" style="margin-top:10px;"id="add" value="등록" class="btn btn"/>
			</form>
		</div>
	</div>
	
</div>
</body>
</html>