<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,dcmls.bl.*,dcmls.dto.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                     <% 
					  ArrayList<UserDTO> users=UserBL.getUsers();
					  if(users!=null &&(users.size()>0))
					  {
					  %>
					    <table border="1">
					      
					        <tr>
					        
					          <td >UserID</td>
					          <td >UserName</td>
					          <td >PhoneNumber</td>
					          <td >EmailID</td>
					          <td >Address</td>
					          <td>Type</td>
					           <td >Action</td>
					            <td >Action</td>
					          </tr>
					          <%for(UserDTO user:users)
					         {%>
					        <tr>
					          <td><%=user.getUserID() %></td>
					          <td><%=user.getUserName() %></td>
					          <td><%=user.getPhoneNumber() %></td>
					          <td><%=user.getEmailID() %></td>
					          <td><%=user.getAddress() %></td>
					          <td><%=user.getType() %></td>
					          <td><a href="user_edit.jsp?UserID=<%=user.getUserID()%>">Edit</a></td>
					          <td><a href="user_delete.jsp?UserID=<%=user.getUserID()%>">Delete</a></td>
					          </tr>
					          <%}
					          }
					          else
					          {%>
					          <tr>
					          <td>no records found</td>
					          </tr>
					          <%}%>
					  
					      </table>
					      
					     
					             
</body>
</html>