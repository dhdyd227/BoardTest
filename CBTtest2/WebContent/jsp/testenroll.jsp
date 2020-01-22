<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>시험지등록(5 of 6)</title>
</head>
<body>
	<div style="margin: 10px 10px 10px 10px;">

		<div>
			<div style="margin-left: 10px;" align="center">
				<table>
					<tr>
						<td>
							<h3>시험지 등록</h3>
						</td>
					<tr>
					<tr>
						<td><span style="display: inline-block; width: 70px;">시험명</span>
							<span style="display: inline-block; width: 100px;"> <input
								type="text" size="60px" value="신입사원 레벨 테스트"
								style="color: rgb(94, 94, 94);">
						</span> <br /> <br /></td>
					</tr>
					<tr>
						<td><span style="display: inline-block; width: 70px;">문항
								수</span> <span> <input type="text" size="13" value="10"
								style="color: rgb(94, 94, 94);">
						</span> <span style="display: inline-block; width: 70px;"> 시험시간</span> <span>
								<input type="text" size="13" value="1시간"
								style="color: rgb(94, 94, 94);">
						</span> <br /> <br /></td>
					</tr>
					<tr>
						<td><span style="display: inline-block; width: 70px;">시험종목
						</span> <select name='object'>
								<option value='' selected>데이터베이스
								<option value='programing'>프로그래밍
								<option value='operation'>운영체제
								<option value='information'>정보기초
						</select> <br /> <br /></td>
					</tr>
					<tr>
						<td><span
							style="display: inline-block; width: 70px; vertical-align: top;">상세정보
						</span> <span> <textarea rows="10" cols="60px"></textarea>
						</span></td>
					</tr>
					<tr>
						<td><br /> 출제유형 <input type="radio" name="" value="">랜덤출제
							<input type="radio" name="" value="">고정출제<br /></td>
					</tr>
					<tr>
						<td align="center">
							<button type="button" onclick="location.href ='main.jsp'"
								style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(52, 152, 219);">등록</button>

							<button type="button" onclick="location.href ='main.jsp'"
								style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(241, 196, 15);">목록</button>

						</td>
					</tr>
				</table>
			</div>
		</div>

	</div>
</body>
</html>