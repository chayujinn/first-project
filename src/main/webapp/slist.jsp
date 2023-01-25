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
<h2 style="text-align:center;"><b>학생정보현황</b></h2>
<form name="frm" method="post" action="action.jsp" style="display:flex; align-items:center; justify-content:center">
<table border="1" style="text-align:center">
<tr>
	<td>학번</td>
	<td>이름</td>
	<td>주민번호</td>
	<td>학과명</td>
	<td>성별</td>
	<td>전화번호</td>
	<td>이메일</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	Connection conn = Util.getConnection();
	String sql = "select stuid,sname,substr(jumin,1,6)||'-'||substr(jumin,7,7),dept_name,decode(substr(jumin,7,1),'3','남자','4','여자'),phone,email from tbl_student_202210 order by stuid";
	PreparedStatement pstmt = conn.prepareStatement(sql);
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