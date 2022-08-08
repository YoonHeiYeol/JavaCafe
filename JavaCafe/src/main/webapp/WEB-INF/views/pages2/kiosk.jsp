<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>	
     <style>
     
     	@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

    * {
      font-family: 'Poppins', sans-serif;
    }
    	main {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 150vh;
  /* background: linear-gradient(45deg, #fbda61, #ff5acd); */
  flex-wrap: wrap;
}

.card1 {
  position: relative;
  width: 350px;
  height: 190px;
  /* height: 450px; */
  background: #fff;
  border-radius: 20px;
  box-shadow: 0 35px 80px rgba(0, 0, 0, .15);
  transition: .5s;
  margin: 30px 30px;
  min-width: 350px;
}

.card1:hover {
  height: 450px;
}

.imgBx1 {
  position: absolute;
  left: 50%;
  top: -20%;
  transform: translateX(-50%);
  width: 150px;
  height: 150px;
  background: #fff;
  border-radius: 20px;
  box-shadow: 0 15px 50px rgba(0, 0, 0, .35);
  overflow: hidden;
  transition: .5s;
}

.card1:hover .imgBx1 {
  width: 250px;
  height: 250px;
}

.imgBx1 img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.card1 .content1 {
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  overflow: hidden;
}

.card1 .content1 .details1 {
  padding: 40px;
  text-align: center;
  width: 100%;
  transition: .5s;
  transform: translateY(150px);
}

.card1:hover .content1 .details1 {
  transform: translateY(0px);
}

.card1 .content1 .details1 h2 {
  font-size: 1.25em;
  font-weight: 600;
  color: #555;
  line-height: 1.2em;
}

.card1 .content1 .details1 h2 span {
  font-size: .75em;
  font-weight: 500;
  opacity: .5;
}

.card1 .content1 .details1 .deta1 {
  display: flex;
  justify-content: space-between;
  margin: 20px 0;
}

.card1 .content1 .details1 .deta1 .card-h3 {
  font-size: 0.7em;
  color: #555;
  line-height: 1.2em;
  font-weight: 600;
}

.card1 .content1 .details1 .deta1 .card-h3 .card-sapn {
  font-size: .55em;
  font-weight: 400;
  opacity: .5;
}

.card1 .content1 .details1 .actionBtn1 {
  display: flex;
  justify-content: space-between;
  /* gap: 20px; */
}

.card1 .content1 .details1 .actionBtn1 button {
  padding: 10px 30px;
  border-radius: 5px;
  border: none;
  outline: none;
  font-size: 1em;
  font-weight: 500;
  background: #ff5f95;
  color: #fff;
  cursor: pointer;
}

.card1 .content1 .details1 .actionBtn1 button:nth-child(2) {
  border: 1px solid #999;
  color: #999;
  background: #fff;
}      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      
      .card-body {
      	background: #FCF8E8;
      }
      
      .card-body.white {
      	background: white;
      }
      
      .a {
      	color : none;
      	text-decoration: none;
       }   
      
} 
       
    </style>
  </head>
  <body>	

<jsp:include page="../incl/header.jsp"/>
		<!-- <h3>상품 목록</h3> -->
<main>
	<c:set var="total" value="0"></c:set>  
	
	
			  	  	 
  <!-- <div class="album py-5 bs-gray-400"> -->
    <!-- <div class="container"> -->
      <!-- <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">    -->       
	<c:forEach var="view" items="${menuItemList}">
        <!-- <div class="col"> -->
          <div class="card1">
          	<div class="imgBx1">
       		 <img alt="img_area" src="<c:url value='/resources/upload_img/${view.imgSource}.png'/>">
     		</div>
            <div class="content1">
		        <div class="details1">
		          <h2>${view.menuName}<br><span>${view.menuName}</span></h2>
		          <div class="deta">
		            <p class="card-h3">Price<br><span class="card-sapn">${view.menuPrice}</span></p>
		            <!-- <h3>120K<br><span>Followers</span></h3>
		            <h3>285<br><span>Following</span></h3> -->
		          </div>
		          <div class="actionBtn1">
		             <button value="${view.menuName}"
                     onclick = "location.href ='add_cart_menu_item?menuName1=${view.menuName}'"
                   class="btn btn-sm btn-outline-secondary">				
					담기
				</button>
		            <button type="button" class="btn btn-sm btn-outline-secondary">상세정보</button>
		          </div>
		        </div>
      </div>
          </div>
        <!-- </div> -->
	</c:forEach>
	
     <!--  </div> -->
   <!--  </div> -->
  <!-- </div> -->	
</main>

<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="<c:url value='/resources/js/kiosk.js'/>"></script>
<script>

</script>
  </body>
</html>
