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
	        <form method="post" action="delete.html">
	        	<input type="hidden" value="${wordPair.id}" name="id" />
	        	<input type="hidden" value="${wordPair}" name="palabra" />
	        	<input type="submit" value="Yes, finish it!" />
	        </form>
	      </div>
		      
	      
	      <!-- div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
	        <button type="submit" class="btn btn-primary" formmethod="post" formaction="delete.html?id=${wp.id()}">Yes, delete</button>
	        <button type="button" class="btn btn-primary" onclick="delete.html?id=${wp.id()}">Yes, delete</button>	        	        
	      </div>
	    </div> -->
	    
	  </div>
	</div>	