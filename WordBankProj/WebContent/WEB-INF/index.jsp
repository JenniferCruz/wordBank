<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Trylingual!</title>
	<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" > 
	<link rel="stylesheet" type="text/css" href="css/styles.css" > 
	<style>
	</style>
</head>
<body>

	<c:import url="/WEB-INF/header.jsp" />
	
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
					<a href="#confirmDeleteModal" data-toggle="modal" data-word-id="${wp.id()}"><i class="glyphicon glyphicon-trash"></i></a> <!-- TODO: Pass id to modal -->
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


	<c:import url="/WEB-INF/required-js.jsp" />
	<!-- Must be imported after jQuery imports -->
	<c:import url="/WEB-INF/confirm-delete-modal.jsp" />

</body>
</html>