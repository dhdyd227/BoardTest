<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework2_array.jsp</title>
<script>
	let txtArr = [];
	window.onload = function(){
		btnAdd.addEventListener("click",funcAdd)
		btnDelete.addEventListener("click",funcDelete)
		btnSearch.addEventListener("click",funcSearch)
	}
	function funcAdd(){
		text="";
		text = txtFruit.value;
		txtArr.push(text);
		result.innerHTML = txtArr;
	}
	function funcDelete(){
		//배열에서 삭제하고 배열을 div에 출력
		txtArr.pop();
		result.innerHTML = txtArr;
	}	
	function funcSearch(){
		//배열에서 검색해서 검색위치를 div출력
		text="";
		text = txtFruit.value;
		var position=-1;
		for(i=0;i<txtArr.length;i++){
			if(txtArr[i]==text){
				position=i;
				break;
			}
		}
		if(position==-1){
			
		}else{
			result.innerHTML = position;
		}
	}		
</script>
</head>
<body>
<input type="text" id="txtFruit">
<button type="button" id="btnAdd">추가</button>
<button type="button" id="btnDelete">삭제</button>
<button type="button" id="btnSearch">검색</button>
<div id="result"></div>
</body>
</html>