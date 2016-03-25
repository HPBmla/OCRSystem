
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
                  <div class="btn-group"> <a class="btn btn-default dropdown-toggle btn-select" data-toggle="dropdown" href="#">Select a Country <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                   <li><a href="#">United States</a></li>
                 <li><a href="#">Canada</a></li>
               <li class="divider"></li>
             <li><a href="#"><span class="glyphicon glyphicon-star"></span> Other</a></li>
          </ul>
        </div>
                <div class="btn-group"> <a class="btn btn-default dropdown-toggle btn-select2" data-toggle="dropdown" href="#">Select a Region <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">California</a></li>
                <li><a href="#">New York</a></li>
                <li><a href="#">Massachusetts</a></li>
                <li class="divider"></li>
                <li><a href="#">Quebec</a>
                </li><li><a href="#">Ontario</a>
                </li><li><a href="#">British Columbia</a>
                </li>
            </ul>
        </div>
                <a href="#translate" class="btn btn-image">Translate</a>
                <a href="#search" class="btn btn-default bg-light-gray">Search Text</a>

            </div>
        </div>
        <div class="row">
            <div  id = "display" class="col-lg-8 center-block ">
            <%
            String extracted = (String) request.getAttribute("extractedText");
            %>
                <textarea maxlength="100" class=" form-control " name="msg" rows="20" id="Extract-textarea" ><%=extracted %> </textarea>
                </div>
            
            

        </div>

    </div>
</section>
<%@include file="footer.jsp" %>