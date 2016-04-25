<%--
    Document   : home
    Created on : Jan 13, 2016, 8:58:47 AM
    Author     : Bimla Madhavee
--%>


<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/otherStyle.css" rel="stylesheet">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>





<%@include file="navigationBar.jsp"%>


<header id="page-top">
	<div class="container">
		<div class="intro-text">

			<a href="#ocr" class="page-scroll btn btn-xl">Try Free</a>

		</div>
	</div>
</header>
<!-------------About us------------------------------------------------>
<section id="about" class=" bg-light-gray">
	<div id="servicePortion" class=" container modal-content">

		<div class="row">
			<div class="col-lg-12 text-center">
				<div id="headingService">
					<h2 class="textTitle">Services</h2>
				</div>
			</div>
		</div>
		<div id="block" class="row">
			<h3 class="section-subheading textChanged">
				Our aim is to expand the community that uses Optical Character Regognition
				for documents<br /> People who deal with documents and who have language
				barriers in communicating with other people are facilitated by this website.
				In the past although people who travel around the world had to communicate with
				poeple in different countries using sign languages, with the development of
				the technology, within few seconds they can search what they want without 
				waiting until somebody understand what they are trying to say
				
			</h3>
		</div>



		<div id="block2" class="row ">
			<div class="col-md-4">
				<h4 class="serviceTitle">Image Upload</h4>
				<p class="textChanged">Images can be uploaded by the users
					of any format. Namely JPG, PNG, TIFF etc can be uploaded</p>

			</div>
			<div class="col-md-4">
				<h4 class="serviceTitle">Text Extraction</h4>
				<p class="textChanged">Text extraction is provided by using
					Tesseract API where Optical Character Recognition is supported.</p>
			</div>
			<div class="col-md-4">
				<h4 class="serviceTitle">Text Translation</h4>
				<p class="textChanged">User can translate the extratected
					text into another language using Google Translator.</p>
			</div>
		</div>
		<!--  </div> -->
	</div>
</section>
<section id="Community" class="bg-light-gray">

	<div id="servicePortion" class="container modal-content">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div id="headingService">
					<h2 class="communityTitle">Community</h2>
				</div>


			</div>
		</div>
		<div id="users" class="row">
			<div class="col-sm-4">

				<img src="img/traveler.jpg" class=" img-responsive img-rounded"
					alt="travelers">
				<h4 class="well-sm">Traveller</h4>
				
					<p class="text-muted">Travelers who travel around the world
					are facilitated.They can upload sign board's road's images
					so that text inside images are extracted 
					</p>
				

			</div>
			<div id="users" class="col-sm-4">

				<img src="img/student.jpg" class=" img-responsive img-rounded"
					alt="travelers">
				<h4 class="well-sm">Student</h4>

				<p class="text-muted">When taking down notes related to studies
				they can take an image of the handwritten notes and create 
				digital notes in Microsoft Word etc</p>




			</div>
			<div id="users" class="col-sm-4">

				<img src="img/officer.png" class=" img-responsive img-rounded"
					alt="travelers">
				<h4 class="well-sm">Officers</h4>

				<p class="text-muted">Officers who deal with documents are 
				also facilitated. they can produce digital documents without
				maintaining traditional files</p>




			</div>

		</div>
	</div>
</section>
<section id="ocr" class=" bg-light-gray ">
	<div id="uploadSection" class="container modal-content ">


		<form action="UploadServlet" method="post" class=" form" role="form"
			enctype="multipart/form-data">
			<div id="head" class="row ">
				<h4 class="text-center textTitle">Upload an Image to be
					extracted</h4>
			</div>
			<div id=" imageDisplay " class="row">
				<div class=" col-md-6">


					<span class="btn btn-image  btn-file pull-right">Upload <input
						type="file" name="image" id="extractimage">

					</span>


				</div>


				<div id=" imageDisplay " class=" col-md-6">



					<input type="submit" class="btn btn-image pull-left">




				</div>
			</div>
		</form>
		
	</div>

</section>

<section id="suggest" class="bg-light-gray">
	<div class="container modal-content">
		<div id="servicePortion" class="center-block">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div id="headingService">
						<h2 class="textTitle">Send Your Suggestions</h2>
					</div>
				</div>
			</div>

			<form action="SendEmail" method="post" class=" form" role="form">

				<div class="row">
					<div class="col-md-8 center-block">
						<p class="pull-left textTitle">Email Address</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8">
						<input class="form-control" type="text" name="email" value="" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 center-block">
						<p class="pull-left textTitle">Username</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8">
						<input class="form-control" type="text" name="username" value="" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 center-block">
						<p class="pull-left textTitle">Password</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8">
						<input class="form-control" type="text" name="password" value="" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 center-block">
						<p class="pull-left textTitle">Suggestions related to the
							website</p>
					</div>
				</div>

				<div class="col-md-8">

					<textarea maxlength="50" class=" form-control " name="msg" rows="5"
						id="Extract-textarea"> </textarea>
				</div>

				<div class="row">
					<div id="imageView" class="col-md-8 ">
						<input type="submit" class="btn btn-image pull-left"> <a
							id="btn_padding" href="#translate"
							class="btn btn-default pull-left">Cancel</a>
					</div>
				</div>
			</form>

		</div>
	</div>
</section>



<%@include file="footer.jsp"%>