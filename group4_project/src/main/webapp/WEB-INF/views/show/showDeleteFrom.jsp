<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/show.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/show.js"></script>
<style type="text/css">
.btnBlack{
	background-color: #333;
	color: #fff;
	border-radius:5px;
	border-color: #333;
	width:100px; 
	height:30px;
}
.btnBlack:hover {
	background-color:#646566;
	color:#fff;
	border-color:#646566;
	width:100px; 
	height:30px;
}

</style>
</head>
<body class="showBody">
<div class="page-main">
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	<div class="align-center">
		<h1>삭제가 완료되었습니다.</h1>
		<br>
		<ul>
			<li>
				<input type="button" class="btnBlack" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/show/showReservationForm.do">
				<input type="button" class="btnBlack" value="메인으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do">		
			</li>
		</ul>
	</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</div>

</body>
</html>