
<section class="cake-sec">
    <div class="container-fluid">
        <h1 class="cake-heading">custom cakes</h1>
        <div class="row">
             
            <?php foreach($cake as $d):?>
            <div class="col-lg-3 col-md-6 col-6">
    				<a href="<?= base_url('cake_detail/').$d->cake_id;?>"> 
    					<div class="gallery-overlay sh-gallery">
    						<div class="overlay overlay-1">
    							<h1 class="overlay-heading"><?= $d->name;?></h1>
    							<!--<p class="overlay-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lorem nunc, fringilla in sapien quis, eleifend interdum libero.</p>-->
    							<!--<span class="cart">-->
           <!--                     <i class="fas fa-shopping-cart"></i>-->
           <!--                 </span>-->
    						</div>
    						<img src="<?= base_url('uploads/cake/').$d->image;?>" alt="" class="gallery-img">
    						
    					</div>
    				</a>    
    		</div>
    		<?php endforeach;?>
    		
    		
    		<div class="col-lg-12">
    		    <button type="button" class="btn btn-primary reserve_table button-cake-modal" data-toggle="modal" data-target="#cakemodal">Custom Cakes</button>
    		</div>
        </div>
    </div>
</section>

<div class="modal fade" id="cakemodal" tabindex="-1" role="dialog" aria-labelledby="cakemodal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="remarksmodalLabel">Custom Cake</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body sh-cake-modal">
        <form action="<?= base_url('cake/custom_order') ?>" method="post" enctype="multipart/form-data">
          <input type="text" name="name" id="full_name" placeholder="Name" required>
          <input type="number" name="phone" id="phone" placeholder="Phone Number" required>
         <input type="email" name="email" id="email" placeholder="Email" required>
         <textarea class="form-control" name="msg" id="message" placeholder="Any Message"></textarea>
         <div>
             <label class="upload-label" for="filetn">
                 <input type="file" class="custom-file-input-form" id="filetn" name="image">
                 <div class="uploadbox">
                     <p>Reference Image (If any)</p>
                     <i class="fa fa-folder"></i>
                 </div>
             </label>
         </div>
                                        
        
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script>

$('.button-cake-modal').click(function(){
    $('#cakemodal .modal-dialog').removeClass('transform');
});
    
</script>

<script type="text/javascript">
             jQuery('input#filetn').change(function(){
              let file_val =  jQuery(this).val();
              let file_name = file_val.match(/\\([^\\]+)$/)[1];
              jQuery(this).closest('label').find('.uploadbox p').text(file_name);
          });
    
      </script>

	                