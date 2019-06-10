<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.dao.orderDAO"
	import="java.sql.*"
	import="com.model.*"
%>
<% member member= (member) session.getAttribute("MEMBER");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

<%
		
			ResultSet rs=orderDAO.historyOrder(member.getAccount());
			out.println("<table>");
					
			while(rs.next())
			{
				out.println("<tr><td>"+rs.getInt("id")+"<td>"+rs.getString("orderitem")+"<td>"+rs.getDate("ordertime")+"<td>"+rs.getInt("total"));
			}
		
			out.println("</table>");
		
		%>
</body>
</html>