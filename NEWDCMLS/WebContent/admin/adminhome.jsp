<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.navbar a {
  float: left;
  text-align: center;
  padding: 14px 16px;
  
}
.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  padding: 14px 16px;

}



.dropdown-content {
  display: none;
  position: absolute;
  

  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  
  padding: 12px 16px;
  
  display: block;
  text-align: left;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>

<div class="navbar">
  <a href="#home">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Users
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="registered_users.jsp">USER REQUESTS</a>
      <a href="approved.jsp">APPROVED USERS</a>
      <a href="rejected.jsp">REJECTED USERS</a>
      <a href="trackusers.jsp">List of Users</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Books
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="../book/book_view_all.jsp">View Books</a>
      <a href="../book/book_add.jsp">Add Book</a>
      <a href="#">select Book</a>
    </div>
  </div> 
  <a href="../user/usereditprofile.jsp">EDIT PROFILE</a>
  <a href="../login/logout.jsp">Logout</a>
</div>


</body>
</html>