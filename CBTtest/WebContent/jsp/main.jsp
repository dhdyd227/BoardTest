<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ (2 of 6)</title>
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
<h4>������</h4>
</div>
<div style="background-color: rgb(224, 224, 224);">
<table>
	<tr>
		<th>���ÿ���</th>
		<th><input type="radio" name="" value="total">��ü</th>
		<th><input type="radio" name="" value="nottest">������</th>
		<th><input type="radio" name="" value="test">����</th>
		<th></th>
		<th>
			<button type="button" onclick="location.href ='�ӤӤ�'" 
			style="font-size: 16px; color: rgb(255, 255, 255); 
			text-align: center; line-height: 2.5em; border-radius: 4px; 
			background-color: rgb(241, 196, 15);">�ʱ�ȭ</button> &nbsp;&nbsp;
		</th>
	</tr>
	<tr>
		<th>��������</th>
		<th>
			<select name='object'>
    		<option value='' selected>�����ͺ��̽�
   			<option value='programing'>���α׷���
    		<option value='operation'>�ü��
    		<option value='information'>��������
			</select>
		</th>
		<th></th>
		<th width="100" align="center">�����</th>
		<td>
		<input type="text" id="" name="" size="50" value='������ �Է��ϼ���'>
		</td>
		<th>
			<button type="button" onclick="location.href ='�ӤӤ�'" 
			style="font-size: 16px; color: rgb(255, 255, 255); 
			text-align: center; line-height: 2.5em; border-top-left-radius: 4px;
			 border-top-right-radius: 4px; border-bottom-right-radius: 4px; 
			 border-bottom-left-radius: 4px;
			  background-color: rgb(52, 152, 219);">�˻�</button>
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
			  background-color: rgb(52, 152, 219);">�������</button>
	<button type="button" onclick="location.href ='testenroll.jsp'" 
			style="font-size: 16px; color: rgb(255, 255, 255); 
			text-align: center; line-height: 2.5em; border-top-left-radius: 4px;
			 border-top-right-radius: 4px; border-bottom-right-radius: 4px; 
			 border-bottom-left-radius: 4px;
			  background-color: rgb(52, 152, 219);">������ ���</button>
<br/><br/>
</div>
<div>

			<table>
					<tr style="background-color: rgb(224, 224, 224);">
						<th>No.</th>
						<th>��������</th>
						<th>�����</th>
						<th>���ÿ���</th>
					</tr>
					<tr>
						<td>89</td>
						<td>�����ͺ��̽�</td>
						<td>3�� �������&nbsp;</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='datatest.jsp'" style="font-size: 13px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(94, 94, 94);">�����ϱ�</button> &nbsp;&nbsp;
							</div>
						</td>
					</tr>
					<tr>
						<td>88</td>
						<td>���α׷���&nbsp;</td>
						<td>&nbsp;���޽���</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='������'" style="font-size: 12px; 
								color: rgb(255, 255, 255); text-align: center; line-height: 2em; border-top-left-radius: 4px; border-top-right-radius: 4px;
								border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(52, 152, 219);">���Ȯ��</button> &nbsp;&nbsp;
							</div>
						</td>
					</tr>
					<tr>
						<td>87</td>
						<td>�ü��&nbsp;</td>
						<td>3�� �������&nbsp;</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='�ӤӤ�'" style="font-size: 13px; 
								color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; 
								background-color: rgb(94, 94, 94);">�����ϱ�</button> &nbsp;&nbsp;
							</div>
						</td>
					</tr>
					<tr>
						<td>86</td>
						<td>&nbsp;���α׷���</td>
						<td>&nbsp;���Ի�� ���� �׽�Ʈ</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='������'" style="font-size: 12px; 
								color: rgb(255, 255, 255); text-align: center; line-height: 2em; border-top-left-radius: 4px; border-top-right-radius: 4px;
								border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(52, 152, 219);">���Ȯ��</button> &nbsp;&nbsp;
							</div>
						</td>
				
					</tr>
					<tr>
						<td>85</td>
						<td>��������&nbsp;</td>
						<td>&nbsp;���Ի�� ���� �׽�Ʈ</td>
						<td>
							<div>
								<button type="button" onclick="location.href ='�ӤӤ�'" style="font-size: 13px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(94, 94, 94);">�����ϱ�</button> &nbsp;&nbsp;
							</div>
						</td>
					</tr>
			</table>
		</div>
		</div>
		
		
		
		
</body>
</html>