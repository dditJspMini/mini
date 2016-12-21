<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div id="section">
		<div class="container">
			<h3 class="text-center">ORDER LIST6</h3>

			<form class="form-inline" action="buyerSearch" id="buyerSearch"
				method="post">
				<div class="form-group">
					<label for="pwd">Buyer Name :</label> <input type="text"
						class="form-control" id="orderName">
				</div>
				<input type="submit" class="btn btn-default" value="Search">
			</form>


			<table id="orderList" class="table table-striped">
				<thead>
					<tr>
						<th>Order Number(Processing)</th>
						<th>Buyer</th>
						<th>Product Name</th>
						<th>Quantity</th>
						<th>ZIP Code</th>
						<th>Address</th>
						<th>Phone</th>
						<th>Order Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderList}" var="orderVO">
						<tr>
							<td><c:choose>
									<c:when test='${orderVO.result=="1"}'>
										<span style="font-weight: bold; color: blue">${orderVO.odseq}</span>
        (<input type="checkbox" name="result" value="${orderVO.odseq}"> 미처리)
        </c:when>
									<c:otherwise>
										<span style="font-weight: bold; color: red">${orderVO.odseq}</span>
          (<input type="checkbox" checked="checked" disabled="disabled">처리완료)
        </c:otherwise>
								</c:choose></td>
							<td>${orderVO.mname}</td>
							<td>${orderVO.pname}</td>
							<td>${orderVO.quantity}</td>
							<td>${orderVO.zipNum}</td>
							<td>${orderVO.address}</td>
							<td>${orderVO.phone}</td>
							<td><fmt:formatDate value="${orderVO.indate}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<p class="text-center">
				<input type="button" class="btn btn-default text-center"
					value="Confirmation of payment" onClick="go_order_save()">
			</p>


		</div>
	</div>
</body>
</html>