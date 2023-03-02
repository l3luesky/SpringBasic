<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="${path}/resources/css/style.css">
  <script type="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
 
  <div class="card" style="min-height: 500px; max-height: 1000px;">
  	<div class="row">
  		<div class="col-lg-12">
  			<div class="card-body">
  				<c:if test="${empty muser}">
	  				<h4 class="card-title">GUEST</h4>
	  				<p class="card-text">회원님 Welcome!</p>
	  				<form action="${path}/login.do" method="post">
						<div class="form-group">
						    <label for="memId">아이디:</label>
						    <input type="text" class="form-control" placeholder="Enter memId" name="memId">
						</div>
						<div class="form-group">
						    <label for="memPwd">비밀번호:</label>
						    <input type="text" class="form-control" placeholder="Enter memPwd" name="memPwd">
						</div>
						<button type="submit" class="btn btn-secondary btn-sm form-control">로그인</button>
	  				</form>
  				</c:if>
  				<c:if test="${!empty muser}">
	  				<h4 class="card-title">${muser.memName}</h4>
	  				<p class="card-text">회원님 Welcome!</p>
	  				<form action="${path}/logout.do" method="post">
	  					<button type="submit" class="btn btn-primary form-control">로그아웃</button>
	  				</form>
  				</c:if>
  			</div>
  		</div>
  	</div>
  </div>

</body>
</html>

