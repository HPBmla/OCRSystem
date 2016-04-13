package control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SearchText
 */
@WebServlet("/SearchText")
public class SearchText extends HttpServlet {
	
	public static int userIdentifictnNum = 1;
	 
	public static Map<Integer, String>  textSession = new HashMap<Integer, String>();
	private static final long serialVersionUID = 1L;
       
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession sessionId = request.getSession();
   // 	String key = sessionId.getId();
		
    sessionId.setAttribute(" id ", userIdentifictnNum);
    userIdentifictnNum = userIdentifictnNum + 1;
    	// HttpSession searchText = request.getSession();
        // String value = (String) searchText.getAttribute("search");
    
    	String output = request.getParameter("search");
    
    	textSession.put(userIdentifictnNum, output);
    	
    String keyVal = textSession.get(output);
    	
    	
	}

}
