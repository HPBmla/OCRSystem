<%--
    Document   : imageView
    Created on : Feb 1, 2016, 10:03:08 PM
    Author     : Bimla Madhavee
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="/OCRSystem/css/bootstrap.css" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet">
    <link href="css/otherStyles.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>


    <%@include file="navigationBar.jsp" %>
    <section class="bg-light-gray">
        <div class="container "> 
            <div class="row ">
                <div  id = "imageView" class="col-lg-8 center-block modal-content">
                    <form action="ImagePreprocess" method="post" class=" form" role="form" enctype="multipart/form-data">
                        <input type="submit" class= "btn btn-image pull-left" value="OCR">
                    </form>

                    <a href="home.jsp" class="btn btn-default bg-light-gray">Upload a new Image</a>

                </div>

            </div>
            <%
                String fname = (String) request.getAttribute("name");
      
            System.out.print("uploaded image"+fname);
                session.setAttribute("filename", fname);
                fname = fname + ".jpg";
                System.out.println("with extension"+fname);
                String path = "";
                if (request.getAttribute("name") != null) {
                    path = request.getAttribute("name").toString();
                }
            %>

            <div class="row">
                <div  id = "display" class="col-lg-8 center-block modal-content">
                <img src="uploadedImage/<%=fname%>" width="600" height="400"/>


                </div>

            </div>

        </div>


    </section>

    <%@include file="footer.jsp" %>
</html>
