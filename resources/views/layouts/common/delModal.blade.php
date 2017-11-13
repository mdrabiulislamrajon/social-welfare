<div class="modal fade" id="modal-{{ $id }}" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
>
    <div class="modal-dialog">
	    <div class="modal-content">
	    	<div class="text-danger">
		        <div class="modal-header panel-heading">
		          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		          <h4 class="modal-title">Do you want to delete this information? ?</h4>
		        </div>
		        <div class="modal-footer">
		          <form action="{{ url($url . $id) }}" method="POST">
		      		{{ csrf_field() }}
		      		{{ method_field('DELETE') }}
		            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		            <button type="submit" class="btn btn-danger">Delete</button>
		          </form>
		        </div>
	        </div><!-- /.modal-content -->
	    </div>
    </div><!-- /.modal-dialog -->
</div><!