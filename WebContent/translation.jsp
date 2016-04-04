
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
     <form action="TextTranslation" method="post" class="form" role="form" enctype="multipart/form-data">
        <div class="row">
            <div  id = "imageView" class="col-lg-8 center-block ">
                  
         <div class="btn-group"> <a class="btn btn-default dropdown-toggle btn-select2" data-toggle="dropdown" href="#">Select a Region <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#" data-langcode = "af" class="langclass">Afrikaans</a></li>
            <li><a href="#" data-langcode = "ak" class = "langclass">Akan</a></li>
            <li><a href="#" data-langcode = "sq" class="langclass">Albanian</a></li>
            <li><a href="#" data-langcode = "am " class = "langclass">Amharic</a></li>
            <li><a href="#" data-langcode = "ar" class="langclass">Arabic</a></li>
            <li><a href="#" data-langcode = "hy " class = "langclass">Armenian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Azerbaijani</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Basque</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Belarusian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Bemba</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Bengali</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Bihari</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Bork, bork, bork!</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Bosnian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Breton</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Bulgarian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Cambodian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Catalan</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Cherokee</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Chichewa</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Chinese (Simplified)</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Chinese (Traditional)</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Corsican</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Croatian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Czech</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Danish</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Dutch</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Elmer Fudd</a></li>
             <li><a href="#" data-langcode = "af" class="langclass">English</a></li>
            <li><a href="#" data-langcode = "ak" class = "langclass">Esperanto</a></li>
            <li><a href="#" data-langcode = "sq" class="langclass">Estonian</a></li>
            <li><a href="#" data-langcode = "am " class = "langclass">Ewe</a></li>
            <li><a href="#" data-langcode = "ar" class="langclass">Faroese</a></li>
            <li><a href="#" data-langcode = "hy " class = "langclass">Filipino</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Finnish</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">French</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Frisian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Ga</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Galician</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Georgian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">German</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Greek</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Guarani</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Gujarati</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Hacker</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Haitian Creole</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Hausa</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Hawaiian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Hebrew</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Hindi</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Hungarian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Icelandic</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Igbo</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Indonesian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Interlingua</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Irish</a></li>
            
            <li><a href="#" data-langcode = "sp" class="langclass">Italian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Japanese</a></li>
            <li><a href="#" data-langcode = "af" class="langclass">Javanese</a></li>
            <li><a href="#" data-langcode = "ak" class = "langclass">Kannada</a></li>
            <li><a href="#" data-langcode = "sq" class="langclass">Kazakh</a></li>
            <li><a href="#" data-langcode = "am " class = "langclass">Kinyarwanda</a></li>
            <li><a href="#" data-langcode = "ar" class="langclass">Kirundi</a></li>
            <li><a href="#" data-langcode = "hy " class = "langclass">Klingon</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Kongo</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Korean</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Krio (Sierra Leone)</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Kurdish</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Kurdish (Soranî)</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Kyrgyz</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Laothian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass"> Latin</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Latvian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Latvian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Cambodian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Catalan</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Cherokee</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Chichewa</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Chinese (Simplified)</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Chinese (Traditional)</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Corsican</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Croatian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Czech</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Danish</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Dutch</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Elmer Fudd</a></li>
             <li><a href="#" data-langcode = "af" class="langclass">English</a></li>
            <li><a href="#" data-langcode = "ak" class = "langclass">Esperanto</a></li>
            <li><a href="#" data-langcode = "sq" class="langclass">Estonian</a></li>
            <li><a href="#" data-langcode = "am " class = "langclass">Ewe</a></li>
            <li><a href="#" data-langcode = "ar" class="langclass">Faroese</a></li>
            <li><a href="#" data-langcode = "hy " class = "langclass">Filipino</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Finnish</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">French</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Frisian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Ga</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Galician</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Georgian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">German</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Greek</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Guarani</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Gujarati</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Hacker</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Haitian Creole</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Hausa</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Hawaiian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Hebrew</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Hindi</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Hungarian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Icelandic</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Igbo</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Indonesian</a></li>
            <li><a href="#" data-langcode = "sp" class="langclass">Interlingua</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Irish</a></li>
            
            <li><a href="#" data-langcode = "sp" class="langclass">Italian</a></li>
            <li><a href="#" data-langcode = "en" class = "langclass">Japanese</a></li>
        </ul>
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