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
	<br>
	<br>
	<div class="w3-container">
	<span id="text"><b>FRENCHIE HOODIE</b></span>
	<br>
	<img alt="Hoodies" src="image/feature4.jpg"
			style="width: 1180px; height: 610px; margin-right: 10px; margin-top:5px; cursor: pointer;"
			id="img" class="img-rounded">
	<br><br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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

/* $("#myBtn").hover( 
		  function () { 
		    $(this).css("opacity", 0.7); 
		  }, 
		  function () { 
		    $(this).css("opacity", 1); 
		  } 
		) 
 */
</script>

