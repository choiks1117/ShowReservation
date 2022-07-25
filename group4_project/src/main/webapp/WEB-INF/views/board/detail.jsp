<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판상세글</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/board.js"></script>
</head>
<body>
<div class="page-main">
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	<div class="content-main">
		<br>
		<h2 id="title_s">${board.bo_title}</h2>
		<ul class="detail-info">
			<li>
			<br><br>
				작성일 : ${board.bo_reg_date}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				수정일 : ${board.bo_mod_date}
			</li>
		</ul>
		<hr size="1" noshade="noshade" width="100%">
		<div style="height: 500px; overflow: auto">
		<p id="write_s">
			${board.bo_write}
		</p>
		</div>
		<hr size="2" noshade="noshade" width="100%">
		<h3 id="nickname">닉네임님(me_key)</h3>
		<div id="reply_div">
			<input type="text" style="margin:0 20px; width:80%; height:20px;" 
			class="form-control"
				placeholder="댓글 작성란" name="commentText">
			<input type="submit" class="btn-primary" value="등록">
			<form id="re_form">
				<input type="hidden" name="bo_key" value="${board.bo_key}" id="bo_key">
			</form>
		</div>
		<hr size="1" noshade="noshade" width="100%">
		<ul>
			<li><br>닉네임(me_key)<br><br></li>
			<li>등록한 댓글(bom_key)</li>
			<li id="bom_regdate">작성일(bom_reg_date)</li>
			<li><br>
			<input type="submit" value="답글" onclick="">
			</li>
		</ul>
	</div>
</div>
</body>
</html>




