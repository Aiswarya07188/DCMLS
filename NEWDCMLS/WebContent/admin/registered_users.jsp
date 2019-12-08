<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,dcmls.bl.*,dcmls.dto.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function confirm()
{
	alert("are you sure you want to approve");
}
</script>
</head>
<body>
                     <% 
					  ArrayList<UserDTO> users=UserBL.getUsers();
					  if(users!=null &&(users.size()>0))
					  {
					  %>
					  <h1>Registered Users</h1>
					    <table border="1">
					      
					        <tr>
					        <td>Approve</td>
					        <td>Reject</td>
					          <td >UserID</td>
					          <td >UserName</td>
					          <td >PhoneNumber</td>
					          <td >EmailID</td>
					          <td >Address</td>    
					          </tr>
					          <%for(UserDTO user:users)
					         {%>
					        <tr>
					        <td>
					        <input type="submit" value="approved" name="submit" 
					        onClick="Javascript:window.location.href = 'email.jsp?userid=<%=user.getUserID() %>';">  
					        </td>
					        <td>
					        <input type="submit" value="approved" name="submit" 
					        onClick="Javascript:window.location.href = 'rejectedusers.jsp?userid=<%=user.getUserID() %>';">  
					        </td>
					          <td><%=user.getUserID()%></td>
					          <td><%=user.getUserName() %></td>
					          <td><%=user.getPhoneNumber() %></td>
					          <td><%=user.getEmailID() %></td>
					          <td><%=user.getAddress() %></td>
					          
					          <%}
					          }
					           else
					          { %>
					          <tr>
					          <td>no records found</td>
					          </tr>
					          <%}%>
					  
					      </table>
					      
					     
					             
</body>
</html>