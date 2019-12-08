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
<%!
 int bookmark_id;
 String book_name,author,sPage,sBookMark_ID,sLine;
 BookMarkDTO bookmark=null;
 int result=0;
 %>
<%
if(request.getParameter("submit")!=null)
{
book_name="";author="";sPage="";sBookMark_ID="";sLine="";
int bookmark_id=(Integer)session.getAttribute("bookmarkid");
try
{
sBookMark_ID=request.getParameter("txtBookMarkID");
book_name=request.getParameter("txtBookName");
author=request.getParameter("txtAuthor");
sPage=request.getParameter("txtPage");
sLine=request.getParameter("txtLine");


               		    
//bookmark_id= Integer.parseInt(sBookMark_ID);
bookmark = new BookMarkDTO();
bookmark.setBookmarkid(bookmark_id);
bookmark.setBookName(book_name);
bookmark.setAuthor(author);
bookmark.setPage(sPage);
bookmark.setLine(sLine);
result= BookMarkBL.updateBookMark(bookmark);
response.sendRedirect("view_bookmarks.jsp");
}
catch(NumberFormatException e)
{
}
catch(Exception e)
{
System.out.println("**Error** Book: book_update"+e.getMessage());
}
}
else
{
//int bookmark_id=(Integer)session.getAttribute("bookmarkid");
//bookmark_id=Integer.parseInt(request.getParameter("bookmark_id"));
bookmark=BookMarkBL.getBookMark(bookmark_id);
if(bookmark!=null)
{
book_name=bookmark.getBookName();
author=bookmark.getAuthor();
sPage=bookmark.getLine();
sLine=bookmark.getLine();
bookmark_id=bookmark.getBookmarkid();
}
else
{
book_name="";author="";sPage="";sBookMark_ID="";sLine="";
}
}%>
<form method="post" >
<table width="100%" border="0">
<tbody>
<tr>
<td align="left" valign="middle" >Book Name</td>
<td><input type="text" name="txtBookMarkID" value='<%=bookmark_id%>'></td>
</tr>
<tr>
<td align="left" valign="middle" >Book Name</td>
<td><input type="text" name="txtBookName" value='<%=book_name%>'></td>
</tr>
<tr>
<tr>
<td align="left" valign="middle" >Author</td>
<td><input type="text" name="txtAuthor" value='<%=author%>'></td>
</tr>
<tr>
<td align="left" valign="middle" >Page</td>
<td><input type="text" name="txtPage" value='<%=sPage%>'></td>
</tr>
<tr>
<td align="left" valign="middle" >Line</td>
<td><input type="text" name="txtLine" value='<%=sLine%>'></td>
</tr>
<tr>
<td><input type="submit" name="submit" id="submit" value="Update"></td>
</tr>
</tbody>
</table>
</form>
</body>
</html>