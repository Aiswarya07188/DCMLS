<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOK LOG</title>
</head>
<form id="form1" name="form1" method="post" action="book_add_process.jsp">
<table width="100%" border="0">
<tbody>
<tr>
<td align="left" valign="middle">Book Name</td>
<td><input type="text" name="txtBookName"></td>
</tr>
<tr>
<td align="left" valign="middle">Book Type</td>
<td><select name="txtBookType">
<option value="ECONOMICS">ECONOMICS</option>
<option value="ENGINEERING">ENGINEERING</option>
<option value="FICTION">FICTION</option>
<option value="LAW">LAW</option>
<option value="MEDICAL">MEDICAL</option>
<option value="NOVELS">NOVELS</option>
<option value="SCIENCE">SCIENCE</option>
</select><td>
</tr>
<tr>
<td align="left" valign="middle">Author</td>
<td><input type="text" name="txtAuthor"></td>
</tr>
<tr>
<td align="left" valign="middle">Publisher</td>
<td><input type="text" name="txtPublisher"></td>
</tr>
<tr>
<td align="left" valign="middle">Pdf document</td>
<td align="left" valign="middle"><input type="file" name="pdf" size="20"></td>
</tr>
<tr>
<td><input type="submit" name="submit" id="submit" value="Submit"></td>
</tr>
</tbody>
</table>
</form>
</body>
</html>