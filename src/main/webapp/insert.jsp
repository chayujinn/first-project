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
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section style="position:fixed; top:80px; left: 0px; width:100%; height:100%;
background-color:lightblue">
<h2 style="text-align:center;"><b>성적입력</b></h2>
<form name="frm" method="post" action="action.jsp" style="display:flex; align-items:center; justify-content:center">
<table border="1" style="text-align:center">
<%
request.setCharacterEncoding("UTF-8");
String sid="";
try{
	Connection conn = Util.getConnection();
	String sql = "select max(sid)+1 from tbl_score_202210";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();

	sid=rs.getString(1);

}
catch(Exception e){
	e.printStackTrace();
}
%>
<tr>
	<td>학번</td><td><input type="text" name="sid" value="<%=sid%>"></td>
</tr>
<tr>
	<td>교과코드</td><td>
	<select name="subcode" style="width:175px">
	<option value=""></option>
	<option value="A001">A001-자바</option>
	<option value="A002">A002-C언어</option>
	<option value="A003">A003-데이터베이스</option>
	<option value="A004">A004-웹프로그래밍</option>
	<option value="A005">A005-영어</option>
	</select>
	</td>
</tr>
<tr>
	<td>중간</td><td><input type="text" name="midscore"></td>
</tr>
<tr>
	<td>기말</td><td><input type="text" name="finalscore"></td>
</tr>
<tr>
	<td>출석</td><td><input type="text" name="attend"></td>
</tr>
<tr>
	<td>레포트</td><td><input type="text" name="report"></td>
</tr>
<tr>
	<td>기타</td><td><input type="text" name="etc"></td>
</tr>
<tr>
	<td colspan="2">
	<input type="button" value="등록" onclick="addCheck()">
	<input type="button" value="취소" onclick="res()">
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>