<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework.jsp</title>
<script>
window.onload = function(){
	var btn = document.getElementById("btnCheck");
	btn.addEventListener("click", inputCheck);
}

function inputCheck(){
//모든 항목 필수입력 체크
var txtArr = document.querySelectorAll("textarea,[type=text]"); 
for(i=0;i<txtArr.length;i++){
	switch(i){
	case 0:
		if(mbName.value.length<5){
			alert(txtArr[i].id +"름은 최소 길이가 5글자 이상");
			return;
		}else{
			var name=txtArr[i].value.toUpperCase();
			txtArr[i].value=name;
			break;
		}
	case 1:
		var email = txtArr[i].value;
		if(!isEmail(email)){
			alert(txtArr[i].id +"id@abc.com유형");
			return;
		}else
			break;
	case 2:
		var dateCheck = txtArr[i].value;
		var dateYearRange = dateCheck.split('-');
		if(!isDateFormat(dateCheck)){
			alert(txtArr[i].id +"yyyy-mm-dd유형");
			return;
		}else{
			if(dateYearRange[0]>=2015 && dateYearRange[0]<=2019){
				break;
			}else{
				alert(txtArr[i].id +"2015~2019년도 사이가 아님");
				return;
			}
		}
	case 3:
		var addressCheck = txtArr[i].value;
		var httpCheck = addressCheck.substring(0,4);
		var http="http"
		if(httpCheck=="http"){
			break;
		}else{
			alert(txtArr[i].id +"http가아님");
			return;
		}
	case 4:
		var numberRound= txtArr[i].value;
		if(isNaN(numberRound)){
			alert(txtArr[i].id +"숫자가아님");
			return;
		}else{
			numberRound = Number(numberRound).toFixed(2);
			txtArr[i].value=numberRound;
			break;
		}
	case 5:
		var text="";
		var totalText= txtArr[i].value;
		for(i=0;i<totalText.length;i++){
			if(totalText[i]=="\n"){
				text +="<br>";
			}else
				text += totalText[i];
		}
		
		result.innerHTML=text;
		
		
	default:
		
		break;
	}
}
//이메일 유효성검사
function isEmail(asValue) {
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	return regExp.test(asValue); //
}
//날짜유효성검사
function isDateFormat(d) {
	var df = /[0-9]{4}-[0-9]{2}-[0-9]{2}/;
	return d.match(df);
	}

//ㅇ 이름은 최소 길이가 5글자 이상인지 체크하고 모두 대문자로 변경하여 출력
//ㅇ이메일은 "@"와 "."을 포함하는지 체크하여 true/false 결과 출력
//ㅇ등록일자는 날짜 형식이 맞는지 체크하고 년도는 2015~2019년도 사이인지 체크하여 결과 출력
//ㅇ홈페이지는 http로 시작하는지 체크하여 결과 출력
//ㅇ성적은 소수점 2자리까지만 입력하였는지 체크하고 아니라면 둘째자리까지만 변경하여 div에 출력
//비고란의  \n(엔터키) 를 <br>태그로 변환하여 출력
}
</script>
</head>
<body>
	<form>
		이름 <input type="text" id="mbName" value="test123" /><br> 
		이메일 <input type="text" id="mbEmail" value="t@t.com" /><br> 
		등록일자 <input type="text" id="mbDate" value="2015-12-12" /><br> 
		홈페이지 <input type="text" id="mbHomepage" value="httpyedam.ac" /><br> 
		성적 <input type="text" id="mbScore" value="67.123" /><br> 비고
		<textarea id="mbBigo"></textarea>
		<button type="button" id="btnCheck">입력확인</button>
	</form>
	<div id="result"></div>
</body>
</html>