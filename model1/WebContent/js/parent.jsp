<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>parent.jsp</title>
<script>
	window.addEventListener("load",function(){
		btnAddr.addEventListener("click",function(){
			window.open("popup.jsp","addr","width=300,height=300");
		});
	
	});
	function setAddr(addr){
		document.frm.addr.value=addr;
	}
	
	
</script>
</head>
<body>
<form id="frm" name="frm">
	주소<input name="addr">
	<button type="button" id="btnAddr">주소검색</button>
</form>
</body>
</html>