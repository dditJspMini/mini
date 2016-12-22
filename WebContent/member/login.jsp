<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>  
<%-- <%@ include file="../header.jsp" %> --%>  

    <h1>Login</h1>
    <form method="post" action="login.did">
        <fieldset>
        <legend></legend>
          <label>User ID</label>
          <input name="id" type="text" value="${id}" ><br> 
          <label>Password</label> 
          <input name="pwd" type="password"><br> 
        </fieldset>
        <div class="clear"></div>
        <div id="buttons">
            <input type="submit" value="로그인" class="submit">
            <input type="button" value="회원가입" class="cancel"
                 onclick="location='joinForm.did'">
            <input type="button" value="아이디 비밀번호 찾기" class="submit"
                 onclick="location='findForm.did'">     
        </div>
    </form>  
  
