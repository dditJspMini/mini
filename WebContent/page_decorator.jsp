<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link href="css/shopping.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>프블</title>
	<link href="css/cookie.css" rel="stylesheet">
	<script type="text/javascript" src="product/products.js"></script>
	<script type="text/javascript" src="member/members.js"></script>
	<script type="text/javascript" src="mypage/mypages.js"></script>
<style>
#sel4{

-webkit-appearance: menulist;
}
#productdetailintro {
    font-family: "arial", Georgia, sans-Serif;
    color:black;
}
#producthr {
    margin-top: 5px;
    }
#productpath{
font-size:100%;
}
#productintro{
padding-left:40px;
}
#productname{
font-size:90%;
}
#bottom-margin{
height:80px;
}
#bottombar{
margin-bottom: 0px;
text-align:center;
vertical-align:center;
}
#header {
	padding-top: 70px;
}
#footer{
	padding-top: 70px;
}
/* #final{
padding: auto;
} */
#final2 {
	width: 100%;
	height: 80px;
	background-color: white;
	padding-left: 15%;
	padding-right: 15%;
	margin: auto;
}

#final2 {
	-webkit-transition: all 0.6s ease-out;
}

.wrap.scrolled {
	background: rgba(0, 0, 0, 0.78);
}
#myModal{
position: fixed;
left: 50%;
top: 50%;

-webkit-transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
-moz-transform: translate(-50%, -50%);
-o-transform: translate(-50%, -50%);
transform: translate(-50%, -50%);

}
td {
	padding: 8px;
}
#final3 a:hover{
	background-image:url(images/black.gif);
    background-repeat:repeat-x;
    background-position:bottom;
}
#subject {
	font-size: 30px;
}





</style>
</head>
<body class="wrap">
	<header id="header">
		<div class="w3-content" style="max-width: 900px;" id="final">
			<nav style="padding-bottom: 10px;">
				<div class="navbar-fixed-top" id="final2">

					<div class="navbar-header" id="kk">
						<a href="index.did" id="logo" class="navbar-brand" href="index.jsp"><img
							src="image/logo.png"></a>
					</div>
					<div class="navbar-top" id="final3">
					<ul class="nav navbar-nav" style="margin-top: 15px;">
						<li><a href="catagory.did?kind=1">DOU REVERSIBLE HARNESS</a></li>
						<li><a href="catagory.did?kind=2">COMFORT LEASH</a></li>
						<li><a href="catagory.did?kind=3">HOODIE</a></li>
						<li><a href="catagory.did?kind=4">STRAP HARNESS</a></li>
						<li><a href="catagory.did?kind=5">ON SALE</a></li>
					</div>
					</ul>
					<ul class="nav navbar-nav navbar-right" style="margin-top: 15px;">
						<c:choose>
							<c:when test="${empty loginUser }">
								<ul class="nav navbar-nav navbar-right">

									<li style="font-size: 25px;"><a href="loginForm.did"><span
											class="glyphicon glyphicon-log-in" data-toggle="tooltip"
											data-original-title="login"></span></a></li>
									<li style="font-size: 25px;"><a href="contract.did"><span
											class="glyphicon glyphicon-user" data-toggle="tooltip"
											data-original-title="My Acount"></span></a></li>
									<li style="font-size: 25px;"><a href="mypage.did"><span
											class="glyphicon glyphicon-question-sign"
											data-toggle="tooltip" data-original-title="Q&A"></span></a></li>
									<li style="font-size: 25px;"><a href="mypage.did"><span
											class="glyphicon glyphicon-shopping-cart"
											data-toggle="tooltip" data-original-title="Cart"></span></a></li>

								</ul>
							</c:when>
							<c:otherwise>
							
								<ul class="nav navbar-nav navbar-right">
									<li style="font-size: 25px;"><a href="logout.did"><span
											class="glyphicon glyphicon-log-out"
											data-toggle="tooltip" data-original-title="Logout"></span></a></li>
									<li style="font-size: 25px;"><a href="mypage.did"><span
											class="glyphicon glyphicon-shopping-cart"
											data-toggle="tooltip" data-original-title="Cart"></span></a></li>
								</ul>
								
							</c:otherwise>
						</c:choose>
						
					</ul>


				</div>
			</nav>

		</div>
	</header>

	<decorator:body />
	<div id="rightSide">
	<div id="right_zzim">
		<div  class="recTit">최근본상품 <span id=recentCnt></span></div>
			   <div id="ul">
			   </div> <!-- 본 상품이 뿌려질 부분  -->
		<div id="paging">
		<a class="btn_prev" style="cursor:pointer" >이전</a>
		<span id="currentPage"></span>
		<span id="totalPageCount"></span>
		<a class="btn_next" style="cursor:pointer" >다음</a>
		</div>
	</div>
	</div> 
	<footer>
		<nav class="navbar navbar-default navbar-fixed-bottom" id="bottombar" >
			
			<div>© 2016 Frenchie Bulldog. Powered by Shopify</div>
		</nav>


	</footer>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip({
			placement : 'bottom'
		});
	});
	
	$(document).ready(function() {
		$(document).scroll(function() {
			var top = $(this).scrollTop();
			if (top < 150) {
				var dif = 1 - top / 450;
				$("#final").css({
					opacity : dif
				});
			}
		})
	});
</script>

<script>
//
// recent item    
var Cpage;   // 현재 페이지 
var pagingSize = 4;   // 원하는 페이지 사이즈로 조정하세용 
function chkRecent(a){
var itemID = getCookie("itemID");
$("#right_zzim #ul").html('');    // 일단 Ul 내용 지우기... 
if(itemID){
	var totcount = itemID.split('&').length-1;   //
	var totpage = Math.ceil(totcount / pagingSize) *1;
	
	Cpage = (totpage >= a )? a:1;
	Cpage = (Cpage <1)? totpage:Cpage;
	
	var start = (Cpage-1) * pagingSize;    

	for (i = start ; i <= start+(pagingSize-1) ;i++){
	var  thisItem = itemID.split('&')[i];
		if(thisItem){
			var itemId = thisItem.split(':')[0];			
			var itemImg = thisItem.split(':')[1];
		$("#right_zzim #ul").append('<a href="productDetail.did?pseq='+itemId+'" target="_top"><img src="product_images/'+itemImg+'"  width="75" border=1></a> <br><br><br> ')
		}
	}

	$("#paging").show();
}else{
	$("#right_zzim ul").append('<p class="noData">최근 본 상품이<br> 없습니다.</p>');
	$("#paging").hide();$("#recentCnt").text('');
}


updateRecentPage(totcount, Cpage);

}

chkRecent(1);

function removeRecentItem(itemname){
	var itemID = getCookie("itemID");
	itemID = itemID.replace(itemname+"&","");			
	setCookie("itemID",itemID,1);
	chkRecent(Cpage);
}


function updateRecentPage(totcount,Cpage){  //  

	$("#recentCnt").text(totcount);  //
	
	$("#totalPageCount").text("/"+Math.ceil((totcount / pagingSize) *1)); 
	if(Math.ceil((totcount / pagingSize) *1) < Cpage){
	$("#currentPage").text(Math.ceil((totcount / pagingSize) *1));
	}else{
	$("#currentPage").text(Cpage);  //
	}
}

$(".btn_next").on('click',function(){
chkRecent(Cpage + 1);
 
});

$(".btn_prev").on('click',function(){
chkRecent(Cpage - 1);
});

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

</script>
</html>