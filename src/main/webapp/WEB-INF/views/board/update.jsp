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
    			<form action="${path}/update.do" method="post">
    				<input type="hidden" value="${vo.idx}" name="idx">
					<div class="form-group">
					    <label for="title">제목</label>
					    <input type="text" class="form-control" value="${vo.title}" name="title">
					</div>
					<div class="form-group">
					    <label for="content">내용</label>
					    <textarea rows="10" class="form-control" name="content">${vo.content}</textarea>
					</div>
					<button type="submit" class="btn btn-primary btn-sm">수정</button>
					<button type="reset" class="btn btn-warning btn-sm">취소</button>
					<button type="button" class="btn btn-info btn-sm" onclick="location.href='${path}/list.do'">목록</button>
    			</form>
    		</div>
    		<div class="col-lg-3">
    			<jsp:include page="right.jsp"></jsp:include>
    		</div>
    	</div>
    </div> 
    <div class="card-footer">Footer</div>
  </div>

</body>
</html>

