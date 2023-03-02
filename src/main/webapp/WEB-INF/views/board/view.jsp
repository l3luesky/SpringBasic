<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%
	pageContext.setAttribute("newLineChar", "\n");
%>
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
    				<tr>
    					<td>제목</td>
    					<td>${vo.title}</td>
    				</tr>
    				<tr>
    					<td>내용</td>
    					<td>${fn:replace(vo.content,newLineChar,"<br/>")}</td>
    				</tr>
    				<tr>
    					<td>작성자</td>
    					<td>${vo.writer}</td>
    				</tr>
    				<tr>
    					<td>작성일</td>
    					<td>${fn:split(vo.indate," ")[0]}</td>
    				</tr>
    				<tr>
    					<td colspan="2" align="center">
    					<button type="submit" class="btn btn-sm btn-primary" onclick="location.href='${path}/update.do?idx=${vo.idx}'">수정</button>
    					<button type="submit" class="btn btn-sm btn-success">답글</button>
    					<button type="submit" class="btn btn-sm btn-warning" onclick="location.href='${path}/remove.do?idx=${vo.idx}'">삭제</button>
    					<button type="submit" class="btn btn-sm btn-info" onclick="location.href='${path}/list.do'">목록</button>
    					</td>
    				</tr>
    			</table>
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

