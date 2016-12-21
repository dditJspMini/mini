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
<title><decorator:title />Admin page</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/admin.css">
</head>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/admin/product/product.js"></script>
<body>
	<div id="wrap">
		<header>
			<nav>
				<div id="navbar" class="container">
					<div class="navbar-header">
						<p class="navbar-brand">Admin Page</p>
					</div>
					<ul id="navbarMenu" class="nav navbar-nav">
						<li><a
							href="<%=request.getContextPath()%>/admin/adminProductList.did">Product
								List</a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin/adminOrderList.did">Order
								List</a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin/adminMemberList.did">Member
								List</a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin/adminQnaList.did">Q&A
								List</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="<%=request.getContextPath()%>/logout.did"><span
								class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
					</ul>
				</div>
			</nav>
		</header>


		<decorator:body />



		<footer class="container-fluid text-center">
			<nav class="navbar navbar-default navbar-fixed-bottom" id="bottombar">
				<div style="margin: auto;">© 2016 Frenchie Bulldog. Powered by
					Shopify</div>
			</nav>

		</footer>
	</div>
</body>
<script type="text/javascript">
	function addProd_go() {

		location.href = "adminProductWriteForm.did";

	}

	function NumFormat(t) // 원 단위, 찍어주기
	{
		s = t.value;
		s = s.replace(/\D/g, '');
		l = s.length - 3;
		while (l > 0) {
			s = s.substr(0, l) + ',' + s.substr(l);
			l -= 3;
		}
		t.value = s;
		return t;
	}

	function go_save() {
		var theForm = document.frm;

		if (theForm.kind.value == '') {
			alert('상품분류를 선택하세요.');
			theForm.kind.focus();
		} else if (theForm.name.value == '') {
			alert('상품명을 입력하세요.');
			theForm.name.focus();
		} else if (theForm.price1.value == '') {
			alert('원가를 입력하세요.');
			theForm.price1.focus();
		} else if (theForm.price2.value == '') {
			alert('판매가를 입력하세요.');
			theForm.price2.focus();
		} else if (theForm.content.value == '') {
			alert('상품상세를 입력하세요.');
			theForm.content.focus();
		} else if (theForm.image.value == '') {
			alert('상품이미지들 입력하세요.');
			theForm.image.focus();
		} else {
			theForm.encoding = "multipart/form-data";
			/* theForm.price1.value = removeComma(theForm.price1);
			theForm.price2.value = removeComma(theForm.price2);
			theForm.price3.value = removeComma(theForm.price3); */

			// productWrite.jsp 폼 페이지에서 입력받은 값을
			// 디비에 추가하기 위한 페이지인 product_save.jsp로 이동하되
			// 입력받은 상품 코드를 쿼리 스트링 형태로 전달한다.
			// 상품 코드로 폴더를 만들어 거기에 이미지 파일을 업로드한다.
			theForm.action = "adminProductWrite.did";
			theForm.submit();
		}
	}

	function go_mov() {
		var theForm = document.frm;
		theForm.action = "adminProductList.did";
		theForm.submit();
	}

	function go_order_save() {
		var count = 0;
		if (document.frm.result.length == undefined) {
			if (document.frm.result.checked == true) {
				count++;
			}
		} else {
			for (var i = 0; i < document.frm.result.length; i++) {
				if (document.frm.result[i].checked == true) {
					count++;
				}
			}
		}
		if (count == 0) {
			alert("주문처리할 항목을 선택해 주세요.");
		} else {
			document.frm.action = "adminOrderSave.did";
			document.frm.submit();
		}
	}

	function go_mod_save(tpage, pseq) {
		var theForm = document.frm;

		if (theForm.kind.value == '') {
			alert('상품분류를 선택하세요');
			theForm.kind.focus();
		} else if (theForm.name.value == '') {
			alert('상품명을 입력하세요');
			theForm.name.focus();
		} else if (theForm.price1.value == '') {
			alert('원가를 입력하세요');
			theForm.price1.focus();
		} else if (theForm.price2.value == '') {
			alert('판매가를 입력하세요');
			theForm.price2.focus();
		} else if (theForm.content.value == '') {
			alert('상품상세를 입력하세요');
			theForm.content.focus();
		} else {
			if (confirm('수정하시겠습니까?')) {
				// [1] 상품을 삭제하지 않는 대신 사용하지 않음을 products 테이블의 useyn 컬럼에 1을 채워 넣기 위해서
				// useyns hidden 태그에 1을 지정한다.
				if (theForm.useyn.checked == true) {
					theForm.useyn.value = "y";
				} else {
					theForm.useyn.value = "n";
				}
				if (theForm.bestyn.checked == true) {
					theForm.bestyn.value = "y";
				} else {
					theForm.bestyn.value = "n";
				}
				theForm.encoding = "multipart/form-data";
				// theForm.seq.value=seq;
				// [2] products 테이블의 상품 정보를 수정하는 처리를 하는 product_modsave.jsp 페이지로
				// 이동하되 상품 코드를 전달해준다. 상품코드로 폴더를 생성해서 그곳에 이미지 파일을 업로드하기 때문이다.			
				theForm.action = "adminProductUpdate.did";
				theForm.submit();
			}
		}
	}
</script>
</html>

