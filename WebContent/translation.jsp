
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

<%@include file="navigationBar.jsp"%>
<%!
CountryCode x = new CountryCode();
%>
<section class="bg-light-gray">
	<div class="container ">

		<div class="row">
			<div id="imageView" class="col-lg-8 center-block modal-content">
				<form action="TextTranslation" method="post" class="form"
					role="form">

                             <div class="col-xs-6 selectContainer">
						<select class="form-control" name="country">
							<% 
                            Map<String,String> langCode = x.getCountryList();
                              for( Object key :langCode.keySet() )
                             {%>


							<option value="<%=(String)key%>">
								<%=langCode.get(key) %>
							</option>

							<% 
            
        	                              System.out.println((String)key);
                                 }
           
                                       String name =  request.getParameter("country");
                             System.out.println("selected val:"+name);
               %>

						</select> <input type="hidden" name="code" value="<%=name%>" />

					</div>
					<input type="submit" class="btn btn-image" name="Translate"
						value="Translate">








				</form>

			</div>
		</div>

		<div class="row">
			<div id="display" class="col-lg-8 center-block modal-content">


				<%
            String extracted = (String) request.getAttribute("outputText");
            %>
				<textarea maxlength="100" class=" form-control " name="msg"
					rows="20" id="Extract-textarea"><%=extracted %> </textarea>
			</div>



		</div>

	</div>
</section>
<%@include file="footer.jsp"%>