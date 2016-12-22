<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="container">
	<h2>1:1 고객 게시판</h2>
	<form name="formm" >
		<div class="form-group">
			<label for="subject">Title :</label> <input type="text"
				class="form-control" id="subject" name="subject">
		</div>
		<div class="form-group">
			<label for="pwd">Content :</label>
			<textarea class="form-control" rows="5" id="content" name="content" style="height: 50vh; resize:none;"></textarea>
		</div>

		<div id="buttons" style="float: right">
			<input type="button" value="글쓰기" class="submit btn btn-primary" onclick="checkTitle(this.form)"> <input
				type="button" value="취소" class="cancel btn btn-primary" onclick="location.href='qnaList.did'"> <input
				type="button" value="쇼핑 계속하기" class="submit btn btn-primary"
				onclick="location.href='index.did'">
		</div>
	</form>
</div>
