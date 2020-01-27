<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��������( 3 of 6 )</title>
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
				var result = confirm("������ ���?");
				if(result){
					location.href ='main.jsp';
				}else{
					
				}
			}
			else{
				var result = confirm("Ǯ�� ���� ������ "+questionRest+"������ �ֽ��ϴ�. ������ ���?");
				if(result){
					location.href ='main.jsp';
				}else{
				    alert("��Ǫ����");
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
			<h4>������</h4>
		</div>

		<div style="background-color: rgb(224, 224, 224);">
			<table>
				<tr>
					<td>������</td>
					<td><input type="text" id="" name="" size="15" value='ȫ�浿'>
					</td>
					<td>�����</td>
					<td><input type="text" id="" name="" size="25"
						value='���Ի�� ���� �׽�Ʈ'></td>
					<td>���� ��</td>
					<td><input type="text" id="" name="" size="3" value='10'></td>
					<td>����ð�</td>
					<td><input type="text" id="testTimer" name="" size="3"></td>
				</tr>
				<tr>
					<td>������</td>
					<td colspan=7><input type="text" id="" name="" size="100"
						value='���� �ֽ�ȸ�� 2020�� ���Ի�� ��ä �Ǳ� �׽�Ʈ�Դϴ�.'></td>
				</tr>
			</table>
		</div>
		<br /> <br />
		<div style="font-size: 13px; width: 100%;">
			<div
				style="width: 71%; float: left; box-sizing: border-box; background-color: rgb(224, 224, 224);">
				<div align="left" style="margin: 10px 10px 10px 10px;">
					<p>1. �ϴ� ���̴� ���� û���� ! �׵��� ���� �󸶳� ưư�ϸ� �׵��� �Ǻΰ� �󸶳� �����ϸ� �׵��� ����
						������ Ÿ������ �ִ°�? �츮 ���� �װ��� ���� ���� �츮�� �ʹ� ���� ���̸� ��´� �װ��� ������ �������̸� �̹���</p>
					<input type="radio" name="chk_info1" value="1" onclick="onClickCheck(this)">1<br /> 
					<input type="radio" name="chk_info1" value="2" onclick="onClickCheck(this)">2<br />
					<input type="radio" name="chk_info1" value="3" onclick="onClickCheck(this)">3<br /> 
					<input type="radio" name="chk_info1" value="4" onclick="onClickCheck(this)">4<br />
				</div>

				<div align="left" style="margin: 10px 10px 10px 10px;">
					<p>1. �ϴ� ���̴� ���� û���� ! �׵��� ���� �󸶳� ưư�ϸ� �׵��� �Ǻΰ� �󸶳� �����ϸ� �׵��� ����
						������ Ÿ������ �ִ°�? �츮 ���� �װ��� ���� ���� �츮�� �ʹ� ���� ���̸� ��´� �װ��� ������ �������̸� �̹���</p>
					<input type="radio" name="chk_info2" value="1" onclick="onClickCheck(this)">1<br /> 
					<input type="radio" name="chk_info2" value="2" onclick="onClickCheck(this)">2<br /> 
					<input type="radio" name="chk_info2" value="3" onclick="onClickCheck(this)">3<br /> 
					<input type="radio" name="chk_info2" value="4" onclick="onClickCheck(this)">4<br />
				</div>

				<div align="left" style="margin: 10px 10px 10px 10px;">
					<p>1. �ϴ� ���̴� ���� û���� ! �׵��� ���� �󸶳� ưư�ϸ� �׵��� �Ǻΰ� �󸶳� �����ϸ� �׵��� ����
						������ Ÿ������ �ִ°�? �츮 ���� �װ��� ���� ���� �츮�� �ʹ� ���� ���̸� ��´� �װ��� ������ �������̸� �̹���</p>
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
						width: 100%;" onclick="testSubmit(this)" >�����ϱ�</button>
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