<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dcmls.dto.*,dcmls.bl.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
UserDTO user=null;
Login login=null;
int result,result1;
String username=(String)session.getAttribute("username");
String userid=(String)session.getAttribute("userid");
//out.println(userid);

%>
<form method="POST" action="usereditprocess.jsp">
                    <% 
                    login=LoginBL.getUser(userid);
                    user=UserBL.getUser(userid);
                    result=UserBL.updateuser(user);
                    result1=LoginBL.updateuser(login);
                	  %>
                	   <table>
					        <tr>
					          <td>User ID</td>
					           <td><input type="text" name="txtUserID" id="txtUserID" value="<%=user.getUserID()%>" readonly></td>
					         </tr>

					           <tr>
					        <td >Name</td>
					          <td ><input type="text" name="txtUserName" id="txtUserName" value="<%=user.getUserName()%>"></td>
					          </tr>
					        <tr>
					          <td>Phone Number</td>
					         <td ><input type="text" name="txtPhoneNumber" id="txtPhoneNumber" value="<%=user.getPhoneNumber()%>"></td>
					           </tr>
					        <tr>
					          <td>Email ID</td>
					         <td><input type="text" name="txtEmailID" id="txtEmailID" value="<%=user.getEmailID()%>"></td>
					          </tr>
					        <tr>
					         <td>Address</td>
					         <td >
					         <input type="hidden" name="type" value="<%=login.getType()%>">
					         <input type="text" name="txtAddress" id="txtAddress" value="<%=user.getAddress()%>"></td>
					         </tr>
					         <tr>
					        <td >User Name</td>
					          <td ><input type="text" name="username" value="<%=login.getUsername()%>"></td>
					          </tr>
					        <tr>
					          <td>Password</td>
					         <td ><input type="text" name="password" value="<%=login.getPassword()%>"></td>
					           </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td><input type="submit" name="submit" id="submit" value="Submit"></td>
					          </tr>
					</table>
                	  
</form>
</body>
</html>