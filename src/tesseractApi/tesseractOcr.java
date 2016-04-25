package tesseractApi;

import java.io.File;

import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.TesseractException;

public class tesseractOcr {
	
	public String performOcr(File image) {

        String extractedTxt = null;
        try {
            Tesseract tess = new Tesseract();
            tess.setDatapath("C:\\bimla\\Dev\\java\\OCRSystem\\tessdata");
            extractedTxt = tess.doOCR(image);
            if (extractedTxt.isEmpty()) {
                System.out.println("Couldn't extract the text");
            } else {
                System.out.println("Successfully extracted");
            }

        } catch (TesseractException ex) {
            System.err.println(ex.getMessage());
        }
        return extractedTxt;
    }

}
