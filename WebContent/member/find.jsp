<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      

    <h2>Find ID</h2>
    <form id="idfind" action="UserIdFind.did" method="post" name="idform">
      <fieldset>
        <legend>PhoneNumber input</legend>
        <label>name</label>
        <input type="text"      name="name"> 
        <label>phone</label>
		<input type="text"      name="phone"> 
     	<input type="button"    value="search"  class="dup" onclick="serchid()"><br>     
      </fieldset>
      <c:choose>
	  <c:when test="${param.message!=null }">
	  		<c:choose>
	  		<c:when test="${param.message!=''}">
	  		<h3>당신의 아이디는${param.message} 입니다.</h3> 
	  		</c:when>
	  		<c:otherwise>	
	  		<h3>해당 아이디가 없습니다.</h3>
	 		</c:otherwise>
	  		</c:choose>
	  </c:when>
	  <c:otherwise>	
	  </c:otherwise>
	  </c:choose>
      <h2>Find Password</h2>
      </form>
    <form id="pwdfind" action="UserPwdFind.did" method="post" name="pwdform">
      <fieldset>
        <legend>Email input</legend>
        <label>name</label>
        <input type="text"      name="name"> 
        <label>email</label>
		<input type="text"      name="email"> 
     	<input type="button"    value="search"  class="dup" onclick="serchpassword()"><br>     
      </fieldset>
      <c:choose>
	  <c:when test="${param.pwdmessage!=null }">
	  		<c:choose>
	  		<c:when test="${param.pwdmessage!=''}">
	  		<h3>패스워드를 ${param.pwdmessage} 로 보냈습니다.</h3> 
	  		</c:when>
	  		<c:otherwise>	
	  		<h3>정보를 잘못 입력하셨습니다.</h3>
	 		</c:otherwise>
	  		</c:choose>
	  </c:when>
	  <c:otherwise>	
	  </c:otherwise>
	  </c:choose>
    </form>
<%-- <%@ include file="../footer.jsp" %> --%>

<script>
	function serchid(){
		var tname = false;
		var tphone = false;
		if (document.idform.name.value == "") {
		    alert('이름을 입력하여 주십시오.');
		    document.idform.name.focus();
		    return;
		  }else{
			  tname=true;
		  }
		if (document.idform.phone.value == "") {
		    alert('폰번호를 입력하여 주십시오.');
		    document.idform.phone.focus();
		    return;
		  }else{
			  tphone=true;
		  }
		if(tname==true&&tphone==true){
			document.idform.submit();
		}
		
	}
	
	function serchpassword(){
		var tname = false;
		var temail = false;
		if (document.pwdform.name.value == "") {
		    alert('이름을 입력하여 주십시오.');
		    document.idform.name.focus();
		    return;
		  }else{
			  tname=true;
		  }
		if (document.pwdform.email.value == "") {
		    alert('메일을 입력하여 주십시오.');
		    document.idform.email.focus();
		    return;
		  }else{
			  temail=true;
		  }
		if(tname==true&&temail==true){
			document.pwdform.submit();
		}
	}	

</script>