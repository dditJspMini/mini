<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ include file="../header.jsp" %> --%>

<div class="container" style="min-height:755px;">
	<h2 style="text-align: center;">1:1 고객 게시판</h2>
	
	<div id="buttons" style="float: right; margin-bottom: 10px;">
		<input type="button" value="1:1 질문하기" class="submit btn btn-primary"
			onclick="location.href='qnaWriteForm.did'"> <input
			type="button" value="쇼핑 계속하기" class="cancel btn btn-primary"
			onclick="location.href='index.did'">
	</div>
	<form name="formm" method="post">

		<table class="table table-bordered" id="cartList">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록일</th>
					<th>답변 여부</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${qnaList}" var="qnaVO">
					<tr>
						<td>${qnaVO.qseq}</td>
						<td><a href="qnaView.did?qseq=${qnaVO.qseq}">
								${qnaVO.subject}</a></td>
						<td><fmt:formatDate value="${qnaVO.indate}" type="date" /></td>
						<td><c:choose>
								<c:when test="${qnaVO.rep==1}"> no </c:when>
								<c:when test="${qnaVO.rep==2}"> yes </c:when>
							</c:choose></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>



	</form>
</div>