<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChangeStyle.jsp</title>
<script>
	window.addEventListener("load", init);
	function init() {
		btn.addEventListener("mouseover", function() {
			//div 숨기기 :display
			result.style.display = "none";
		});
		btn.addEventListener("mouseout", function() {
			//div 숨기기 :display
			result.style.display = "";
		});

		img1.addEventListener("error", function() {
			//이미지src변경
			console.log("aaa");
			img1.src='../images/asd.jpg'
		});
	}
</script>
</head>
<body>
	<button type="button" id="btn">숨기기</button>
	<div id="result">남산의 부장들 소개</div>
	<img src="../images/abc.jpg" id="img1" >
</body>
</html>