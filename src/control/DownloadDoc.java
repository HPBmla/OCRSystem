package control;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DownloadDoc
 */
@WebServlet("/DownloadDoc")
public class DownloadDoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadDoc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession extractedText = request.getSession();
        String extracted = (String) extractedText.getAttribute("text");
        
		response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
		response.setHeader("Content-Disposition",
		"attachment;filename=downloadfilename.doc");
		response.setContentLength((int) extracted.length());
		
		System.out.println("get text"+extracted);
		StringBuffer sb = new StringBuffer(""+extracted);
		InputStream in = new ByteArrayInputStream(sb.toString().getBytes("UTF-8"));
		ServletOutputStream out = response.getOutputStream();

		byte[] outputByte = new byte[4096];
		//copy binary contect to output stream
		while(in.read(outputByte, 0, 4096) != -1)
		{
			out.write(outputByte, 0, 4096);
		}
		in.close();
		out.flush();
		out.close();
		
	
	}

}
