<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>시험목록 (2 of 6)</title>
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
</head>

<body>
<div align="center">
<div align="left">
<h4>시험목록</h4>
</div>
<div style="background-color: rgb(224, 224, 224);">
<table>
	<tr>
		<th>응시여부</th>
		<th><input type="radio" name="" value="total">전체</th>
		<th><input type="radio" name="" value="nottest">미응시</th>
		<th><input type="radio" name="" value="test">응시</th>
		<th></th>
		<th>
			<button type="button" onclick="location.href ='ㅣㅣㅣ'" 
			style="font-size: 16px; color: rgb(255, 255, 255); 
			text-align: center; line-height: 2.5em; border-radius: 4px; 
			background-color: rgb(241, 196, 15);">초기화</button> &nbsp;&nbsp;
		</th>
	</tr>
	<tr>
		<th>시험종목</th>
		<th>
			<select name='object'>
    		<option value='' selected>데이터베이스
   			<option value='programing'>프로그래밍
    		<option value='operation'>운영체제
    		<option value='information'>정보기초
			</select>
		</th>
		<th></th>
		<th width="100" align="center">시험명</th>
		<td>
		<input type="text" id="" name="" size="50" value='내용을 입력하세요'>
		</td>
		<th>
			<button type="button" onclick="location.href ='ㅣㅣㅣ'" 
			style="font-size: 16px; color: rgb(255, 255, 255); 
			text-align: center; line-height: 2.5em; border-top-left-radius: 4px;
			 border-top-right-radius: 4px; border-bottom-right-radius: 4px; 
			 border-bottom-left-radius: 4px;
			  background-color: rgb(52, 152, 219);">검색</button>
		</th>
	</tr>
</table>
</div>
<div align="right">
<br/>
	<button type="button" onclick="location.href ='questionenroll.jsp'" 
			style="font-size: 16px; color: rgb(255, 255, 255); 
			text-align: center; line-height: 2.5em; border-top-left-radius: 4px;
			 border-top-right-radius: 4px; border-bottom-right-radius: 4px; 
			 border-bottom-left-radius: 4px;
			  background-color: rgb(52, 152, 219);">문제등록</button>
	<button type="button" onclick="location.href ='testenroll.jsp'" 
			style="font-size: 16px; color: rgb(255, 255, 255); 
			text-align: center; line-height: 2.5em; border-top-left-radius: 4px;
			 border-top-right-radius: 4px; border-bottom-right-radius: 4px; 
			 border-bottom-left-radius: 4px;
			  background-color: rgb(52, 152, 219);">시험지 등록</button>
<br/><br/>
</div>
<div>

			<table>
					<tr style="background-color: rgb(224, 224, 224);">
						<th>No.</th>
						<th>시험종목</th>
						<th>시험명</th>
						<th>응시여부</th>
					</tr>
					<tr>
						<td>89</td>
						<td>데이터베이스</td>
						<td>3월 정기시험&nbsp;</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='datatest.jsp'" style="font-size: 13px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(94, 94, 94);">응시하기</button> &nbsp;&nbsp;
							</div>
						</td>
					</tr>
					<tr>
						<td>88</td>
						<td>프로그래밍&nbsp;</td>
						<td>&nbsp;진급시험</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='ㅋㅋㅋ'" style="font-size: 12px; 
								color: rgb(255, 255, 255); text-align: center; line-height: 2em; border-top-left-radius: 4px; border-top-right-radius: 4px;
								border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(52, 152, 219);">결과확인</button> &nbsp;&nbsp;
							</div>
						</td>
					</tr>
					<tr>
						<td>87</td>
						<td>운영체제&nbsp;</td>
						<td>3월 정기시험&nbsp;</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='ㅣㅣㅣ'" style="font-size: 13px; 
								color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; 
								background-color: rgb(94, 94, 94);">응시하기</button> &nbsp;&nbsp;
							</div>
						</td>
					</tr>
					<tr>
						<td>86</td>
						<td>&nbsp;프로그래밍</td>
						<td>&nbsp;신입사원 레벨 테스트</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='ㅋㅋㅋ'" style="font-size: 12px; 
								color: rgb(255, 255, 255); text-align: center; line-height: 2em; border-top-left-radius: 4px; border-top-right-radius: 4px;
								border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(52, 152, 219);">결과확인</button> &nbsp;&nbsp;
							</div>
						</td>
				
					</tr>
					<tr>
						<td>85</td>
						<td>정보기초&nbsp;</td>
						<td>&nbsp;신입사원 레벨 테스트</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='ㅣㅣㅣ'" style="font-size: 13px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(94, 94, 94);">응시하기</button> &nbsp;&nbsp;
							</div>
						</td>
					</tr>
			</table>
		</div>
		</div>
		
		
		
		
</body>
</html>