<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Trylingual! | Viewing... </title> <!-- add word -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" > 
</head>
<body>

	<c:import url="/WEB-INF/header.jsp" />

	< Go back to list

	<div class="container">
	  <div class="jumbotron">
	    <p>Bleak</p> 
	  </div>
	  <div class="jumbotron">
	    <p>Sombrio</p> 
	  </div>
	</div>
	
	<div class="page-header">
		Categories 
		<!-- TODO: Change message if there are not categories and add button to add categories -->
		<ul class="list-unstyled">
		  <li>...</li> <!-- TODO: generate categories -->
		</ul>
	</div>
	<div class="options">
		<a href="#"><i class="glyphicon glyphicon-menu-left"></i>Go back to list</a>
		<a href="#"><i class="glyphicon glyphicon-pencil"></i>Edit</a>
		<a href="#"><i class="glyphicon glyphicon-trash"></i>Delete</a>	
	</div>
</body>
</html>