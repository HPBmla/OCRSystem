/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import model.imageUpload;
import net.sourceforge.tess4j.ITesseract;
import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.TesseractException;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author User
 */
@WebServlet(name = "UploadServlet", urlPatterns = {"/UploadServlet"})
@MultipartConfig
public class UploadServlet extends HttpServlet {
	


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
  

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    
    	
      /*  System.out.println("doPost1");
        
    	
       // File imageFile = new File("C:\\awantha\\temp\\gray.jpg");
  	File imageFile = new File("C:\\Users\\User\\Documents\\GitHub\\Linguist\\web\\uploadedImage\\adaptive.jpg");
        ITesseract instance = new Tesseract();  // JNA Interface Mapping
        instance.setDatapath("G:\\bimla\\tessdata");
//        instance.setDatapath("C:\\Users\\User\\Documents\\GitHub\\Linguist");
        
        
        String result="";
		try {
			result = instance.doOCR(imageFile);
			 System.out.println("\n>>>>>>>>>>> result:: "+result);
		} catch (TesseractException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>"+result+"</body></html>");*/
    	
    	
    	 PrintWriter out = response.getWriter();

         Part uploadedImage = request.getPart("image");
        InputStream filecontent = uploadedImage.getInputStream();
         imageUpload image = new imageUpload();
     
         String submittdFileNme = image.imageInputstream(filecontent, "jpg");
         request.setAttribute("name", submittdFileNme);
         if (submittdFileNme == null) {
            System.out.println("<html><body onload=\"alert('Image uploaded is not successful')\"></body></html>");
         } else {
             System.out.println("<html><body onload=\"alert('Image uploaded successful')\"></body></html>");
         }

         //returning name of the image to another jsp page
         RequestDispatcher rd = request.getRequestDispatcher("/imageView.jsp");
         rd.forward(request, response);

    }

}
