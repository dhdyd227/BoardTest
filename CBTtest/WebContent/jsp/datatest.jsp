<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>시험응시( 3 of 6 )</title>
<style>
table {
	width: 100%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
}
</style>
<script src="jquery.min.js"></script>

<script>
	$(document).ready(function() {
		
	});
	
	

	function testSubmit(submit){
		var count=0;
		var questionNum=4;
			for(var i =1; i<questionNum;i++){
				for(var j=1;j<5;j++){
					if($("input[name=chk_info"+i+"]:radio[value='"+j+"']").is(":checked"))
					{
						count=count+1;
					}
					if($("input[name=chk_info"+i+"_1]:radio[value='"+j+"']").is(":checked"))
					{
						count=count+1;
					}
				}
			}
			var questionRest=0;
			questionRest=(questionNum-1)-count/2;
			if(questionRest==0){
				var result = confirm("제출할 까요?");
				if(result){
					location.href ='main.jsp';
				}else{
					
				}
			}
			else{
				var result = confirm("풀지 않은 문제가 "+questionRest+"문항이 있습니다. 제출할 까요?");
				if(result){
					location.href ='main.jsp';
				}else{
				    alert("더푸세요");
				}
			}
			
	}
	
	function onClickCheck(box) {
		console.log(box.checked);
		console.log(box.value)
		var box_name=box.name;
		var box_value=box.value;
		$("input[name="+box_name+"_1]:radio[value="+box_value+"]").prop('checked', true);
		
	}
	function onClickCheck2(box){
		console.log(box.checked);
		console.log(box.value)
		var new_box_name=box.name.split('_1')[0];
		var box_value=box.value;
		$("input[name="+new_box_name+"]:radio[value="+box_value+"]").prop('checked', true);
		
	
	    var offset = $("input[name="+new_box_name+"]:radio[value='1']").offset();
	    console.log(offset);
	    $('html, body').animate({scrollTop : offset.top}, 400);
	    
	}

	var testtimeleft = 60;
	var second = 0;
	var minute = testtimeleft / 60;

	var downloadTimer = setInterval(function() {
		document.getElementById("testTimer").value = minute + ':' + second;
		if (second == 0) {
			second = 60;
		}
		second = second - 1;
		if (testtimeleft % 60 == 0) {
			minute = minute - 1;
		}
		testtimeleft -= 1;

		if (testtimeleft <= -1) {
			clearInterval(downloadTimer);
		}

	}, 1000);
</script>
</head>
<body>

	<div align="center">
		<div align="left">
			<h4>시험목록</h4>
		</div>

		<div style="background-color: rgb(224, 224, 224);">
			<table>
				<tr>
					<td>응시자</td>
					<td><input type="text" id="" name="" size="15" value='홍길동'>
					</td>
					<td>시험명</td>
					<td><input type="text" id="" name="" size="25"
						value='신입사원 레벨 테스트'></td>
					<td>문항 수</td>
					<td><input type="text" id="" name="" size="3" value='10'></td>
					<td>시험시간</td>
					<td><input type="text" id="testTimer" name="" size="3"></td>
				</tr>
				<tr>
					<td>상세정보</td>
					<td colspan=7><input type="text" id="" name="" size="100"
						value='예담 주식회사 2020년 신입사원 공채 실기 테스트입니다.'></td>
				</tr>
			</table>
		</div>
		<br /> <br />
		<div style="font-size: 13px; width: 100%;">
			<div
				style="width: 71%; float: left; box-sizing: border-box; background-color: rgb(224, 224, 224);">
				<div align="left" style="margin: 10px 10px 10px 10px;">
					<p>1. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에
						무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한</p>
					<input type="radio" name="chk_info1" value="1" onclick="onClickCheck(this)">1<br /> 
					<input type="radio" name="chk_info1" value="2" onclick="onClickCheck(this)">2<br />
					<input type="radio" name="chk_info1" value="3" onclick="onClickCheck(this)">3<br /> 
					<input type="radio" name="chk_info1" value="4" onclick="onClickCheck(this)">4<br />
				</div>

				<div align="left" style="margin: 10px 10px 10px 10px;">
					<p>1. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에
						무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한</p>
					<input type="radio" name="chk_info2" value="1" onclick="onClickCheck(this)">1<br /> 
					<input type="radio" name="chk_info2" value="2" onclick="onClickCheck(this)">2<br /> 
					<input type="radio" name="chk_info2" value="3" onclick="onClickCheck(this)">3<br /> 
					<input type="radio" name="chk_info2" value="4" onclick="onClickCheck(this)">4<br />
				</div>

				<div align="left" style="margin: 10px 10px 10px 10px;">
					<p>1. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에
						무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한</p>
					<input type="radio" name="chk_info3" value="1" onclick="onClickCheck(this)">1<br /> <input
						type="radio" name="chk_info3" value="2" onclick="onClickCheck(this)">2<br /> <input
						type="radio" name="chk_info3" value="3" onclick="onClickCheck(this)">3<br /> <input
						type="radio" name="chk_info3" value="4" onclick="onClickCheck(this)">4<br />
				</div>
				<div style="background-color: #fff">
					<br /> <br />
					<!-- onclick="location.href ='programresult.jsp'" -->
					<button type="button" 
						style="font-size: 16px; color: rgb(255, 255, 255);
						text-align: center; line-height: 2.5em; border-top-left-radius: 4px; 
						border-top-right-radius: 4px; border-bottom-right-radius: 4px;
						border-bottom-left-radius: 4px; background-color: rgb(52, 152, 219);
						width: 100%;" onclick="testSubmit(this)" >제출하기</button>
					&nbsp;&nbsp;
				</div>

			</div>

			<div
				style="width: 4%; float: center; box-sizing: border-box; background: #fff;">

			</div>

			<div
				style="font-size: 18px; width: 25%; float: right; box-sizing: border-box; background-color: rgb(224, 224, 224);">
				1. <input type="radio" name="chk_info1_1" value="1" onclick="onClickCheck2(this)"> 1 <input
					type="radio" name="chk_info1_1" value="2" onclick="onClickCheck2(this)"> 2 <input
					type="radio" name="chk_info1_1" value="3" onclick="onClickCheck2(this)"> 3 <input
					type="radio" name="chk_info1_1" value="4" onclick="onClickCheck2(this)"> 4 <br /> 
					2.
				<input type="radio" name="chk_info2_1" value="1" onclick="onClickCheck2(this)"> 1 
				<input type="radio" name="chk_info2_1" value="2" onclick="onClickCheck2(this)"> 2 
				<input type="radio" name="chk_info2_1" value="3" onclick="onClickCheck2(this)">3 
				<input type="radio" name="chk_info2_1" value="4" onclick="onClickCheck2(this)"> 4 <br /> 
				
				3. <input type="radio" name="chk_info3_1" value="1" onclick="onClickCheck2(this)"> 1 
				<input type="radio" name="chk_info3_1" value="2" onclick="onClickCheck2(this)"> 2 
				<input type="radio" name="chk_info3_1" value="3" onclick="onClickCheck2(this)"> 3 
				<input type="radio" name="chk_info3_1" value="4" onclick="onClickCheck2(this)"> 4 <br /> 
				
				4. <input type="radio" name="" value=""> 1 <input type="radio"
					name="" value=""> 2 <input type="radio" name="" value="">
				3 <input type="radio" name="" value=""> 4 <br /> 5. <input
					type="radio" name="" value=""> 1 <input type="radio"
					name="" value=""> 2 <input type="radio" name="" value="">
				3 <input type="radio" name="" value=""> 4 <br /> 6. <input
					type="radio" name="" value=""> 1 <input type="radio"
					name="" value=""> 2 <input type="radio" name="" value="">
				3 <input type="radio" name="" value=""> 4 <br /> 7. <input
					type="radio" name="" value=""> 1 <input type="radio"
					name="" value=""> 2 <input type="radio" name="" value="">
				3 <input type="radio" name="" value=""> 4 <br /> 8. <input
					type="radio" name="" value=""> 1 <input type="radio"
					name="" value=""> 2 <input type="radio" name="" value="">
				3 <input type="radio" name="" value=""> 4 <br /> 9. <input
					type="radio" name="" value=""> 1 <input type="radio"
					name="" value=""> 2 <input type="radio" name="" value="">
				3 <input type="radio" name="" value=""> 4 <br /> 10. <input
					type="radio" name="" value=""> 1 <input type="radio"
					name="" value=""> 2 <input type="radio" name="" value="">
				3 <input type="radio" name="" value=""> 4
			</div>
		</div>



	</div>

</body>
</html>