<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="container">

	<h2>1:1 고객 게시판</h2>
	<div id="buttons" style="float: right; margin-bottom: 10px;">
		<input type="button" value="목록보기" class="submit btn btn-primary"
			onclick="location.href='qnaList.did'"> <input type="button"
			value="쇼핑 계속하기" class="cancel btn btn-primary" onclick="location.href='index.did'">
	</div>
	<form name="formm" method="post">
		<table class="table" id="notice">
			<thead>

			</thead>
			<tbody>
				<tr>
					<th>제목</th>
					<td>${qnaVO.subject}</td>
				</tr>
				<tr>
					<th>등록일</th>
					<td><fmt:formatDate value="${qnaVO.indate}" type="date" /></td>
				</tr>
				<tr>
					<th>질문내용</th>
					<td>${qnaVO.content}
				</tr>
				<tr>
					<th>답변 내용</th>
					<td>${qnaVO.reply}
				</tr>
			</tbody>
		</table>

	</form>
</div>




