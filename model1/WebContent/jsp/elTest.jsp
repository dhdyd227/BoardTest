<%@page import="java.util.Map"%>
<%@page import="co.yedam.app.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elTest.jsp</title>
</head>
<body>
<hr>
Map: userInfo의 dept키의 값<hr>
표현식 : <%=((Map<String ,Object>)request.getAttribute("userInfo")).get("dept") %> <br>
EL: ${requestScope.userInfo.dept }

<hr>
DTO: board의 제목
표현식 : <%=request.getAttribute("board") %> <br>
EL: ${board.subject }

<hr>
boardList 첫번째 게시글의 작성자<br>
표현식 : <%=((List<BoardDTO>)request.getAttribute("boardList")).get(0).getPoster() %> <br>
<%
	List<BoardDTO> b1 = (List<BoardDTO>)request.getAttribute("boardList");
	BoardDTO dto = b1.get(0);
	out.print(dto.getPoster());
%>
EL: ${boardList[0].poster}

<hr>
속성읽기<br>
session의 name 속성<br>
표현식:<%=session.getAttribute("name") %><br/>
EL : ${sessionScope.name} <br/>

<hr>
application의 name<br>
표현식:<%=session.getAttribute("name") %><br/>
EL : ${applicationScope.name} <br/>
<hr>


쿠키정보<br/>
표현식 : <% Cookie[] cookies = request.getCookies(); %>
EL : ${cookie.openYn }
<hr>
파라미터(배열)<br>
표현식 : <%--=request.getParameterValues("hobby")[0] --%><br/>
EL : ${paramValues.hobby[0] }<br/>
파라미터<br/>
표현식: <%=request.getParameter("name") %><br/>
EL: ${param.name }<br/>
<hr>
헤더정보<br/>
표현식: <%=request.getHeader("User-Agent") %><br/>
EL: ${header["user-agent"]}<br/> 
<hr>
request<br>
표현식: <%= request.getContextPath() %><br/>
EL : ${pageContext.request.contextPath }<br/>
<hr>
</body>
</html>