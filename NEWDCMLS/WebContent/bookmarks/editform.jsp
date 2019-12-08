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
BookMarkDTO bookmark=null;
int result=0;
%>
<form method="POST" action="editprocess.jsp">
                    <% 
                    int bookmarkid=(Integer)session.getAttribute("bookmarkid");
                    bookmark=BookMarkBL.getBookMark(bookmarkid);
                    result=BookMarkBL.updateBookMark(bookmark);
                	  %>
                	   <table>
					        <tr>
					          <td>BookMarkID</td>
					           <td><input type="text" name="txtBookMarkID" id="txtBookMarkID" value="<%=bookmark.getBookmarkid()%>" readonly></td>
					         </tr>

					           <tr>
					        <td >BookName</td>
					          <td ><input type="text" name="txtBookName" id="txtBookName" value="<%=bookmark.getBookName()%>"></td>
					          </tr>
					        <tr>
					          <td>Author</td>
					         <td ><input type="text" name="txtAuthor" id="txtAuthor" value="<%=bookmark.getAuthor()%>"></td>
					           </tr>
					        <tr>
					          <td>Page</td>
					         <td><input type="text" name="txtPage" id="txtPage" value="<%=bookmark.getPage()%>"></td>
					          </tr>
					          <tr>
					          <td>Line</td>
					         <td><input type="text" name="txtLine" id="txtLine" value="<%=bookmark.getLine()%>"></td>
					          </tr>
					          <tr>
					          <td height="30">&nbsp;</td>
					          <td><input type="submit" name="submit" id="submit" value="Submit"></td>
					          </tr>
					</table>
                	  
</form>
</body>
</html>