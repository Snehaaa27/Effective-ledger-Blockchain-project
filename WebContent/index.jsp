<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>BLOCK CHAIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Medico Club Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- portfolio -->	
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="all">
<!-- //portfolio -->	
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 

<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<![endif]-->
</head>
<body>
	<!-- banner -->
	<div class="banner jarallax">
		<div class="agileinfo-dot">
			<div class="header-top">
				<div class="header">
					<div class="header-top-info">
						<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<div class="agileits-logo">
									<h1><a href="index.html">Medico <span>Club</span></a></h1>
								</div>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
								<nav>
									<ul class="nav navbar-nav">
										<li class="active"><a href="index.jsp">Home</a></li>
										<li><a href="Auth_user_H.jsp" >Hospital</a></li>
										<li><a href="Auth_user.jsp" >Patient</a></li>
										<li><a href="Auth_user_D.jsp" >Doctor</a></li>
										<li class="active"><a href="Auth_user_D.jsp" >Admin</a></li>
									</ul>
								</nav>
							</div>
							<!-- /.navbar-collapse -->
						</nav>
					</div>
				</div>
			</div>
			<div class="w3layouts-banner-info">
				<div class="container">
					<div class="w3layouts-banner-slider">
						<div class="w3layouts-banner-top-slider">
							<div class="slider">
								<div class="callbacks_container">
									<ul class="rslides callbacks callbacks1" id="slider4">
										<li>
											<div class="w3ls-text">
												<div class="w3ls-text-info">
													<h2>Healthy<span>Weekend</span><span>Check</span>Up</h2>
												</div>
											</div>
										</li>
										<li>
											<div class="w3ls-text">
												<div class="w3ls-text-info">
													<h2>Surgeons<span>You</span><span>Can</span>Trust</h2>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="clearfix"> </div>
								<script src="js/responsiveslides.min.js"></script>
								<script>
									// You can also use "$(window).load(function() {"
									$(function () {
									  // Slideshow 4
									  $("#slider4").responsiveSlides({
										auto: true,
										pager:true,
										nav:true,
										speed: 500,
										namespace: "callbacks",
										before: function () {
										  $('.events').append("<li>before event fired.</li>");
										},
										after: function () {
										  $('.events').append("<li>after event fired.</li>");
										}
									  });
								
									});
								 </script>
								<!--banner Slider starts Here-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- welcome -->
	<div class="welcome" id="about">
		<div class="container">
			<div class="agileits-heading">
				<h2>About Us</h2> 
			</div>
			<div class="agileinfo-about-info">
				<h4>Morbi sed volutpat tellus, nec fringilla orci. Vestibulum ultrices dolor in urna laoreet ultrices quis in arcu.</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra auctor dolor, id egestas felis tristique vel. Donec malesuada, lorem sed vulputate tincidunt, nulla quam pulvinar mi, blandit placerat odio neque quis risus. Nullam ultricies erat non lectus aliquam, eu finibus neque semper. Morbi viverra, neque sit amet pretium blandit, dui mauris lacinia metus, a rhoncus erat ipsum vitae augue. Morbi laoreetvenenatis nulla, et venenatis purus scelerisque id. Vestibulum non facilisis lectus, quis accumsan mi.</p>
			</div>
			<div class="welcome-agileinfo">
				<div class="col-md-6 col-sm-6 col-xs-6 welcome-grids">
					<div class="view view-w3-agile">
						<img src="images/4.jpg" alt="" class="img-responsive" />
						<div class="agileits-w3layouts-mask">
							<h4>Lorem ipsum</h4>
							<p>Nullam ut nibh dapibus elit placerat ullamcorper</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6 welcome-grids">
					<div class="view view-w3-agile">
						<img src="images/5.jpg" alt="" class="img-responsive" />
						<div class="agileits-w3layouts-mask">
							<h4>Praesent egestas</h4>
							<p>Nullam ut nibh dapibus elit placerat ullamcorper</p>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //welcome -->
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="agileits-heading">
				<h3>Our Services</h3> 
			</div>
			<div class="specialty-grids-top">
				<div class="col-md-4 service-box" style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<figure class="icon">
						<i class="fa fa-ambulance" aria-hidden="true"></i>
					</figure>
					<h5>Nullam viverra</h5>
					<p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra.</p>
				</div>
				<div class="col-md-4 service-box">
					<figure class="icon">
						<i class="fa fa-wheelchair" aria-hidden="true"></i>
					</figure>
					<h5>Praesent egestas</h5>
					<p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra.</p>
				</div>
				<div class="col-md-4 service-box">
					<figure class="icon">
						<i class="fa fa-user-md" aria-hidden="true"></i>					
					</figure>
					<h5>Fusce vestibulum</h5>
					<p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- portfolio -->
	<div class="portfolio" id="gallery">
		<div class="container">
			<div class="agileits-heading">
				<h3>Our Gallery</h3> 
			</div>
			<ul class="simplefilter w3layouts agileits">
				<li class="active w3layouts agileits" data-filter="all">All</li>
				<li class="w3layouts agileits" data-filter="1">Category1</li>
				<li class="w3layouts agileits" data-filter="2">Category2</li>
				<li class="w3layouts agileits" data-filter="3">Category3</li>
				<li class="w3layouts agileits" data-filter="4">Category4</li>
				<li class="w3layouts agileits" data-filter="5">Category5</li>
			</ul>

			<div class="filtr-container w3layouts agileits">

				<div class="filtr-item w3layouts agileits portfolio-t" data-category="1, 5" data-sort="Busy streets">
					<a href="images/p1.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p1.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>

				<div class="filtr-item w3layouts agileits" data-category="2, 5" data-sort="Luminous night">
					<a href="images/p2.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p2.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>

				<div class="filtr-item w3layouts agileits" data-category="1, 4" data-sort="City wonders">
					<a href="images/p3.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p3.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>

				<div class="filtr-item w3layouts agileits" data-category="3" data-sort="In production">
					<a href="images/p4.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p4.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>

				<div class="filtr-item w3layouts agileits" data-category="3, 4" data-sort="Industrial site">
					<a href="images/p5.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p5.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>

				<div class="filtr-item w3layouts agileits" data-category="2, 4" data-sort="Peaceful lake">
					<a href="images/p6.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p6.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>

				<div class="filtr-item w3layouts agileits" data-category="1, 5" data-sort="City lights">
					<a href="images/p7.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p7.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>

				<div class="filtr-item w3layouts agileits" data-category="2, 4" data-sort="Dreamhouse">
					<a href="images/p8.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p8.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>

				<div class="filtr-item w3layouts agileits" data-category="2, 4" data-sort="Dreamhouse">
					<a href="images/p1.jpg" class="b-link-stripe w3layouts agileits b-animate-go thickbox">
						<figure>
							<img src="images/p1.jpg" class="img-responsive w3layouts agileits" alt="W3layouts Agileits">
							<figcaption>
								<h3>Medico <span>Club</span></h3>
							</figcaption>
						</figure>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //portfolio -->
	<!-- team -->
	<div class="jarallax team" id="team">
		<div class="team-dot">
			<div class="container">
				<div class="agileits-heading team-heading">
					<h3>Our Team</h3>
				</div>
				<div class="agileits-team-grids">
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="images/t1.jpg" alt="">
							<div class="team-caption"> 
								<h4>Peter Parker</h4>
								<p>Fusce laoreet</p>
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="images/t2.jpg" alt="">
							<div class="team-caption"> 
								<h4>Johan Botha</h4>
								<p>Fusce laoreet</p>
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="images/t3.jpg" alt="">
							<div class="team-caption"> 
								<h4>Justo Congue</h4>
								<p>Fusce laoreet</p>
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="images/t4.jpg" alt="">
							<div class="team-caption"> 
								<h4>Steven Wilson</h4>
								<p>Fusce laoreet</p>
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //team -->
	<!-- events -->
	<div class="w3-events" id="events"> 
		<div class="container">
			<div class="agileits-heading">
				<h3>Latest Events</h3>
			</div>
			<div class="events-info">
				<div class="col-md-6 event-grids">
					<div class="w3layouts-text">
						<h4>10<span>Nov</span></h4>
						<h6><a href="#" data-toggle="modal" data-target="#myModal">Nulla tellus ex, dapibus quis</a></h6>
						<div class="clearfix"> </div>
					</div>
					<p>Kasertas lertyasea deeraeser miasera lertasa ritise doloert ferdas caplicabo nerafaes asety u lasec vaserat. nikertyade asetkertyptaiades goertayse.nikertyade asetkertyptaiades goertayse</p>
				</div>
				<div class="col-md-6 event-grids">
					<div class="w3layouts-text">
						<h4>20<span>Dec</span></h4>
						<h6><a href="#" data-toggle="modal" data-target="#myModal">Mauris vehicula vel augue non</a></h6>
						<div class="clearfix"> </div>
					</div>
					<p>Kasertas lertyasea deeraeser miasera lertasa ritise doloert ferdas caplicabo nerafaes asety u lasec vaserat. nikertyade asetkertyptaiades goertayse.nikertyade asetkertyptaiades goertayse</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div> 
	</div> 
	<!-- //events -->
	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					<h4 class="modal-title">Medico <span>Club</span></h4>
				</div> 
				<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/1.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- newsletter -->
	<div class="newsletter jarallax">
		<div class="w3-agile-newsletter">
			<div class="container">
				<div class="agileits-heading team-heading">
					<h3>For More Updates</h3>
				</div>
				<div class="newsletter-grids">
					<div class="newsletter-left">
						<p>Subscribe to our email newsletter to receive updates</p>
					</div>
					<div class="newsletter-right">
						<form action="#" method="post">
							<input type="text" placeholder="Subscribe" name="Subscribe" required="">
							<button class="btn1"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- contact -->
	<div class="contact" id="mail">
		<div class="container">
			<div class="agileits-heading">
				<h3>Contact</h3>
			</div>
			<div class="w3layouts-contact-grids">
				<div class="col-sm-3 w3layouts-contact-grid">
					<i class="fa fa-map" aria-hidden="true"></i>
					<h5>Address</h5>
					<p>123 Fourth Avenue, Seattle Wa 98104, Los Angeles</p>
				</div>
				<div class="col-sm-3 w3layouts-contact-grid">
					<i class="fa fa-phone" aria-hidden="true"></i>
					<h5>Phone/Fax</h5>
					<p>+123 456 7890</p>
					<p>+134 567 8901</p>
				</div>
				<div class="col-sm-3 w3layouts-contact-grid">
					<i class="fa fa-envelope" aria-hidden="true"></i>
					<h5>Email</h5>
					<p><a href="mailto:info@example.com"> mail@example.com</a></p>
				</div>
				<div class="col-sm-3 w3layouts-contact-grid">
					<i class="fa fa-share-alt" aria-hidden="true"></i>
					<h5>Social</h5>
					<p>Touch With Us</p>
					<div class="agileinfo-social-grids">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-rss"></i></a></li>
							<li><a href="#"><i class="fa fa-vk"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //contact -->
	<!-- contact-info -->
	<div class="contact-info jarallax">
		<div class="contact-info-grids">
			<div class="container">
				<div class="agileits-heading team-heading">
					<h3>Send a Message</h3>
				</div>
				<div class="contact-form">
					<form action="#" method="post">
						<input type="text" placeholder="Name" required="">
						<input type="email" placeholder="Email" required="">
						<input type="text" placeholder="Telephone" required="">
						<textarea placeholder="Message" required=""></textarea>
						<input type="submit" value="SUBMIT">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //contact-info -->
	<!-- footer -->
	<footer>
		<div class="container">
			<div class="copyright">
				<p>� 2017 Medico Club. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		</div>
	</footer>
	<!-- //footer -->
	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>
	<script src="js/responsiveslides.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- Tabs-JavaScript -->
	<script src="js/jquery.filterizr.js"></script>
		<script src="js/controls.js"></script>
		<script type="text/javascript">
			$(function() {
				$('.filtr-container').filterizr();
			});
		</script>
	<!-- //Tabs-JavaScript -->
	<!-- PopUp-Box-JavaScript -->
		<script src="js/jquery.chocolat.js"></script>
		<script type="text/javascript">
			$(function() {
				$('.filtr-item a').Chocolat();
			});
		</script>
	<!-- //PopUp-Box-JavaScript -->
</body>	
</html>