<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>builtinObject.jsp</title>
<script>
	window.onload = init;
	function init() {
		let btn = document.getElementById("btnCheck");
		//btn.onclick = function(){};
		
		btn.addEventListener("click", function() {
			//document.getElementById("result").innerHTML="占싱븝옙트占쌩삼옙";

			//占쌉력곤옙 占쏙옙占쏙옙 占쏙옙占�
			var txtBigo = document.getElementById("bigo");
			var divResult = document.getElementById("result");
			divResult.innerHTML = txtBigo.value.length;
			
			//http://yedam/model 
			//txtBigo.value = window.location.href;
			divResult.innerHTML += "<br> 占쏙옙占쏙옙占쏙옙占쏙옙占� / 占쏙옙치"
					+ txtBigo.value.lastIndexOf("/")
			divResult.innerHTML += "<br> 占쏙옙占쏙옙占쏙옙占쏙옙罐占�"
					+ txtBigo.value.substr(txtBigo.value.lastIndexOf("/") + 1)
					
			//split 키占쏙옙占쏙옙 : 占쏙옙,占쏙옙체,占쏙옙트占쏙옙
			var arr = txtBigo.value.split(",");
			divResult.innerHTML += "<br> 키占쏙옙占쏙옙 占쏙옙占쏙옙" + arr.length;
			//search,pattern - ��洹�������
			divResult.innerHTML += "<br> 占싱몌옙占쏙옙 체크" + isEmail(txtBigo.value);
			//replace : 怨듬갚��嫄�
			txtBigo.value = txtBigo.value.replace(\/s\gi,"");
			
		})
	}
	function isEmail(asValue) {
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		return regExp.test(asValue); // 
	}


</script>
</head>
<body>
	<form>
		<input name="bigo" id="bigo">
		<button type="button" id="btnCheck">占쌉력곤옙 확占쏙옙</button>
		<div id="result">占쏙옙占싫�占쏙옙</div>

	</form>
</body>

</html>