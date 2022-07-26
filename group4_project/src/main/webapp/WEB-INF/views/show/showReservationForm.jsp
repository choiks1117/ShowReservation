<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
</head>
<body>
<div class="page-main">
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	<h4>&nbsp;&nbsp;&nbsp;공연목록</h4>
	<!-- 지역별 찾기, 검색창 -->
	<form id="search_form" action ="searchList.do" method ="get" > <!-- 검색할땐 get을 주로 씀 -->
		<ul class="search" >
			<li>
				<input type="search" name="keyword" id="keyword">
			</li>
			<li>
				<input type="submit" value="검색" id="keyword_btn">
			</li>
			<li>
				<select name="keyfield">
					<option value="1">제목</option>
					<option value="2">지역</option>
					<option value="3">내용</option>
				</select>
			</li>
		</ul>
	<br>
	</form>
	
	<div class="align-left" style="margin:0 4% 0 0">
	<ul>
		<li>
		<!-- 리스트 띄우기 -->
		<table style="border-collapse:collapse;">
			<tr bgcolor="495057">
				<th>대표이미지</th>
				<th>제목</th>
				<th>지역</th>
				<th>날짜</th>
				<th>평점</th>
			</tr>
			<c:forEach var="show" items="${list }"> 
			<tr>
				<td><a href="showDetailForm.do?sh_key=${show.sh_key }"><img src="${pageContext.request.contextPath}/upload/${show.sh_img}" class="photo_size"></a></td>
				<td><a href="showDetailForm.do?sh_key=${show.sh_key }">${show.sh_title }</a></td>
				<td>${show.sh_place }</td>
				<td>${show.sh_date } 시간[${show.sh_time }]</td>
				<td>d<%-- ${show.sh_gpa } --%></td>
			</tr>
			</c:forEach>
		</table>
		</li>   
	</ul>
	</div>
	<div class="align-center">
		${page }
	</div>
	
	
</div>

</body>
</html>