<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
	import="com.dao.productDAO"
	import="java.sql.*"
	import="com.model.*"
%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
	<!-- CSS -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/main.css">
	<!-- JS -->
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>

	
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
	
	
</head>


<body>
	<jsp:include page="header.jsp"></jsp:include>
	

	<!-- start banner Area -->
	<div id="slides" class="carousel slide" data-ride="carousel">
	<ul class="carousel-indicators">
		<li data-target="#slides" data-slide-to="0" class="active"></li>
		<li data-target="#slides" data-slide-to="1"></li>
		<li data-target="#slides" data-slide-to="2"></li>
	</ul>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="img/background.png">
			<div class="carousel-caption">
				<h1 class="display-2">Bootstrap</h1>
				<h3>Complete Website Layout</h3>
				<button type="button" class="btn btn-outline-light btn-lg">VIEW DEMO</button>
				<button type="button" class="btn btn-primary btn-lg">Get Started</button>
			</div>
		</div>	
		<div class="carousel-item">
			<img src="img/background-2.png">
		</div>
		<div class="carousel-item">
			<img src="img/background.jpg">
		</div>	
	</div>
	</div>

	<!-- End banner Area -->

	<!-- start features Area -->
	<section class="features-area section_gap">
		<div class="container">
			<div class="row features-inner">
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon1.png" alt="">
						</div>
						<h6>Free Delivery</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon2.png" alt="">
						</div>
						<h6>Return Policy</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon3.png" alt="">
						</div>
						<h6>24/7 Support</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon4.png" alt="">
						</div>
						<h6>Secure Payment</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end features Area -->

	<!-- Product card Area -->
	<section class="section_gap">
	<div class="container padding">
		<div class="row padding">
				<%	
					ResultSet rs=productDAO.displayLast();
					
					while(rs.next())
					{
						String image=rs.getString("image");
						
						out.print("<div class=\"col-lg-3 col-md-6 padding\">");
							out.print("<div class=\"card h-100\">");
								out.print("<img class=\"card-img-top\" src=\""+ rs.getString("image") +"\">");
									out.print("<div class=\"card-body d-flex flex-column\">");
										out.print("<h4 class=\"card-title\">"+rs.getString("name")+"</h4>");
										
										
										out.print("<form action=\"product\">");
											out.print("<input type=\"hidden\" value=\""+rs.getInt("id")+"\" name=\"p.id\">");
											out.print("<div class=\"align-self-end\">");
											out.print("<input type=\"submit\" class=\"btn btn-outline-secondary btn-lg btn-block mt-auto  \" value=\"Learn More\">");
											out.print("</div>");
										out.print("</form>");
									out.print("</div>");
								out.print("</div>");
							out.print("</div>");
						
					}		
				%>	
				
		</div>
	</div>
<!-- 
	<s:url action="product" var="url" >
    	<s:param name="p.id"><% %>></s:param>
	</s:url>
	<a href="<s:property value="#url" />" >Product-1</a>
	
	<a href="<s:property value="#urla" />" >Product-2</a>
	
	<a href="historyOrder.jsp" >history</a>
	
	 -->	
	</section>				
	<!-- end product card Area -->	
		
	
	<!-- Start footer Area -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- End footer Area -->
					
			


</body>
</html>