<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Editing word...</title>
	<!-- link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >  -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" > 	<link rel="stylesheet" type="text/css" href="css/styles.css" > 
	<link href="https://fonts.googleapis.com/css?family=Special+Elite" rel="stylesheet">
	
</head>
<body>

	<c:import url="/WEB-INF/jsp-snippets/header.jsp" />

	<form class="form-horizontal" method="post" action="edit.html">
	  <div class="form-group">
	    <label for="word-1" class="col-sm-2 control-label">Word</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="word-1" name="word" value="${wordPair.getWord()}">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="word-2" class="col-sm-2 control-label">Translation</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="word-2" name="translation" value="${wordPair.getPair()}">
	    </div>
	  </div>
	  <input type="hidden" name="id" value="${wordPair.id()}">
	  <!-- TODO: Allow for categories -->
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-default">Save changes</button>
		  <a href="index.html" class="btn btn-default">Cancel</a>
		  <a href="index.html" class="pull-right">Go back to list<i class="glyphicon glyphicon-menu-right"></i></a>
		  <a href="#confirmDeleteModal" class="" data-toggle="modal" data-word-id="${wordPair.id()}"><i class="glyphicon glyphicon-trash"></i>Delete</a>
	    </div>
	  </div>
	</form>
	

	<c:import url="/WEB-INF/jsp-snippets/required-js.jsp" />
	<c:import url="/WEB-INF/jsp-snippets/add-new-word-modal.jsp" />
	<c:import url="/WEB-INF/jsp-snippets/confirm-delete-modal.jsp" />
	
</body>
</html>