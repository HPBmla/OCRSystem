package model;

import java.io.File;

import net.sourceforge.tess4j.ITesseract;
import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.Tesseract1;
import net.sourceforge.tess4j.TesseractException;

public class Test {
//
//		
//	  static {
//	    try {
////	    	System.out.println("11111");
////	    	System.load("C:\\awantha\\temp\\liblept168.dll");
////	    	System.load("C:\\awantha\\temp\\libtesseract302.dll");
//	    } catch (UnsatisfiedLinkError e) {
//	      System.err.println("Native code library failed to load.\n" + e);
//	      e.printStackTrace();
//	      System.exit(1);
//	    }
//	  }
//
//	  public static void main(String argv[]) 
//	  {
//		  
//		  
////		  
////		  File imageFile = new File("C:\\awantha\\temp\\gray.jpg");
////		  Tesseract instance = Tesseract.getInstance();
////
////		  //In case you don't have your own tessdata, let it also be extracted for you
////		  File tessDataFolder = LoadLibs.extractTessResources("tessdata");
////
////		  //Set the tessdata path
////		  instance.setDatapath(tessDataFolder.getAbsolutePath());
////
////		      try {
////		          String result = instance.doOCR(imageFile);
////		          System.out.println(result);
////		      } catch (TesseractException e) {
////		          System.err.println(e.getMessage());
////		      }
//		  
//		  
//		  
//		  
//		  
//		  
//		  
//		  
//		  try {
//	        File imageFile = new File("C:\\awantha\\temp\\gray.jpg");
//	        System.out.println(">>");
//	        ITesseract instance = new Tesseract1(); // JNA Direct Mapping
////	        ITesseract instance = new Tesseract();  // JNA Interface Mapping
//	        System.out.println(">>>>>");
//
//	        String result = instance.doOCR(imageFile);
//	        System.out.println(result);
//		  } catch (Exception e) {
//	        	System.out.println("<<");
//	            System.err.println(e.getMessage());
//	            e.printStackTrace();
//	        }  
//	  }
//
	
	/*public static void main(String[] args) throws TesseractException {
        System.out.println(">>>");
        File imageFile = new File("C:\\awantha\\temp\\gray.jpg");
//        File imageFile = new File("C:\\awantha\\temp\\gray.jpg");
//        ITesseract instance = new Tesseract1(); // JNA Direct Mapping
        ITesseract instance = new Tesseract();  // JNA Interface Mapping
        instance.setDatapath("C:\\awantha\\Work\\temp");
        System.out.println(">>>>>");
        String result = instance.doOCR(imageFile);
        System.out.println(">>>result"+result);
        
	}*/
}
