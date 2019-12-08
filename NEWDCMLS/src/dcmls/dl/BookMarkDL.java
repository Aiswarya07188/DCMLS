package dcmls.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import dcmls.dto.BookMarkDTO;


public class BookMarkDL {
	public static int addBookMark(BookMarkDTO book)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="INSERT INTO DCMLS_BOOKMARK(BOOKMARKID,USERID,BOOKNAME,AUTHOR,PAGE,LINE,CREATEDBY,UPDATEDBY)VALUES(?,?,?,?,?,?,?,?)";
			int id=bookmarkId();
			ps=con.prepareStatement(query);
			ps.setInt(1,id);
			ps.setString(2,book.getUserid());
			ps.setString(3,book.getBookName());
			ps.setString(4,book.getAuthor());
			ps.setString(5,book.getPage());
			ps.setString(6,book.getLine());
			ps.setDate(7, getCurrentDate());
			ps.setDate(8, getCurrentDate());
			result=ps.executeUpdate();
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**ERROR** BOOKMARKDL:addBook"+e.getMessage());
		}
		
		
		return result;
	}
	public static int updateBookMark(BookMarkDTO bookmark)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="update DCMLS_BOOKMARK set BOOKNAME=?,AUTHOR=?,PAGE=?,LINE=? where BOOKMARKID=?";
			ps=con.prepareStatement(query);
			ps.setString(1,bookmark.getBookName());
			ps.setString(2,bookmark.getAuthor());
			ps.setString(3,bookmark.getPage());
			ps.setString(4,bookmark.getLine());
			ps.setInt(5, bookmark.getBookmarkid());
			result =ps.executeUpdate();
			
		}catch(Exception e)
		{
			System.out.println("**error** bookmarkDL:updatebookmark"+e.getMessage());
		}
		return result;
	}
	private static int bookmarkId()
	{
		Connection con=null;
		Statement statement=null;
		int bookmarkid=0;
		try
		{
			con=DBHelper.getConnection();
			statement = con.createStatement();
			ResultSet rs=statement.executeQuery("SELECT BOOKMARKID FROM DCMLS_BOOKMARK ORDER BY BOOKMARKID DESC");
			if(rs.next()){
			bookmarkid=rs.getInt("BOOKMARKID")+1;
			}	
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		return bookmarkid;
	}
	private static java.sql.Date getCurrentDate()
	{
	    java.util.Date today = new java.util.Date();
	    return new java.sql.Date(today.getTime());
	}
	public static ArrayList<BookMarkDTO> getBookMarks(String userid)
	{
		ArrayList<BookMarkDTO> books=null;
		Connection con;
		Statement statement=null;
		ResultSet resultSet=null;
		BookMarkDTO bookmark=null;
		
		
		try
		{
			books=new ArrayList<BookMarkDTO>();
			String sql="select * from DCMLS_BOOKMARK WHERE USERID='"+userid+"'";
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next())
			{
				bookmark=new BookMarkDTO();
				bookmark.setBookName(resultSet.getString("BookName"));
				bookmark.setAuthor(resultSet.getString("Author"));
				bookmark.setPage(resultSet.getString("Page"));
				bookmark.setLine(resultSet.getString("Line"));
				books.add(bookmark);
			}
			resultSet.close();
			statement.close();
			con.close();
			
			
		}
		catch(Exception e)
		{
			System.out.println("**ERROR** BOOKMARKDL:getBooks"+e.getMessage());
		}
		
		
		return books;
	}
	public static int removeBookMark(int Bookmarkid)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		
		
		try
		{ 
			con=DBHelper.getConnection();    
			query = "DELETE FROM DCMLS_BOOKMARK WHERE bookmarkid=?";
			ps=con.prepareStatement(query);
			ps.setInt(1,Bookmarkid);
			result= ps.executeUpdate();
			ps.close();
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println("**ERROR** BookMarkDL:removeBookMark"+e.getMessage());
		}
		
		
		return result;
	}
	public static BookMarkDTO getBookMark(int bookmarkid)
	{
		Connection con;
		Statement statement=null;
		ResultSet resultSet=null;
		BookMarkDTO bookmark=null;
		
		
		try
		{
			String sql="SELECT * FROM DCMLS_BOOKMARK WHERE BOOKMARKID="+bookmarkid;
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next())
			{
				bookmark=new BookMarkDTO();
				bookmark.setBookmarkid(resultSet.getInt("BookMarkID"));
				bookmark.setBookName(resultSet.getString("BookName"));
				bookmark.setAuthor(resultSet.getString("Author"));
				bookmark.setPage(resultSet.getString("Page"));
				bookmark.setLine(resultSet.getString("Line"));
		
				
			}
			resultSet.close();
			statement.close();
			con.close();
			
			
		}
		catch(Exception e)
		{
			System.out.println("**ERROR** BookDL:getBook"+e.getMessage());
		}
		
		
		return bookmark;
	}

}
