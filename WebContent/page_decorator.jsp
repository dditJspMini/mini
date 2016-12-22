<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.addHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 1L);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link href="css/shopping.css" rel="stylesheet">
<link href="css/modal.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>프블</title>
	<link href="css/cookie.css" rel="stylesheet">
	<script type="text/javascript" src="product/products.js"></script>
	<script type="text/javascript" src="member/members.js"></script>
	<script type="text/javascript" src="mypage/mypages.js"></script>
<style>
#flickrembed{
max-height : 500px;
}
#right_zzim.fixed {
  position: fixed;
  top: 0;
  margin-top:30px;
}
#sel4{
-webkit-appearance: menulist;
}
#productdetailintro {
    font-family: "arial", Georgia, sans-Serif;
    color:black;
}
#producthr {
    margin-top: 5px;
    }
#productpath{
font-size:100%;
}
#productintro{
padding-left:40px;
}
#productname{
font-size:90%;
}
#bottom-margin{
height:80px;
}
#bottombar{
margin-bottom: 0px;
text-align:center;
vertical-align:center;
}
#header {
	padding-top: 70px;
}
#footer{
	padding-top: 70px;
}
/* #final{
padding: auto;
} */
#final2 {
	width: 100%;
	height: 80px;
	background-color: white;
	padding-left: 15%;
	padding-right: 15%;
	margin: auto;
}

#final2 {
	-webkit-transition: all 0.6s ease-out;
}

.wrap.scrolled {
	background: rgba(0, 0, 0, 0.78);
}
#myModal{
position: fixed;
left: 50%;
top: 50%;

-webkit-transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
-moz-transform: translate(-50%, -50%);
-o-transform: translate(-50%, -50%);
transform: translate(-50%, -50%);

}
td {
	padding: 8px;
}
#final3 a:hover{
	background-image:url(images/black.gif);
    background-repeat:repeat-x;
    background-position:bottom;
}
#subject {
	font-size: 30px;
}





</style>
</head>
<body class="wrap">
	<header id="header">
		<div class="w3-content" style="max-width: 900px;" id="final">
			<nav style="padding-bottom: 10px;">
				<div class="navbar-fixed-top" id="final2">

					<div class="navbar-header" id="kk">
						<a href="index.did" id="logo" class="navbar-brand" href="index.jsp"><img
							src="image/logo.png"></a>
					</div>
					<div class="navbar-top" id="final3">
					<ul class="nav navbar-nav" style="margin-top: 15px;">
						<li><a href="catagory.did?kind=1">DOU REVERSIBLE HARNESS</a></li>
						<li><a href="catagory.did?kind=2">COMFORT LEASH</a></li>
						<li><a href="catagory.did?kind=3">HOODIE</a></li>
						<li><a href="catagory.did?kind=4">STRAP HARNESS</a></li>
						<li><a href="catagory.did?kind=5">ON SALE</a></li>	
					</ul>
					</div>
					<ul class="nav navbar-nav navbar-right" style="margin-top: 15px;">
						<c:choose>
							<c:when test="${empty loginUser }">
								<ul class="nav navbar-nav navbar-right">

									<li><a href="loginForm.did"><span
											class="glyphicon glyphicon-log-in" data-toggle="tooltip"
											data-original-title="login"></span></a></li>
									<li><a href="contract.did"><span
											class="glyphicon glyphicon-user" data-toggle="tooltip"
											data-original-title="My Acount"></span></a></li>
									<li><a href="mypage.did"><span
											class="glyphicon glyphicon-shopping-cart"
											data-toggle="tooltip" data-original-title="Cart"></span></a></li>

								</ul>
							</c:when>
							<c:otherwise>
							
								<ul class="nav navbar-nav navbar-right">
									<li><a href="logout.did"><span
											class="glyphicon glyphicon-log-out"></span></a></li>
								<li><a href="mypage.did"><span
									class="glyphicon glyphicon-shopping-cart"
											data-toggle="tooltip" data-original-title="Cart"></span></a></li>
								</ul>
								
							</c:otherwise>
						</c:choose>
						
					</ul>


				</div>
			</nav>

		</div>
	</header>

	<decorator:body />

	<footer>
		<nav class="navbar navbar-default navbar-fixed-bottom" id="bottombar" >
			
			<div>© 2016 Frenchie Bulldog. Powered by Shopify</div>
		</nav>


	</footer>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip({
			placement : 'bottom'
		});
	});
	
	$(document).ready(function() {
		$(document).scroll(function() {
			var top = $(this).scrollTop();
			if (top < 150) {
				var dif = 1 - top / 450;
				$("#final").css({
					opacity : dif
				});
			}
		})
	});

	<%-- product modal --%>
 	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the image and insert it inside the modal - use its "alt" text as a caption
	var img = document.getElementById('myImg');
	var modalImg = document.getElementById("img01");
	var captionText = document.getElementById("caption");
	img.onclick = function(){
	    modal.style.display = "block";
	    modalImg.src = this.src;
	    captionText.innerHTML = this.alt;
	}
	modalImg.onclick = function(){
		modal.style.display='none';
	}
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() { 
	  modal.style.display = "none";
	}
	

	(function e(){var e=document.createElement("script");e.type="text/javascript",e.async=true,e.src="//staticw2.yotpo.com/AWBmHDPEV8gZInAKIzqiBNCLiDjvAjBbQ64WJRHp/widget.js";var t=document.getElementsByTagName("script")[0];t.parentNode.insertBefore(e,t)})();

	
	/* function change(){
	var selectObject = document.getElementById("sel").value;
	if(selectObject=="X"){
		document.getElementById("qty").value=Math.floor(Math.random() * 20) + 1;
	}else if(selectObject=="L"){
		document.getElementById("qty").value=Math.floor(Math.random() * 30) + 1;
	}
	
	}
	 */
	            
	

</script>
</html>