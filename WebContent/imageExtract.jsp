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
    <div class="container">
        <div class="row">
            <div  id = "imageView" class="col-lg-8 center-block ">

                <a href="#download" class="btn btn-image">Download</a>
                <a href="translation.jsp" class="btn btn-image">Translate</a>
                <a href="#search" class="btn btn-default bg-light-gray">Search Text</a>

            </div>
        </div>
        <div class="row">
            <div  id = "display" class="col-lg-8 center-block ">
            <%
            String extracted = (String) request.getAttribute("extractedText");
            session.setAttribute("text", extracted);
            
            %>
                <textarea maxlength="200" class=" form-control " name="msg" rows="20" id="Extract-textarea" ><%=extracted %> </textarea>

            </div>

        </div>

    </div>

</section>
<%@include file="footer.jsp" %>