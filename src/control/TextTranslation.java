package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.translator.api.TranslatorApi;

/**
 * Servlet implementation class TextTranslation
 */
@WebServlet("/TextTranslation")
public class TextTranslation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TextTranslation() {
        super();
        // TODO Auto-generated constructor stub
    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		String language = "ES";
		HttpSession extractedText = request.getSession();
        String imageName = (String) extractedText.getAttribute("text");
        System.out.println("this is so stupid");
        System.out.println("This is "+imageName);
        TranslatorApi translation = new TranslatorApi();
        
        String outputText =   translation.getTranslate(imageName, language);
        System.out.println("Second"+outputText);
        request.setAttribute("outputText", outputText);
        RequestDispatcher sndValue = request.getRequestDispatcher("/translation.jsp");
        sndValue.forward(request, response);
          
        
		
		
	}

}
