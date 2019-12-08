<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dcmls.dto.*"%>
	<%@page import="dcmls.bl.*" %>
	<%@page import="dcmls.*" %>
	<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h5>BOOKMARKS</h5>
<% 
String userid=(String)session.getAttribute("userid");
ArrayList<BookMarkDTO> bookmark=BookMarkBL.getBookMarks(userid);
if(bookmark!=null &&(bookmark.size()>0))
{%>
<table>
<tr>
<td>Book Name</td>
<td>Author</td>
<td>Page</td>
<td>Line</td>
</tr>
<%for(BookMarkDTO bookmarks:bookmark)
{%>
<tr>
<td><%=bookmarks.getBookName()%>&nbsp;</td>
<td><%=bookmarks.getAuthor()%>&nbsp;</td>
<td><%=bookmarks.getPage()%>&nbsp;</td>
<td><%=bookmarks.getLine()%>&nbsp;</td>
<td><a href="editform.jsp?bookmarkid=<%=bookmarks.getBookmarkid()%>">Edit</a></td>
<td><a href="remove_bookmark.jsp?bookmarkid=<%=bookmarks.getBookmarkid()%>">delete</a></td>
</tr>
<%}}%>
</table>
</body>
</html>