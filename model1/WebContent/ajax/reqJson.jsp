<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reqJson.jsp</title>
<script>
window.addEventListener("load",function(){
	btn.addEventListener("click",loadDoc);
})
function loadDoc() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	    	var res = xhttp.responseText;
	    	var obj = JSON.parse(res);
	    	txtNo.value=obj.no;
	    	txtName.value=obj.name;
	    }
	  };
	  var param = "no="+txtNo.value; //query문자열 url?변수명=값&변수명=값
	  //xhttp.open("GET", "../GetNumber.do?"+param, true);
	  xhttp.open("GET", "../GetJSON.do", true);
	  xhttp.send();

	}
</script>
</head>
<body>
<h3>ajax JSON 연습</h3>
이름검색 
<input id="txtNo">
<input id="txtName">
<button type="button" id="btn">요청</button>
</body>
</html>