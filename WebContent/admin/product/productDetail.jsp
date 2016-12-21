<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="container">
		<h2 class="container-fluid text-center">Product detail view</h2>
		<form name="frm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tbody>
					<tr>
						<th>상품분류</th>
						<td colspan="5">${kind}</td>
					</tr>
					<tr>
						<th align="center">상품 명</th>
						<td colspan="5">${productVO.name}</td>
					</tr>

					<tr>
						<th>원가 [A]</th>
						<td width="60">${productVO.price1}</td>
						<th>판매가 [B]</th>
						<td width="60">${productVO.price2}</td>
						<th>[B-A]</th>
						<td>${productVO.price3}</td>
					</tr>

					<tr>
						<th>상세설명</th>
						<td colspan="5">${productVO.content}</td>
					</tr>

					<tr>
						<th>상품이미지</th>
						<td colspan="5" align="center">
							<!--[7] 상품 이미지를 출력하기 --> <img
							src="<%=request.getContextPath() %>/product_images/${productVO.image}"
							width="200pt" />
						</td>
					</tr>
				</tbody>
			</table>
			
			<input class="btn" type="button" value="수정" onClick="location.href='adminProductUpdateForm.did?tpage=${tpage}&pseq=${productVO.pseq}'">
			<input class="btn" type="button" value="취소" onClick="go_mov()">
			
		</form>
	</div>
</body>
</html>