<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div id="section">
		<div class="container">
			<h3 class="text-center">Q&A LIST</h3>

			<table id="memberList" class="table table-striped">
				<thead>
					<tr>
						<th>Number(Answer)</th>
						<th>Title</th>
						<th>Writer</th>
						<th>Write Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${qnaList}" var="qnaVO">
						<tr>
							<td>${qnaVO.qseq}<c:choose>
									<c:when test='${qnaVO.rep=="1"}'>(미처리)</c:when>
									<c:otherwise>(답변처리완료)</c:otherwise>
								</c:choose>
							</td>
							<td><a href="adminQnaDetail.did?qseq=${qnaVO.qseq}">
									${qnaVO.subject} </a></td>
							<td>${qnaVO.id}</td>
							<td><fmt:formatDate value="${qnaVO.indate}" /></td>
						</tr>
					</c:forEach>
			</tbody>
			</table>



		</div>
	</div>
</body>
</html>