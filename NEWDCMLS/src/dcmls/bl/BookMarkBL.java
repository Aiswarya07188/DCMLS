package dcmls.bl;

import java.util.ArrayList;


import dcmls.dl.BookMarkDL;

import dcmls.dto.BookMarkDTO;


public class BookMarkBL {
	public static int addBookMark(BookMarkDTO book)
	{
		int result=0;
	
		try
		{
			result=BookMarkDL.addBookMark(book);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**error** BookMarkdl:addBookMark"+e.getMessage());
		}
		return result;
	}
	public static ArrayList<BookMarkDTO> getBookMarks(String userid)
	{
		ArrayList<BookMarkDTO> books=null;
		
		try
		{
		books=BookMarkDL.getBookMarks(userid);
			
			
		}
		catch(Exception e)
		{
			System.out.println("**ERROR** BookMarkdl:getBookMarks"+e.getMessage());
		}
		
	
		return books;
	}
	public static BookMarkDTO getBookMark (int bookmark_id)
	{
		BookMarkDTO bookmark=null;
		try
		{
			bookmark=BookMarkDL.getBookMark(bookmark_id);
		}
		catch(Exception e)
		{
			System.out.println("**error** BookMarkDL:getbookmark"+e.getMessage());
		}
		return bookmark;
	}
	public static int updateBookMark(BookMarkDTO bookmark)
	{
		int result=0;
		
		try
		{
			result =BookMarkDL.updateBookMark(bookmark);
			
		}catch(Exception e)
		{
			System.out.println("**error** bookmarkbl:updatebookmark"+e.getMessage());
		}
		return result;
	}
	public static int removeBookMark(int Bookmarkid)
	{
		int result=0;
		

	try
	{   
		result = BookMarkDL.removeBookMark(Bookmarkid);
		

	}
	catch(Exception e)
	{
		
		System.out.println("**error**"+":removeBookMark"+e.getMessage());
	}
	return result;
	}
}
