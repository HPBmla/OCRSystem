<%--
    Document   : imageExtract
    Created on : Feb 1, 2016, 10:02:49 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/otherStyles.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/uploadimg.js"></script>

<%@include file="navigationBar.jsp" %>
<section class="bg-light-gray">
    <div class="container ">
        <div class="row">
            <div  id = "imageView" class="col-lg-8 center-block modal-content">

                <form action="DownloadDoc" method="post" class=" form" role="form" enctype="multipart/form-data">
                        <input type="submit" class= "btn btn-image pull-left" value="Download">
                    </form>
                
                <a href="translation.jsp" class="btn btn-image">Translate</a>
                
              
            </div>
        </div>
        <div class="row">
            <div  id = "display" class="col-lg-8 center-block modal-content">
            <%
            String extracted = "Image will be displayed";
             extracted = (String) request.getAttribute("extractedText");
            session.setAttribute("text", extracted);
            
            %>
                <textarea id="Extract-textarea" rows="20" cols="50" class=" form-control " name="msg"  ><%=extracted %> </textarea>

            </div>

        </div>

    </div>

</section>
<%@include file="footer.jsp" %>