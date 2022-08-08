<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

    * {
      font-family: 'Poppins', sans-serif;
    }

    .container_body {
      display: flex;
      justify-content: center;
      align-items: center;
      background: #fff;
      flex-direction: column;
      gap: 50px;
    }

    .container_body .BtnA {
      position: relative;
      background: #fff;
      color: #fff;
      text-decoration: none;
      text-transform: uppercase;
      font-size: 1.5em;
      letter-spacing: .1em;
      font-weight: 400;
      padding: 10px 30px;
      transition: .5s;
      border: none;
    }

    .container_body .BtnA:hover {
      background: var(--clr);
      color: var(--clr);
      letter-spacing: .25em;
      box-shadow: 0 0 35px var(--clr);
    }

    .container_body .BtnA:before {
      content: '';
      position: absolute;
      inset: 2px;
      background: #fff;
    }

    .container_body .BtnA span {
      color: #27282c;
      position: relative;
      z-index: 1;
    }

    .container_body .BtnA i {
      position: absolute;
      inset: 0;
      display: block;
    }

    .container_body .BtnA:hover i:after {
      width: 20px;
      left: 80%;
    }


    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>
</head>
<body>
	<jsp:include page="incl/header.jsp"/>
	
	  <div class="container_body">
    <a class="BtnA" type="button" onclick='location.href="<c:url value='/pages/add_category' />"' style="--clr:#1e9bff"><span>최상위 메뉴 추가</span><i></i></a>
    <a class="BtnA" type="button" onclick='location.href="<c:url value='/pages/add_category2' />"' style="--clr:#1e9bff"><span>하위 메뉴 추가</span><i></i></a>
    <a class="BtnA" type="button" onclick='location.href="<c:url value='/pages/add_img' />"' style="--clr:#1e9bff"><span>상품 이미지 등록</span><i></i></a>
    <a class="BtnA" type="button" onclick='location.href="<c:url value='/pages/add_menu_item' />"' style="--clr:#1e9bff"><span>상품 추가</span><i></i></a>

    <form action="find_all_category" method="post">
      <button class="BtnA" type="submit" style="--clr:#1e9bff"><span>모든 등록 카테고리 찾기</span><i></i></button>
    </form>

    <form action="find_all_menu_item" method="post">
      <button class="BtnA" type="submit" style="--clr:#1e9bff"><span>모든 등록 상품 찾기</span><i></i></button>
    </form>

    <form action="find_all_menu_image" method="post">
      <button class="BtnA" type="submit" style="--clr:#1e9bff"><span>모든 등록 상품 이미지 코드 찾기</span><i></i></button>
    </form>

  </div>   	   	
</body>
</html>