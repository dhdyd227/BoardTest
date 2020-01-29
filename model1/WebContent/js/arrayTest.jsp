<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arrayTest.jsp</title>
<style>
	img {width: 200px; }
</style>
<script>
	window.onload = function(){
		//모든 이미지의 alt 속성만 div에 출력
		var imgArr = document.getElementsByTagName("img");
		var divResult = document.getElementById("result");
		
		console.log(imgArr);
		console.log(imgArr.length);
		var text="";
		for(var i = 0; i<imgArr.length; i++){
			text += imgArr[i].alt +"<br>";
		}
		divResult.innerHTML = text;
	}
</script>
</head>
<body>
<img src ="../images/abc.jpg" alt="팽수1">
<img src ="../images/abc.jpg" alt="팽수2">
<img src ="../images/abc.jpg" alt="팽수3">
<div id="result"></div>

</body>
</html>