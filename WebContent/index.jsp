<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			style="margin-bottom: 10px;">
			<!-- Indicators -->
			<ol class="carousel-indicators ">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="image/slideshow_2.jpg" alt="Chania" width="1920"
						height="1000">
				</div>

				<div class="item">
					<img src="image/slideshow_3.jpg" alt="Chania" width="1920"
						height="1000">
				</div>

				<div class="item">
					<img src="image/slideshow_4.jpg" alt="Flower" width="1920"
						height="1000">
				</div>

				<div class="item">
					<img src="image/slideshow_5.jpg" alt="Flower" width="1920"
						height="1000">
				</div>
			</div>

	<!-- Left and right controls -->
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>


<!-- 	<div class="container-fluid" >
	<p style="text-align: center;"><img alt="Hoodies" src="image/feature1.jpg"
			style="width: 380px; height: 344px; margin-right: 10px; cursor:pointer;" id="myBtn" class="w3-hover-opacity" >
			<img
			alt="Hoodies" src="image/feature2.jpg"
			style="width: 380px; height: 344px; margin-right: 10px"> 
			<img
			alt="Hoodies" src="image/feature3.jpg"
			style="width: 380px; height: 344px; margin-right: 10px"></p>
		
	</div> -->

<div class="w3-content" style="max-width: 1200px" id="content">
<table align="center">
	<tr>
	<td>
	<div class="w3-display-container w3-hover-opacity" style="width: 380px" id="1">
		<img alt="Hoodies" src="image/feature1.jpg"
			style="width: 380px; height: 344px; margin-right: 10px; cursor: pointer;"
			id="img" class="img-rounded">
		<div class="w3-display-middle w3-display-hover w3-xlarge" >
			<button
				class="w3-btn w3-white w3-border w3-round-large w3-animate-opacity">
				<b >HARNESSES</b>
			</button>
		</div>
	</div>
	
	
	
	
	</td>
	<td>
	<div class="w3-display-container w3-hover-opacity" style="width: 380px;" id="2">
		<img alt="Hoodies" src="image/feature2.jpg"
			style="width: 380px; height: 344px; margin-right: 10px; cursor: pointer;"
			id="img" class="img-rounded">
		<div class="w3-display-middle w3-display-hover w3-xlarge" >
			<button
				class="w3-btn w3-white w3-border w3-round-large w3-animate-opacity">
				<b >HOODIES</b>
			</button>
		</div>
	</div>
	
	
	
	
	</td>
	<td>
	<div class="w3-display-container w3-hover-opacity" style="width: 380px" id="3">
		<img alt="Hoodies" src="image/feature3.jpg"
			style="width: 380px; height: 344px; margin-right: 10px; cursor: pointer;"
			id="img" class="img-rounded">
		<div class="w3-display-middle w3-display-hover w3-xlarge" >
			<button
				class="w3-btn w3-white w3-border w3-round-large w3-animate-opacity">
				<b >BOW TIES</b>
			</button>
		</div>
	</div>
	</td>
	</tr>
	</table>
	<br><br>
	<div class="w3-container">
	<span id="subject"><b>FRENCHIE HOODIE</b></span>
	<br>
	<img alt="Hoodies" src="image/feature4.jpg"
			style="width: 1180px; height: 610px; margin-right: 10px; margin-top:5px; cursor: pointer;"
			id="img" class="img-rounded">
	<br><br>
	<span id="subject"><b>TWEETS</b></span>
	<div style="max-height:900px">
<a class="twitter-timeline" href="https://twitter.com/FrenchBulldog__" data-chrome="noheader nofooter" data-tweet-limit="7"></a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	</div>
	
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

</div>
<%-- 
	Modal
	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
 
    </div>
  </div>     --%>

<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});

$(document).on("scroll",function(){
    if($(document).scrollTop()>20) {
        $("#header").addClass("navbar-fixed-top");
    } else {
        $("#header").removeClass("navbar-fixed-top");
    }
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


