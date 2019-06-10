<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
	<!-- JS -->
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>


	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
	<!-- CSS -->

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="css/main-2.css">
</head>
<body>
	<jsp:include page="header.jsp"/>

	<!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Checkout</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="#">Checkout</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

	<!--================Checkout Area =================-->
	<section class="checkout_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<h1>Billing Details</h1>
					<hr>
					<form class="row contact_form" action="order" method="post" novalidate="novalidate" id="order">
						<div class="col-md-12 form-group">
							<h3>Recipient</h3>
							<div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="company" name="o.recipient" placeholder="Recipient name">
							</div>
						</div>
						<div class="col-md-12 form-group">
						<h3>Address</h3>
							<div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="city" name="o.address" placeholder="Town/City">
								
							</div>
						</div>
						<div class="col-md-12 form-group">
							<h3>Shipping Details</h3>
							<div class="col-md-12 form-group">
								<div class="payment_item active">
									<div class="radion_btn">
										<input type="radio" id="f-option6" name="o.shipping" value="Local Pickup">
										<label >Local Pickup </label>
										<div class="check"></div>
									</div>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<div class="payment_item active">
									<div class="radion_btn">
										<input type="radio" id="f-option6" name="o.shipping" value="Standard Delivery" checked>
										<label >Standard Delivery </label>
										<div class="check"></div>
									</div>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<div class="payment_item active">
									<div class="radion_btn">
										<input type="radio" id="f-option6" name="o.shipping" value="Ship to 7-11">
										<label >Ship to 7-11 </label>
									<div class="check"></div>
									</div>
								</div>
							</div>
						</div>
					</form>
				 <textarea class="form-control" name="message" id="message" rows="1" placeholder="Order Notes"></textarea>
				</div>
			<div class="col-lg-4">
				<div class="order_box">
					<h2>Your Order</h2>
						<ul class="list">
							<li><a href="#">Product <span>SubTotal</span></a></li>
							<s:iterator var="cartItem" value="#session.CART.cartItem">
								<li><a href="#">${cartItem.product.name }<span class="middle">x ${cartItem.qty}</span> <span class="last">$${cartItem.subtotal }</span></a></li>
							</s:iterator>
						</ul>
					<ul class="list list_2">
						<li><a href="#">Shipping <span>Flat rate: $0.00</span></a></li>
						<li><a href="#">Total <span>$${CART.total }</span></a></li>
					</ul>
					<a class="primary-btn" href="javascript:;" onclick="document.getElementById('order').submit();">CONFIRM ORDER</a>
				</div>
			</div> 
			</div>
		</div>
	</section>

    <!--================End Checkout Area =================-->

	<jsp:include page="footer.jsp"/>
</body>
</html>