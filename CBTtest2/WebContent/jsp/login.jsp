<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 (1 of 6 )</title>

</head>
<body>
	
<div align="center">
	<div>	<h1>로그인</h1>	</div>
	<div>
			<table border="1">
				<tr>
					<th width="100" align="center"> 아이디</th>
					<td> <input type="text" id="id" name="id" size="50"></td>
				</tr>
				
				<tr>
					<th width="100" align="center"> 비밀번호</th>
					<td> <input type="password" id="pw" name="pw" size="50"></td>
				</tr>
			</table>
		<div>
		<button type="button" onclick="location.href ='main.jsp'" style="width:300px;">로그인</button> &nbsp;&nbsp;
		</div>
	</div>
	
</div>
</body>
</html>