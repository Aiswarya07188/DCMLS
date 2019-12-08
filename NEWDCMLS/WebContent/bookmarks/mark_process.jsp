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
String userid=(String)session.getAttribute("userid");
BookMarkDTO book=null;
int result=0;
try
{
	String bookname=request.getParameter("txtBookName");
	String author=request.getParameter("txtAuthor");
	String pages=request.getParameter("txtPage");
	String line=request.getParameter("txtLine");
book=new BookMarkDTO();
book.setBookName(bookname);
book.setAuthor(author);
book.setPage(pages);
book.setLine(line);
book.setUserid(userid);
result=BookMarkBL.addBookMark(book);
response.sendRedirect("view_bookmarks.jsp");
}
catch(Exception e)
{
	System.out.println("**error** mark_process:"+e.getMessage());
}
%>
</body>
</html>