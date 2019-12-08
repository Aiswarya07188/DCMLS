<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
              
                
                 
					  <form id="form1" name="form1" method="post" action="user_add_process.jsp">
					   <table>
					        <tr>
					          <td>User ID</td>
					           <td><input type="text" name="txtUserID" id="txtUserID"></td>
					         </tr>
					        <tr>
					        <td >User Name</td>
					          <td ><input type="text" name="txtUserName" id="txtUserName"></td>
					          </tr>
					        <tr>
					          <td>Phone Number</td>
					         <td ><input type="text" name="txtPhoneNumber" id="txtPhoneNumber"></td>
					           </tr>
					           <tr>
					           <td>Date of birth</td>
					           <td><input type="date" name="date">
					           </tr>
					           <tr>
					           <td>Gender</td>
					           <td>
					           <input type="radio" name="gender" value="MALE">Male
					           <input type="radio" name="gender" value="FEMALE">Female
					           <tr>
					           <td>category</td>
					           <td><select name="category">
					           <option value="STUDENT">STUDENT</option>
					           <option value="TEACHER">TEACHER</option>
					           <option value="PUBLIC">PUBLIC</option>
					           </select>
					           </tr>
					        <tr>
					          <td>Email ID</td>
					         <td><input type="text" name="txtEmailID" id="txtEmailID"></td>
					          </tr>
					        <tr>
					         <td>Address</td>
					         <td ><input type="text" name="txtAddress" id="txtAddress"></td>
					         </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td><input type="submit" name="submit" id="submit" value="Submit"></td>
					          </tr>
					</table>
				</form>
         
       

</body>
</html>