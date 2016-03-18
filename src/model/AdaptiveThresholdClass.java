package model;

import java.io.File;

import org.opencv.core.Mat;
import org.opencv.imgcodecs.Imgcodecs;

import static org.opencv.imgcodecs.Imgcodecs.IMREAD_GRAYSCALE;
import static org.opencv.imgcodecs.Imgcodecs.imread;
import static org.opencv.imgproc.Imgproc.ADAPTIVE_THRESH_MEAN_C;
import static org.opencv.imgproc.Imgproc.THRESH_BINARY;
import static org.opencv.imgproc.Imgproc.adaptiveThreshold;

public class AdaptiveThresholdClass implements Preprocessable{
	public File imagePreprocessing(String imageFile, String extnsn) {
        //  System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
        Mat graySource = imread("C:\\bimla\\Dev\\java\\LinguistProj\\WebContent\\uploadedImage\\" + imageFile, IMREAD_GRAYSCALE);
        Mat destintn = new Mat(graySource.rows(), graySource.cols(), graySource.type());

        adaptiveThreshold(graySource, destintn, 255, ADAPTIVE_THRESH_MEAN_C, THRESH_BINARY, 15, 40);
        Imgcodecs.imwrite("C:\\bimla\\Dev\\java\\LinguistProj\\WebContent\\uploadedImage\\adaptive.jpg", destintn);
        File outputImage = new File("C:\\bimla\\Dev\\java\\LinguistProj\\WebContent\\uploadedImage\\adaptive.jpg");
        return outputImage;
    }

	

}
