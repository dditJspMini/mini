<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="container">
	<div class="stepwizard">
		<div class="stepwizard-row setup-panel">
			<div class="stepwizard-step">
				<a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
				<p>Step 1</p>
			</div>
			<div class="stepwizard-step">
				<a href="#step-2" type="button" class="btn btn-default btn-circle"
					disabled="disabled">2</a>
				<p>Step 2</p>
			</div>
			<div class="stepwizard-step">
				<a href="#step-3" type="button" class="btn btn-default btn-circle"
					disabled="disabled">3</a>
				<p>Step 3</p>
			</div>

		</div>
	</div>


	<div class="row setup-content" id="step-1">
		<jsp:include page="contract.jsp" flush="true"></jsp:include>
	</div>
	<div class="row setup-content" id="step-2">
		<div class="col-xs-12">
			<div class="col-md-12">
				<h3>Step 2 - 기본 정보</h3>
				<div class="container">
					<div class="row">
						<div class="col-xs-8">
							<div class="form-group">

								<label>User ID</label> <input type="text" class="form-control"
									id="id" placeholder="user id" required=""> <input
									type="hidden" name="reid" value="abc"> <input
									type="button" value="중복 체크" class="dup" onclick="idcheck()"><br>

							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" name="pwd" id="pwd" placeholder=""
									required="">
							</div>

							<div class="form-group">
								<label for="password">Retype Password</label> <input
									type="password" class="form-control" name="pwdCheck" id="pwd"
									placeholder="" required="">
							</div>

							<div class="form-group">
								<label for="name">Name</label><input type="text"
									class="form-control" name="name" id="name" placeholder=""
									required="">

							</div>
							<div class="form-group">
								<label for="email">Email</label><input type="text"
									class="form-contorl" name="email" id="email" placeholder=""
									required="">
							</div>
						</div>
					</div>
				</div>
			</div>
			<button href="#step-3"
				class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
		</div>
	</div>

	<div class="row setup-content" id="step-3">
		<div class="col-xs-12">
			<div class="col-md-12">
				<h3>Step 3 - 선택 정보</h3>
				<div class="container">
					<div class="row">
						<div class="col-xs-8">
							<div class="form-group">
								<label>Zip Code</label> <input type="text" class="form-control"
									id="zipNum" name="zipNum" placeholder="zipNum" required="">
								<input type="button" value="주소 찾기" class="form-control"
									onclick="post_zip()"><br>


								<div class="form-group">
									<label for="Address">Address</label> <input type="text"
										class="form-control" name="addr1" id="addr1" placeholder=""
										required=""> <input type="text" class="form-control"
										id="addr2" name="addr2" placeholder="" required="">
								</div>


								<div class="form-group">
									<label for="PhoneNumber">PhoneNumber</label> <input type="text"
										class="form-control" name="phone" id="phone" placeholder=""
										required="">
								</div>

							</div>

						</div>
						<div class="form-actions">
							<form role="form" id="join" action="join.did" method="post"
								name="formm">
								<button id="submitButton" class="btn btn-block btn-primary">
									Submit!</button>
							</form>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>

