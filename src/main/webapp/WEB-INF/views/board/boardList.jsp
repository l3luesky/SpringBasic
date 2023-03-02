<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 
  <div class="card">
    <div class="card-header">
	    <div class="jumbotron jumbotron-fluid">
			<div class="container">
			    <h1>Spring Framework~</h1>
			    <p>Bootstrap is the most popular HTML, CSS...</p>
			</div>
		</div>
    </div>
    <div class="card-body">
    	<div class="row">
    		<div class="col-lg-2">
    			<jsp:include page="left.jsp"></jsp:include>
    		</div>
    		<div class="col-lg-7">
    			<table class="table table-bordered">
    				<thead>
	    				<tr>
	    					<th>번호</th>
	    					<th>제목</th>
	    					<th>작성자</th>
	    					<th>작성일</th>
	    					<th>조회수</th>
	    				</tr>
    				</thead>
    				<tbody>
    					<c:forEach var="vo" items="${list}">
		    				<tr>
		    					<th>${vo.idx}</th>
		    					<th>
		    						<a href="${path}/view.do?idx=${vo.idx}">${vo.title}</a>
	    						</th>
		    					<th>${vo.writer}</th>
		    					<th>${vo.indate}</th>
		    					<th>${vo.count}</th>
		    				</tr>
    					</c:forEach>
    				</tbody>
    			</table>
				<button class="btn-primary btn-sm" onclick="location.href='${path}/register.do'">글쓰기</button>
    		</div>
    		<div class="col-lg-3">
    			<jsp:include page="right.jsp"></jsp:include>
    		</div>
    	</div>
    </div> 
    <div class="card-footer">김재민 개인 spring 공부</div>
  </div>

</body>
</html>

