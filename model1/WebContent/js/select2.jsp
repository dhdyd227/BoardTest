<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select2.jsp</title>
<script>
	"use strict"
	window.addEventListener("load", function() {

		//btnR버튼 이벤트
		btnR.addEventListener("click", function() {
			if (subject.selectedIndex >= 0) {
				var opt = document.createElement("option");
				opt.text = subject.options[subject.selectedIndex].text
				choose.add(opt);
				//선택항목 삭제
				subject.remove(subject.selectedIndex);
			}else{
				return;
			}
			//다건처리
			/*for(i=0;i<subject.length;i++){
				if(subject.option[i].selected{
					//이동처리
				})
			}*/
		});
		//btnL버튼 이벤트
		btnL.addEventListener("click", function() {
			if (choose.selectedIndex >= 0) {
				var opt = document.createElement("option");
				opt.text = choose.options[choose.selectedIndex].text
				subject.add(opt);
				//선택항목 삭제
				choose.remove(choose.selectedIndex);
			}else{
				return;
			}
		});
		//btnAll버튼 이벤트
		btnAll.addEventListener("click",function(){
			var len =subject.length;
			for(var i=(len-1); i>=0; i--){
				var opt = document.createElement("option");
				opt.text = subject.options[i].text
				choose.add(opt);
				//선택항목 삭제
				subject.remove(i);
			}
		})
	})
</script>
</head>
<body>
	<select id="subject" multiple="multiple" size=5>
		<option value="java">자바
		<option value="jsp">JSP
		<option value="spring">스프링
	</select>
	<button type="button" id="btnR">▶</button>
	<button type="button" id="btnAll">all</button>
	<button type="button" id="btnL">◀</button>
	<select id="choose" multiple="multiple" size=5>

	</select>
</body>
</html>