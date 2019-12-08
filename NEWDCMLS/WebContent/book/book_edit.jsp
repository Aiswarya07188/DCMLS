<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dcmls.dto.*"%>
	<%@page import="dcmls.bl.*" %>
	<%@page import="dcmls.dl.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit</title>
</head>
<body>
 <h1>EDIT BOOK DETAILS</h1>
<%!
 int book_id;
 String book_name,book_type,author,sPublisher,sBook_ID,spdf;
 BookDTO book=null;
 int result=0;
 %>
<%
if(request.getParameter("submit")!=null)
{
book_name="";book_type="";author="";sPublisher="";sBook_ID="";
try
{
sBook_ID=request.getParameter("txtBookID");
book_name=request.getParameter("txtBookName");
book_type=request.getParameter("txtBookType");
author=request.getParameter("txtAuthor");
sPublisher=request.getParameter("txtPublisher");
spdf=request.getParameter("pdf");

               		    
book_id= Integer.parseInt(sBook_ID);
book = new BookDTO();
book.setBookID(book_id);
book.setBookName(book_name);
book.setBookType(book_type);
book.setAuthor(author);
book.setPublisher(sPublisher);
book.setPdf(spdf);
result= BookBL.updateBook(book);
response.sendRedirect("book_view_all.jsp");
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
book_id=Integer.parseInt(request.getParameter("book_id"));
book=BookBL.getBook(book_id);
if(book!=null)
{
book_name=book.getBookName();
book_type=book.getBookType();
author=book.getAuthor();
sPublisher=""+book.getPublisher();
spdf=""+book.getPdf();
sBook_ID=""+book.getBookID();
}
else
{
book_name="";author="";sPublisher="";book_type="";sBook_ID="";spdf="";
}
}%>
<form method="post" >
<table width="100%" border="0">
<tbody>
<tr>
<td align="left" valign="middle" >Book ID</td>
<td><input type="text" name="txtBookID" value='<%=sBook_ID%>'></td>
</tr>
<tr>
<td align="left" valign="middle" >Book Name</td>
<td><input type="text" name="txtBookName"value='<%=book_name%>'></td>
</tr>
<tr>
<td align="left" valign="middle" >Book Type</td>
<td><input type="text" name="txtBookType" value='<%=book_type%>'></td>
</tr>
<tr>
<td align="left" valign="middle" >Author</td>
<td><input type="text" name="txtAuthor" value='<%=author%>'></td>
</tr>
<tr>
<td align="left" valign="middle" >Publisher</td>
<td><input type="text" name="txtPublisher" value='<%=sPublisher%>'></td>
</tr>
<tr>
<td align="left" valign="middle" >Pdf</td>
<td><input type="file" name="pdf" value='<%=spdf%>'></td>
</tr>
<tr>
<td><input type="submit" name="submit" id="submit" value="Update"></td>
</tr>
</tbody>
</table>
</form>

</body>
</html>