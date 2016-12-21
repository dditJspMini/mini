<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<div class="w3-content" style="max-width: 1200px;" id="section">
		<br>
		<div>
			<img alt="pizza" src="images/product/harness.jpg"
				style="width: 1180px; height: 610px; margin-right: 10px; margin-top: 5px;"
				id="img" class="img-rounded">
		</div>

		<%-- ---------------------------------------------------------------------------------------- --%>
		<%-- 		<h3>${productVO.name}</h3>
				<p>${productVO.price2}</p>	
	 --%>


		<br>
		<div style="overflow:hidden; margin:0 auto;">
			<c:forEach items="${productKindList }" var="productVO"
				varStatus="status" >
				<div style="float:left;">
				
				
				
				
				
					<a href="productDetail.did?pseq=${productVO.pseq}"> <img
						id="harness_img" src="product_images/${productVO.image}"
						style="width: 380px; height: 344px; margin: 5px, 5px, 5px, 5px;"
						class="img-rounded" />
					</a><div id="productintro"><span id="productname">${productVO.name}</span><br><b>￦${productVO.price2}</b></div>
					
					
					
					
					
					<c:if test="${status.count%3==0}">
						<br>
						<br>
					</c:if>
				</div>
			</c:forEach>

		</div>
		<div id="bottom-margin"></div>
	</div>


</body>