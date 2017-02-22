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

	      	<form class="form-inline" method="post" action="new-word.html" >
			  <div class="form-group">
			    <label class="sr-only" for="input-word">Word</label>
			    <input type="text" class="form-control" id="input-word" placeholder="Word or Expression" name="word">
			  </div>
			  <div class="form-group">
			    <label class="sr-only" for="input-translation">Translation</label>
			    <input type="text" class="form-control" id="input-translation" placeholder="Translation" name="translation">
			  </div>
			  <!-- TODO: Allow to add categories -->
			  <div class="modal-footer">
		        <button type="submit" class="btn btn-primary">Save changes</button>
	    	    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
		      </div>
			</form>
	        
	      </div>

	    </div>
	  </div>
	</div>	

