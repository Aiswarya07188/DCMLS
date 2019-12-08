<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dcmls.dto.*,dcmls.dl.*,dcmls.bl.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String userid=(String)session.getAttribute("userid");
Login login=null;
int result;%>
<%if(session.getAttribute("message")!=null)
                  {
                	  out.println((String)session.getAttribute("message"));
                	  session.removeAttribute("message");
                  }
 %>
 <h5 align="center">Change your account details</h5>
<form method="post" action="forgotpassword_edit_details.jsp">
<%
login=LoginBL.forgotpassword(userid);
result=LoginBL.forgotpasswordupdate(login);
%>
<div>
<label>USERNAME</label>
<input type="text" name="username" value=<%=login.getUsername()%>>
</div>
<div>
<label>PASSWORD</label>
<input type="password" name="password" value=<%=login.getPassword() %>>
</div>
<div>
<input type="submit" value="submit" name="submit">
</div>
</form>
                  
</body>
</html>