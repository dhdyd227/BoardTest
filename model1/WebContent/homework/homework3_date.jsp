<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>homework3_date.jsp</title>
<script>
	window.addEventListener("load",function(){
		//버튼 클릭 이벤트 지정
		btnCalc.addEventListener("click",function(){
			var dateCheck = inDate.value;
			var dateYearRange = dateCheck.split('-');
			console.log(dateYearRange);
			if(!isDateFormat(dateCheck)){
				alert("yyyy-mm-dd유형");
				return;
			}else{
				//입력날짜와 오늘 날짜까지의 일수 계산하여 div에 출력 "남은 일수는 00일입니다."
				//Number(numberRound).toFixed(2);
				var countDay= new Date() - new Date(dateYearRange[0],dateYearRange[1]-1,dateYearRange[2]);
				var countDayResult=countDay/1000/60/60/24;
				//console.log(countDayResult.toFixed(0));
				//반올림해서 출력 할 것
				result.innerHTML=countDayResult.toFixed(0);
			}
		})
		
		/*
		//날짜 연산 가능함 
		var a = new Date() - new Date(2020,0,10);
		console.log(a / 1000 / 60 / 60 /24 );  
		*/
	})
//날짜유효성검사
	function isDateFormat(d) {
		var df = /[0-9]{4}-[0-9]{2}-[0-9]{2}/;
		return d.match(df);
	}
</script>
</head>
<body>
날짜 카운터다운<br>
<input id="inDate" value="2020-01-23">
<button type="button" id="btnCalc">계산</button>
<div id="result"></div>
</body>
</html>