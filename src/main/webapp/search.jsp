<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position:fixed; top:80px; left: 0px; width:100%; height:100%;
background-color:lightblue">
<h2 style="text-align:center;"><b>과목별 성적조회</b></h2>
<form name="frm2" method="post" action="action.jsp" style="display:flex; align-items:center; justify-content:center">
<table border="1" style="text-align:center">
<tr>
	<td>과목코드</td><td><input type="text" name="subcode"></td><td><input type="button" value="조회" onclick="search()"></td>
</tr>
</table>
</form>

<br><br>

<form name="frm" method="post" action="action.jsp" style="display:flex; align-items:center; justify-content:center">
<table border="1" style="text-align:center">
<tr>
	<td>학번</td>
	<td>이름</td>
	<td>학과</td>
	<td>과목</td>
	<td>중간</td>
	<td>기말</td>
	<td>출석</td>
	<td>레포트</td>
	<td>기타</td>
	<td>총정</td>
	<td>학점</td>

</tr>
<%
request.setCharacterEncoding("UTF-8");
String subcode = request.getParameter("subcode");
try{
	Connection conn = Util.getConnection();
	String sql = "";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, subcode);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
%>
<tr>
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	<td><%=rs.getString(7) %></td>
	<td><%=rs.getString(8) %></td>
	<td><%=rs.getString(9) %></td>
	<td><%=rs.getString(10) %></td>
	<td><%=rs.getString(11) %></td>
</tr>
<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>