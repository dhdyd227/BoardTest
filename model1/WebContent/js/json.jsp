<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>json.jsp</title>
<script>
	//객체 
	let boardDTO ={ no:1, poster:"홍길동", subject:"첫번쨰글" }
	
	//배열
	let strArr = ["키위","포도","바나나"];
	
	//객체 배열
	let boardArr = [{ no:1, poster:"홍길동", subject:"첫번째글" }, 
		{ no:2, poster:"홍길동2", subject:"두번째글" },
		{ no:3, poster:"홍길동3", subject:"세번째글" }];
	//boardDTO의 작성자 출력
	document.write(boardDTO.poster+"<br>")
	
	//strArr 두번째 과일 출력
	document.write(strArr[1]+"<br>")
	
	//boardArr의 세번째 게시글의 제목 출력
	document.write(boardArr[2].subject+"<br>")
</script>
</head>
<body>
<div id="result"></div>
</body>
</html>