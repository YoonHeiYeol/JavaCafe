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
  <h3>메뉴 추가하기</h3>
<c:forEach var="view" items="${menuImageList}">
  <li>=========================</li>
  <li>이미지 코드 : ${view.imgCode}</li>
  <li>카테고리 코드 : ${view.cateCode}</li>
  <li>이미지 이름 : ${view.imgName}</li>
  <li>이미지 소스 : ${view.imgSource}</li>
  <li>이미지 url : ${view.imgUrl}</li>
</c:forEach>
</body>
</html>
