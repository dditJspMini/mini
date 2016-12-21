<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%-- <%@ include file="../header.jsp"%> --%>

<%@ include file="sub_menu.jsp"%>

<article>
	<h1>Item</h1>
	<div id="itemdetail">
		<form method="post" name="formm">
			<fieldset>
				<legend> Item detail Info</legend>
				<a href="productDetail.did?pseq=${productVO.pseq}">
					<span style="float: left;">
						<img src="product_images/${productVO.image}" />
					</span>
					<h2>${productVO.name}</h2>
				</a> 
				<label> 가 격 : </label>
				<p>${productVO.price2} 원</p>
				<label> 수 량 : </label> <input type="text" name="quantity" size="2" value="1"><br> 
				<input type="hidden" name="pseq" value="${productVO.pseq}"><br>
			</fieldset>
			<div class="clear"></div>
			<div id="buttons">
				<input type="button" value="장바구니에 담기" class="submit" onclick="go_cart()"> 
				<input type="button" value="즉시 구매" class="submit" onclick="go_direct_order()"> 
				<input type="reset" value="취소" class="cancel">
			</div>
		</form>
	</div>
</article>

<%-- <%@ include file="../footer.jsp"%> --%>
<script type="text/javascript">
function checkCookie() {

    var itemID = getCookie("itemID");
	var thisItem='${productVO.pseq}:${productVO.image}';   // 제품 아이디와 이미지 이름을 저장  2차원 배열처럼 쓸려고 짱구를 굴림...  json 형태로 저장도 가능할텐데.... 그건 취향대로 
	if (thisItem){
		if (itemID != "" && itemID != null) {
			if (itemID.indexOf(thisItem) ==-1 ){ //값이 없으면 
					setCookie("itemID",thisItem+"&"+itemID,1);
			 }
		} else {
			if (itemID == "" || itemID == null) {
				setCookie("itemID",thisItem+"&",1000);
			}
		}
	}
}
checkCookie();

function getCookie( cookieName )
{
 var search = cookieName + "=";
 var cookie = document.cookie;

 // 현재 쿠키가 존재할 경우
 if( cookie.length > 0 )
 {
  // 해당 쿠키명이 존재하는지 검색한 후 존재하면 위치를 리턴.
  startIndex = cookie.indexOf( cookieName );

  // 만약 존재한다면
  if( startIndex != -1 )
  {
   // 값을 얻어내기 위해 시작 인덱스 조절
   startIndex += cookieName.length;

   // 값을 얻어내기 위해 종료 인덱스 추출
   endIndex = cookie.indexOf( ";", startIndex );

   // 만약 종료 인덱스를 못찾게 되면 쿠키 전체길이로 설정
   if( endIndex == -1) endIndex = cookie.length;

   // 쿠키값을 추출하여 리턴
   return unescape( cookie.substring( startIndex + 1, endIndex ) );
  }
  else
  {
   // 쿠키 내에 해당 쿠키가 존재하지 않을 경우
   return false;
  }
 }
 else
 {
  // 쿠키 자체가 없을 경우
  return false;
 }
}
function setCookie( cookieName, cookieValue, expireDate )
{
 var today = new Date();
 today.setDate( today.getDate() + parseInt( expireDate ) );
 document.cookie = cookieName + "=" + escape( cookieValue ) + "; path=/; expires=" + today.toGMTString() + ";";
}

</script>
