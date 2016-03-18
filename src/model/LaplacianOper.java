package model;

import java.io.File;

import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.imgproc.Imgproc;

public class LaplacianOper implements Preprocessable {

	public File imagePreprocessing(String imageFile, String extnsn) {
		File edgeDetected = null;
		int kernelSize = 9;
		Mat sourceImage = Imgcodecs.imread("C:\\bimla\\Dev\\java\\LinguistProj\\WebContent\\uploadedImage\\"+imageFile, Imgcodecs.CV_LOAD_IMAGE_GRAYSCALE);
		Mat desImage = new Mat(sourceImage.rows(),sourceImage.cols(),sourceImage.type());
		Mat kernelValue = new Mat(kernelSize,kernelSize,CvType.CV_32F)
		{
			{
			
			put(0,0,0);
			put(0,1,-1);
			put(0,2,0);
			
			put(1,0,-1);
			put(1,1,4);
			put(1,2,-1);
			
			put(2,0,0);
			put(2,1,-1);
			put(2,2,0);
			
			
		}
	};
	
	Imgproc.filter2D(sourceImage, desImage, -1, kernelValue);
	String imagePath = "C:\\bimla\\Dev\\java\\LinguistProj\\WebContent\\uploadedImage\\edge.jpg";
	edgeDetected = new File(imagePath);
	Imgcodecs.imwrite(imagePath, desImage);
	
		
		
		
		
		return edgeDetected;
	}
	
	

}
