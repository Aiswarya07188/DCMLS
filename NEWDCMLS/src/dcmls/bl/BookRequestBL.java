package dcmls.bl;

import java.util.ArrayList;

import dcmls.dl.*;

import dcmls.dto.*;


public class BookRequestBL {
		
	public static int addRequest(BookRequestDTO bookrequest)
		{
			int result=0;
			try
			{
				
				result=BookRequestDL.addRequest(bookrequest);
			}
			catch(Exception e)
			{
				result=-1;
				System.out.println("**error** bookrequestbl:cannot add data to the bl"+e.getMessage());
			}
			return result;
		}
	public static ArrayList<BookRequestDTO> getRequests(String userid)
	{
		ArrayList<BookRequestDTO> requests=null;
		
		
		try
		{
		requests=BookRequestDL.getRequests(userid);
			
			
		}
		catch(Exception e)
		{
			System.out.println("**ERROR** CaseBL:getBooks"+e.getMessage());
		}
		
	
		return requests;
	}

}