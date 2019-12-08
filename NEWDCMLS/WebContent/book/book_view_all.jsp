<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dcmls.dto.*"%>
	<%@page import="dcmls.bl.*" %>
	<%@page import="dcmls.dl.*" %>
	<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>details</title>
</head>
<table>
<tbody>
<tr>
<td align="center" valign="middle">Book Details </td>
</tr>
<tr>
<td height="33" align="center" valign="middle">
<form id="form1" name="form1" method="post">
<% 
String pdfpath;
ArrayList<BookDTO> books=BookBL.getBooks();
if(books!=null &&(books.size()>0))
{%>
<table  border="1" align="center">
<tbody>
<tr>
<td>BOOK ID</td>
<td>BOOK Name </td>
<td>BOOK Type </td>
<td>Author</td>
<td>Publisher</td>
<td>PDF</td>
<td>Edit</td>
<td>Delete</td>
</tr>
<%for(BookDTO book:books)
{%>
<tr>
<td><%=book.getBookID() %>&nbsp;</td>
<td><%=book.getBookName() %>&nbsp;</td>
<td><%=book.getBookType() %>&nbsp;</td>
<td><%=book.getAuthor()%>&nbsp;</td>
<td><%=book.getPublisher()%>&nbsp;</td>
<td><a href="<%=book.getPdf()%>">document</a></td>
<td><a href="book_edit.jsp?book_id=<%=book.getBookID()%>">Edit</a></td>
<td><a href="book_delete.jsp?book_id=<%=book.getBookID()%>" onclick="return confirm('Are you sure?')">Delete</a></td>
</tr>
<%}}%>
</tbody>
</table>
<a href="book_add.jsp">Create New Record</a> 
</form></td>
 </tr>
 </tbody></table>
</body>
</html>