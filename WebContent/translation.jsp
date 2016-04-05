
<%@page import="model.CountryCode"%>
<%@page import="java.util.Map"%>
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
<%!
CountryCode x = new CountryCode();
%>
<section class="bg-light-gray">
    <div class="container">
     <form action="TextTranslation" method="post" class="form" role="form" enctype="multipart/form-data">
        <div class="row">
            <div  id = "imageView" class="col-lg-8 center-block ">
                  
         <div class="btn-group"> 
         <select name="country">
      
            <% 
             
          Map<String,String> langCode = x.getCountryList();
           for( Object key :langCode.keySet() )
           {%>
           
           
           <option value="<%= langCode.get(key)%>"><%=(String)key %> </option>
        	  <% 
            
             
           }
            %>
            
            
      
        </select>
    </div>
        
              
                <input type="submit" class= "btn btn-image" value="Translate">
              
                <a href="#search" class="btn btn-default bg-light-gray">Search Text</a>

            </div>
        </div>
          </form>
        <div class="row">
            <div  id = "display" class="col-lg-8 center-block ">
            <%
            String extracted = (String) request.getAttribute("outputText");
            %>
                <textarea maxlength="100" class=" form-control " name="msg" rows="20" id="Extract-textarea" ><%=extracted %> </textarea>
                </div>
            
            

        </div>

    </div>
</section>
<%@include file="footer.jsp" %>