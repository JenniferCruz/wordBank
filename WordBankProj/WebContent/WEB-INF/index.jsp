<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Trylingual!</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" > 
	<style>
		body {
			width: 800px;
			margin-left: auto;
			margin-right: auto;
		}
		
		td .glyphicon {
			margin-left: 10px;
			margin-right: 5px;
		}
	</style>
</head>
<body>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary pull-right btn-success" 
		data-toggle="modal" data-target="#newWordFormModal">NEW WORD</button>
	
	<!-- Why doesn't load? -->
	<a class="btn btn-default pull-right" href="new-expression" role="button">BAD</a>
	
	<div class="page-header">
	  <h1>TryLingual! <small>Your word bank contains the following words.</small></h1>
	</div>

	<table class="table table-hover">
		<tr>
			<th>ID</th>
			<th>Word</th>
			<th>Translation</th>
			<th>Tags</th>
			<th>Options</th>
		</tr>
		<c:forEach items="${wordpairs}" var="wp">
			<tr>
				<td class="word-id">${wp.id()}</td>
				<td class="word">${wp.getWord()}</td>
				<td class="translation">${wp.getPair()}</td>
				<td class="tags">...</td>        
				<td class="options">
					<a href="view.html?id=${wp.id()}" value="test"><i class="glyphicon glyphicon-eye-open"></i></a> <!-- TODO: Servlet - to practice -->
					<a href="edit.html?id=${wp.id()}" value="test"><i class="glyphicon glyphicon-pencil"></i></a> <!-- TODO: Servlet - to practice -->
					<a href="#confirmDeleteModal" data-toggle="modal"><i class="glyphicon glyphicon-trash"></i></a> <!-- TODO: Pass id to modal -->
					<a href="#tagWordFormModal" data-toggle="modal"><i class="glyphicon glyphicon-tags"></i></a> <!-- TODO: Pass id to modal -->
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<!-- Modal: Form to add new word -->
	<!-- TODO: Add servlet on form submit -->
	<div class="modal fade" id="newWordFormModal" tabindex="-1" role="dialog" aria-labelledby="newWordModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="newWordModal">You are adding a new word</h4>
	      </div>
	      <div class="modal-body">

	      	<form class="form-inline">
			  <div class="form-group">
			    <label class="sr-only" for="input-word">Word</label>
			    <input type="text" class="form-control" id="input-word" placeholder="Word or Expression">
			  </div>
			  <div class="form-group">
			    <label class="sr-only" for="input-translation">Translation</label>
			    <input type="password" class="form-control" id="input-translation" placeholder="Translation">
			  </div>
			  <!-- TODO: Allow to add categories -->
			  <button type="submit" class="btn btn-default">Save</button>
			</form>
	        
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>	

	<!-- Modal: Form to add tags to a word -->
	<!-- TODO: Add servlet on form submit -->
	<div class="modal fade" id="tagWordFormModal" tabindex="-1" role="dialog" aria-labelledby="tagWordModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="tagWordModal">Tags for ... </h4>
	      </div>
	      <div class="modal-body">
			<!-- TODO: form -->	  
			<form class="form-horizontal">
				<input type="text" class="form-control" placeholder="category">
				<input type="text" class="form-control" placeholder="category">
				<input type="text" class="form-control" placeholder="category">
				<input type="text" class="form-control" placeholder="category">
				<input type="text" class="form-control" placeholder="category">
			</form>      
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>	


	<!-- Modal: Confirm delete -->
	<!-- TODO: Add servlet on form submit -->
	<div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="deleteModal">Are you sure you want to delete this word?</h4> <!-- TODO: Add word -->
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
	        <button type="button" class="btn btn-primary">Yes, delete</button>
	      </div>
	    </div>
	  </div>
	</div>	
	
	
	



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
		crossorigin="anonymous"></script>

</body>
</html>