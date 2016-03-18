package control;

import java.io.File;
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

import tesseractApi.tesseractOcr;
import model.AdaptiveThresholdClass;
import model.LaplacianOper;
import model.grayscaleClass;
import model.imageUpload;

/**
 * Servlet implementation class ImagePreprocess
 */
@WebServlet("/ImagePreprocess")
public class ImagePreprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImagePreprocess() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
        HttpSession fileNameSession = request.getSession();
        String imageName = (String) fileNameSession.getAttribute("filename");
        grayscaleClass grayImage = new grayscaleClass();
        imageUpload img = new imageUpload();
   //     String extn = img.getExtensn(imageName);
        File fileNme = new File(imageName);
        File outputGrayImage = grayImage.imagePreprocessing(imageName+"."+"jpg", "jpg");
        out.println(outputGrayImage);
        String grayImageName = outputGrayImage.getName();
       // sharpeningClass sharpImage = new sharpeningClass();
      //  File afterSharpen = sharpImage.imagePreprocessing(grayImageName, "jpg");
       // String sharpnName = afterSharpen.getName();
      //  out.print(afterSharpen);
       /* LaplacianOper edgeOperator = new LaplacianOper();
        File edgeImage = edgeOperator.imagePreprocessing(grayImageName, "jpg");
        String lapImageName = edgeImage.getName();*/
        AdaptiveThresholdClass adptive = new AdaptiveThresholdClass();
        File finlImage = adptive.imagePreprocessing(grayImageName, "jpg");
       
        tesseractOcr tessInstnce = new tesseractOcr();
        String text = tessInstnce.performOcr(finlImage);
        if (text == null) {
            out.println("null");
        } else {
            out.println(text);
            TranslatorApi googleApi = new TranslatorApi();
          // String extractedText = googleApi.gettranslation();
          // System.out.println(extractedText);
            request.setAttribute("extractedText", text);
            RequestDispatcher sndValue = request.getRequestDispatcher("/imageExtract.jsp");
            sndValue.forward(request, response);
            
            
        }
	}

}
