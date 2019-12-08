package dcmls.dto;

public class BookMarkDTO 
{
	int Bookmarkid;
	String BookName,Author,Page,Line,Userid;
	
	public String getUserid() {
		return Userid;
	}

	public void setUserid(String userid) {
		Userid = userid;
	}

	public int getBookmarkid() {
		return Bookmarkid;
	}

	public void setBookmarkid(int bookmarkid) {
		Bookmarkid = bookmarkid;
	}

	public String getBookName() {
		return BookName;
	}

	public void setBookName(String bookName) {
		BookName = bookName;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		Author = author;
	}

	public String getPage() {
		return Page;
	}

	public void setPage(String page) {
		Page = page;
	}

	public String getLine() {
		return Line;
	}

	public void setLine(String line) {
		Line = line;
	}
	
	
}
