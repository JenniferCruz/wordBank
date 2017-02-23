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
	        <form method="post" action="delete.html" class="form-inline">
	        	<input type="hidden" value="" name="id" />	        	
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>	      
	        	<input type="submit" class="btn btn-primary" value="Yes, finish it!"/>
	        	<!-- TODO: is the onclick property necessary? -->
	        </form>
	      </div>
		          
		</div>
		</div>	
	</div>
	
	<script>
		// relies on calling tag having the property data-word-id="${wp.id()}"
		$('#confirmDeleteModal').on('show.bs.modal', function(e) {
			var wID = $(e.relatedTarget).data('word-id'); // take word-id from 'calling' element
			$(e.currentTarget).find('input[name="id"]').val(wID); // set value of the hidden input field whose name is id, to wID
			// code from http://jsfiddle.net/k7FC2/
		});
	</script>
	    
	