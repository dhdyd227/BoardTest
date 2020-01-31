<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>interval.jsp</title>
<script>
	//타이머연습
	//반복 실행할 함수
	function printTime(){
		result.innerHTML = (new Date()).getSeconds();
		
	}
	window.addEventListener("load",function(){
		 setInterval(printTime,1000);
	});
	
	//이미지 배열
	var imgs = ["../images/abc.jpg","../images/dfg.jpg","../images/qwe.png"];
	
	//이미지 2초마다변경
</script>
</head>
<body>
<div id="result"></div>
<img src="../images/abc.jpg"/>

</body>
</html>