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
			//document.getElementById("result").innerHTML="�̺�Ʈ�߻�";

			//�Է°� ���� ���
			var txtBigo = document.getElementById("bigo");
			var divResult = document.getElementById("result");
			divResult.innerHTML = txtBigo.value.length;
			
			//http://yedam/model 
			//txtBigo.value = window.location.href;
			divResult.innerHTML += "<br> ��������� / ��ġ"
					+ txtBigo.value.lastIndexOf("/")
			divResult.innerHTML += "<br> ��������θ�"
					+ txtBigo.value.substr(txtBigo.value.lastIndexOf("/") + 1)
					
			//split Ű���� : ��,��ü,��Ʈ��
			var arr = txtBigo.value.split(",");
			divResult.innerHTML += "<br> Ű���� ����" + arr.length;
			//search,pattern - 정규표현식
			divResult.innerHTML += "<br> �̸��� üũ" + isEmail(txtBigo.value);
			//replace : 공백제거
			txtBigo.value = txtBigo.value.replace(\/s\gi,"");
			
		})
	}
	function isEmail(asValue) {
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		return regExp.test(asValue); // ���Ŀ� �´� ��� true ����	
	}


</script>
</head>
<body>
	<form>
		<input name="bigo" id="bigo">
		<button type="button" id="btnCheck">�Է°� Ȯ��</button>
		<div id="result">���Ȯ��</div>

	</form>
</body>

</html>