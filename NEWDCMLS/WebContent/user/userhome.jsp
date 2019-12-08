<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dcmls.dto.*,dcmls.bl.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    <button class="dropbtn">Profile
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">View</a>
      <a href="usereditprofile.jsp">Edit</a>
      
    </div>
  </div> 
  
  <div class="dropdown">
    <button class="dropbtn">Book
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="../newbookreqest/book_user_request.jsp">REQUEST BOOKS</a>
      <a href="../newbookreqest/view_bookrequests.jsp">REQUESTED BOOKS</a>
      <a href="#"></a>
    </div>
  </div> 
  
  <a href="../login/logout.jsp">Logout</a>
</div>


</body>
<%
String username=(String)session.getAttribute("username");
String userid=(String)session.getAttribute("userid");
//out.println(username+""+userid);
%>
<form action="../book/selectbookresult.jsp" method="post">
<select name="selecttype" id="selecttype">
        <%
	ArrayList <BookDTO> types=BookBL.getTypes();
    for(BookDTO type: types)
    {

%>
            <option><%= type.getBookType()%></option>
        <% }%>
        </select>
        <input type="submit" name="submit" id="submit" value="Submit">
        </form>
<form id="form1" name="form1" method="post">
<%
ArrayList <Integer> bookids=UservisitedbookBL.getBookvisited();
for(int bookid: bookids)
{
	
	

	ArrayList<BookDTO> books=BookBL.getmostviewed(bookid);
	if(books!=null &&(books.size()>0))
	{%>
		<%for(BookDTO book:books)
			{%>
				<div class="card">
  				<img src="../images/pdf.jpg" alt="Denim Jeans" style="width:100%">
 				 <h1><%=book.getBookName() %></h1>
  				<p><%=book.getAuthor()%></p>
  				<p><%=book.getPublisher()%></p>
  				<p><a href="../book/<%=book.getPdf()%>">READ BOOK</a></p>
				</div>
			<%}
	}
}%>

</form>
</html>