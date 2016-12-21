<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title><decorator:title /></title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/admin.css">
</head>
<body>
	<div id="wrap">
		<header>
			<nav>
				<div id="navbar" class="container">
					<div class="navbar-header">
						<p class="navbar-brand">Admin Page</p>
					</div>
					<ul id="navbarMenu" class="nav navbar-nav">
						<li><a href="prodList">Product List</a></li>
						<li><a href="orderList">Order List</a></li>
						<li><a href="memberList">Member List</a></li>
						<li><a href="qaList">Q&A List</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>
								Log Out</a></li>
					</ul>
				</div>
			</nav>
		</header>


		<decorator:body />



		<footer class="container-fluid text-center">
			<p>© 2016 Frenchie Bulldog. Powered by Shopify</p>
		</footer>
	</div>
</body>
</html>

