<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Trylingual! | Viewing... </title> <!-- add word -->
	<!-- link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >  -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" > 
	<link rel="stylesheet" type="text/css" href="css/styles.css" > 
	<link href="https://fonts.googleapis.com/css?family=Special+Elite" rel="stylesheet">
	
</head>
<body>

	<c:import url="/WEB-INF/jsp-snippets/header.jsp" />

	<%if (request.getAttribute("wordPair") == null) {%>
		<!-- TODO: Send 404 error in Servlet's response -->
        <div class="alert alert-danger" role="alert"><strong>Oh no!</strong> There was a problem loading this word from the database...</div>
		<a href="index.html"><i class="glyphicon glyphicon-menu-left"></i>Go back to list</a>

    <%} else { %>
	
		<div class="container">
		  <div class="col-md-4 word-view panel panel-primary">
		    <p>${wordPair.getWord()}</p> 
		  </div>
		  <div class="translates-to">
		  	<i class="glyphicon glyphicon-menu-left em3"></i>
		  	<i>translates to</i>
		  	<i class="glyphicon glyphicon-menu-right em3"></i>
		  </div>
		  <div class="col-md-4 word-view panel panel-primary">
		    <p>${wordPair.getPair()}</p> 
		  </div>
		</div>
		
		<div class="page-header">
			<h2>Categories</h2> 
			<!-- TODO: Change message if there are not categories and add button to add categories -->
			<ul class="list-group categories">
			  <li class="list-group-item">...</li> <!-- TODO: generate categories -->
			  <li class="list-group-item">...</li> 
			</ul>
		</div>	
		<div class="options">
			<a href="index.html"><i class="glyphicon glyphicon-menu-left"></i>Go back to list</a>
			<a href="edit.html?id=${wordPair.id()}" class="pull-right"><i class="glyphicon glyphicon-pencil"></i>Edit</a>
			<a href="#confirmDeleteModal" class="pull-right" data-toggle="modal" data-word-id="${wordPair.id()}"><i class="glyphicon glyphicon-trash"></i>Delete</a>	
		</div>
    <%}%>
	

	
	<c:import url="/WEB-INF/jsp-snippets/required-js.jsp" />
	<c:import url="/WEB-INF/jsp-snippets/add-new-word-modal.jsp" />
	<!-- Must be imported after jQuery imports -->
	<c:import url="/WEB-INF/jsp-snippets/confirm-delete-modal.jsp" />
	
	
	
		
</body>
</html>