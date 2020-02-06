<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
</script>
</head>

<body>
	<button type="button" id="btn">크기변경</button>
	<button type="button" id="btn2">크기변경2</button>
	<img src="../images/abc.jpg" id="imgSample">
	
</body>

<script>
//
	/*$("#btn").bind("click",function(){
		//$("#imgSample").css("width","100px");
		$("#imgSample").width("100px");
		
	})*/
//click 함수
	/*$("#btn").click(function(){
		var w = $("#imgSample").width();
		$("#imgSample").width(parseInt(w)-100);
		
		console.log(w);
	})*/
//on함수
	$(document).on("click","#btn",function(){
		$("#imgSample").width(100);
	});
	
	$("#btn2").on("click",function(){
		$("#btn").click();
	});
	
</script>
</html>