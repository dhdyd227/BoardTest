<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>homework4_array.jsp</title></head>
<body>
<input type="text" id="userno">
<input type="text" id="username">
<input type="text" id="userId">
<input type="text" id="userRegDate">
<div id="result">1,홍길동,hong,2019/12/01</div>
<script>
	//div의 값을 콤마(,)로 분리하여 각각의 텍스트필드에 출력
	var text=result.innerHTML;
	var textArr = text.split(',');
	var inputText = document.querySelectorAll('input');
	console.log(inputText);
	
	for(i=0;i<textArr.length;i++){
		inputText[i].value=textArr[i];
	}
	
</script>
</body>
</html>