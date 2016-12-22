<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<div class="container">


	<form id="join" action="join.did" method="post" name="formm">
				<h3>Step 2 - 기본 정보</h3>
				<div class="container">
					<div class="row">
						<div class="col-xs-8">
							<div class="form-group">
								<label>User ID</label> <input type="text" class="form-control"
									id="id" placeholder="user id" readonly="readonly" required="" name="id" value="${loginUser.id }"> 
							</div>

							<div class="form-group">
								<label for="password">Password</label> 
								<input type="password"
									class="form-control" name="pwd" placeholder=""
									required="" value="${loginUser.pwd }">
							</div>

							<div class="form-group">
								<label for="password">Retype Password</label> <input
									type="password" class="form-control" name="pwdCheck"
									placeholder="" required="" >
							</div>

							<div class="form-group">
								<label for="name">Name</label><input type="text"
									class="form-control" name="name" id="name" placeholder=""
									required="" value="${loginUser.name }">

							</div>
							<div class="form-group">
								<label for="email">Email</label><input type="text"
									class="form-contorl" name="email" id="email" placeholder=""
									required="" value="${loginUser.email }">
							</div>
							<div class="form-group">
								<label>Zip Code</label> <input type="text" class="form-control"
									id="zipNum" name="zipNum" placeholder="zipNum" required="" value="${loginUser.zipNum }">
								<input type="button" value="주소 찾기" class="form-control"
									onclick="post_zip()"><br>


								<div class="form-group">
									<label for="Address">Address</label> <input type="text"
										class="form-control" name="address" id="addr1" placeholder=""
										required="" value="${loginUser.address }">
								</div>


								<div class="form-group">
									<label for="PhoneNumber">PhoneNumber</label> <input type="text"
										class="form-control" name="phone" id="phone" placeholder=""
										required="" value="${loginUser.phone }">
								</div>

							</div>
						</div>
					</div>
					</div>
					</div>
			<button id="submitButton" class="btn btn-block btn-primary" onclick="go_update()">
									Update</button>
			<button id="submitButton" class="btn btn-block btn-primary" onclick="go_delete()">
									delete</button>
			<button id="submitButton" class="btn btn-block btn-primary" onclick="">
									back</button>
		</form>
		</div>