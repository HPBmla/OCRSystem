package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Email;

/**
 * Servlet implementation class SendEmail
 */
@WebServlet("/SendEmail")
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	/*	String username = request.getParameter("username");
		String password = request.getParameter("password");
		String emailFrom = request.getParameter("email");
		String message = request.getParameter("msg");
		System.out.println("username"+username);
		System.out.println("password"+password);
		System.out.println("email"+emailFrom);
		System.out.println("message"+message);
		Email suggestion = new Email();
	boolean flag = 	suggestion.sendMail(emailFrom, message, username, password);
		if(flag == true)
		{
			System.out.println("mail sent");
		}
		else
			System.out.println("Not sent");*/
		
	}

}
