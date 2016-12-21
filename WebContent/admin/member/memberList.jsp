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
			<h3 class="text-center">MEMBER LIST</h3>

			<form class="form-inline" action="memberSearch" id="memberSearch"
				method="post">
				<div class="form-group">
					<label for="pwd">Member Name :</label> <input type="text"
						class="form-control" id="memberName">
				</div>
				<input type="submit" class="btn btn-default" value="Search">
			</form>


			<table id="memberList" class="table table-striped">
				<thead>
					<tr>
						<th>ID(Secession)</th>
						<th>Name</th>
						<th>Email</th>
						<th>ZIP Code</th>
						<th>Address</th>
						<th>Phone</th>
						<th>Join Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList}" var="memberVO">
						<tr>
							<td>${memberVO.id}<c:choose>
									<c:when test='${memberVO.useyn=="y"}'>
										<input type="checkbox" name="useyn" disabled="disabled">
									</c:when>
									<c:otherwise>
										<input type="checkbox" name="useyn" checked="checked"
											disabled="disabled">
									</c:otherwise>
								</c:choose>
							</td>
							<td>${memberVO.name}</td>
							<td>${memberVO.email}</td>
							<td>${memberVO.zipNum}</td>
							<td>${memberVO.address}</td>
							<td>${memberVO.phone}</td>
							<td><fmt:formatDate value="${memberVO.indate}" /></td>
						</tr>
					</c:forEach>
			</table>


			</tbody>
			</table>



		</div>
	</div>
</body>
</html>