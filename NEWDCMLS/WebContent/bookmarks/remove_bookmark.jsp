<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dcmls.dto.*"%>
	<%@page import="dcmls.bl.*" %>
	<%@page import="dcmls.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int bookmark_id=0;
int result=0;

bookmark_id=Integer.parseInt(request.getParameter("bookmarkid"));
result=BookMarkBL.removeBookMark(bookmark_id);
response.sendRedirect("view_bookmarks.jsp");
	

%>
</body>
</html>