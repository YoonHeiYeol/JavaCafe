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
  </style>
</head>
<body>
	<jsp:include page="../incl/header.jsp"/>
  <c:forEach var="view" items="${wantItemList}">
		<li>=========================</li>
		<h3>선택한 메뉴정보 수정/삭제</h3>
		<li>=========================</li>
		<li><label>상위 카테고리</label>
		<input name="cateCodeRef" value="${view.cateCodeRef}"/></li>
		<li><label>상위 하위카테고리</label>
		<input name="cateCode" value="${view.cateCode}"/></li>
		<li><label>상품 이름</label>
		<input name="menuName" value="${view.menuName}"/></li>
		<li><label>상품 가격</label>
		<input name="menuPrice" value="${view.menuPrice}"/></li>
		<li><label>상품 정보</label>
		<input name="menuInfo" value="${view.menuInfo}"/></li>
		<li><label>이미지 이름</label>
		<input name="imgName" value="${view.imgName}"/></li>
		<li><img style="width: 300px; height: 300px;" alt="img_area"
		 src="<c:url value='/resources/upload_img/${view.imgSource}.jpg'/>">		 
		 </li>
	<a href="delete_menu_item?menuName1=${view.menuName}">삭제하기</a>
	</c:forEach>	
	<%=request.getRealPath("/") %>
</body>
</html>
