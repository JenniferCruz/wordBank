<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Trylingual! | Viewing... </title> <!-- add word -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" > 
	<link rel="stylesheet" type="text/css" href="css/styles.css" > 
</head>
<body>

	<c:import url="/WEB-INF/header.jsp" />

	<%if (request.getAttribute("wordPair") == null) {%>

        <div class="alert alert-danger" role="alert"><strong>Oh no!</strong> There was a problem loading this word from the database...</div>

    <%} else { %>
	
		<div class="container">
		  <div class="col-md-4 well word-view">
		    <p>${wordPair.getWord()}</p> 
		  </div>
		  <div class="translates-to col-md-2">
		  	<i class="glyphicon glyphicon-chevron-left"></i>
		  	<i>translates to</i>
		  	<i class="glyphicon glyphicon-chevron-right"></i>
		  </div>
		  <div class="col-md-4 well word-view">
		    <p>${wordPair.getPair()}</p> 
		  </div>
		</div>
		
		<div class="page-header">
			<h2>Categories</h2> 
			<!-- TODO: Change message if there are not categories and add button to add categories -->
			<ul class="list-group categories">
			  <li class="list-group-item">...</li> <!-- TODO: generate categories -->
			  <li class="list-group-item">...</li> <!-- TODO: generate categories -->
			</ul>
		</div>	

    <%}%>
	
	<div class="options">
		<a href="index.html"><i class="glyphicon glyphicon-menu-left"></i>Go back to list</a>
		<a href="edit.html?id=${wordPair.id()}" class="pull-right"><i class="glyphicon glyphicon-pencil"></i>Edit</a>
		<a href="#confirmDeleteModal" class="pull-right" data-toggle="modal" data-word-id="${wordPair.id()}"><i class="glyphicon glyphicon-trash"></i>Delete</a>	
		<!-- TODO: import modal's jsp -->
	</div>
	
	<c:import url="/WEB-INF/required-js.jsp" />
	<!-- Must be imported after jQuery imports -->
	<c:import url="/WEB-INF/confirm-delete-modal.jsp" />
	
		
</body>
</html>