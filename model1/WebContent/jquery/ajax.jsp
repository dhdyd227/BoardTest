<%@ page language="java" contentType="text/html; charset=UTF-8"
			pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery/ajax.jsp</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() { //==window.load
		$.ajax("./server/getName.jsp", {
			async :true  //비동기 No = 동기
			,beforeSend : function(){
				result.innerHTML="로딩중"
			}
			,cache: false
			,data : $("#frm").serialize()
			,dataType: "json"
		})
		.done(function(data) {
			result.innerHTML = data.name;
		})
		.fail(function() {
		})
		.always(function() {
		})
	console.log("ajax end")
	})
</script>
<body>
			
			<form id="frm">
				<input name="no" value="">
				<input name="name" value="">
			</form>
			<div id="result"></div>
</body>
</html>