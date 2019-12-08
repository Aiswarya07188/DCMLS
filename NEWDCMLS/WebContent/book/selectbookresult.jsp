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
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  margin-left:50px;
  text-align: center;
  font-family: arial;
  float:left;
}

.price {
  color: grey;
  font-size: 22px;
}

</style>
</head>
<table>
<tbody>
<tr>
<td align="center" valign="middle">Book Details </td>
</tr>
<tr>
<td height="33" align="center" valign="middle">
<form id="form1" name="form1" method="post">
<div>
 <a href="../bookmarks/BookMarking.jsp">Add Bookmark</a>
</div>
<div>
 <a href="../bookmarks/view_bookmarks.jsp">View bookmarks</a>
</div>
<% 
String booktype=request.getParameter("selecttype");
String pdfpath;
ArrayList<BookDTO> books=BookBL.getSelectbooks(booktype);
if(books!=null &&(books.size()>0))
{%>
<%for(BookDTO book:books)
{%>
<div class="card">
  <img src="../images/pdf.jpg" alt="Denim Jeans" style="width:100%">
  <h1><%=book.getBookName() %></h1>
  <p><%=book.getAuthor()%></p>
  <p><%=book.getPublisher()%></p>
  <p><a href="<%=book.getPdf()%>"onClick="<%UservisitedbookBL.uservisit(book.getBookID());%>">READ BOOK</a></p>
</div>

<%}}%>

</form></td>
 </tr>
 </tbody></table>
</body>
</html>