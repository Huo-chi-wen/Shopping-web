<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
	<link rel="stylesheet" href="css/cart.css">

</head>
<body>
<jsp:include page="header.jsp"/>
<!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Shopping Cart</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="cart.jsp">Cart</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Cart Area =================-->
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col"><h3>Product</h3></th>
                                <th scope="col"> </th>
                                <th scope="col"> </th>
                                <th scope="col"> </th>
                                <th scope="col"><h4>Price</h4></th>
                                <th scope="col"><h4>Quantity</h4></th>
                                <th scope="col"><h4>Subtotal</h4></th>
                                <th scope="col"> </th>
                            </tr>
                        </thead>
                        <s:iterator var="cartItem" value="#session.CART.cartItem">
                                                
                        <tbody>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
                                            <img src="${cartItem.product.image }" alt="">
                                        </div>
                                        <div class="media-body">
                                            <p><s:property value="#cartItem.product.name"/></p>
                                        </div>
                                    </div>
                                </td>
                                
                                <td></td>
                                
                                <td></td>
                                
                                <td></td>
                                
                                <td align="center">
                                    <h5>$${cartItem.product.price }</h5>
                                </td>
                                <td align="center">
                                    
                                       <h5>${cartItem.qty}</h5>
                                    </div>
                                </td>
                                <td align="center">
                                    <h5>${cartItem.subtotal }</h5>
                                </td>
                                <td align="center">
                                    <form action="remove">
					      				<input type="hidden" value=${cartItem.product.id } name="pid">
					      				<button type="submit" value="Delete" class="gray_btn">DELETE</button>
							        </form>
                                </td>
                            </tr>
  						</s:iterator>
                            <tr >
                                <td>
                                    <form action="clear">
									  	<input type="submit" value="CLEAR ALL" class="gray_btn">
									  </form>
                                </td>
                                
                                <td></td>
                                
                                <td></td>
                                
                                <td>
                                	<form action="checkout">
										<input type="submit" class="btn" value="PROCEED TO CHECKOUT">
									</form>  
                                </td>
                                
                                <td></td>
                                
                                <td></td>
                                
                                <td>
                                    <h5>Total</h5>
                                </td>
                                <td>
                                    <h5>$<s:property value="#session.CART.total"/></h5>
                                </td>
                            </tr>
                        </tbody>
                       
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->
     
<jsp:include page="footer.jsp"/>
</body>

</html>