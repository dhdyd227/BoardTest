<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<form action="../FileUpload.do" method="post" enctype="multipart/form-data">
	
		<input type="file" name="uploadfile">
		<input type="text" name="desc"><br>
		<button>등록</button>
	</form>
</body>
</html>