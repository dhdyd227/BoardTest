<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>changeSize.jsp</title>
</head>
<body>
<img id ="imgSample" src= "WebContent/images/abc.jpg" style="width: 100px">
<button type="button" id="btnSize">�׸� ũ��</button>
<script>
	let imgSample = document.getElementById("imgSample");
	let btnSize = document.getElementById("btnSize");
	btnSize.addEventListener("click",function(){
		//�̹����� ũ��(width) Ȯ��
		var w = imgSample.style.width;
		
		//ũ�⸦ +100;
		imgSample.style.width = parseInt(w) +100 +"px";
	})
</script>
</body>
</html>