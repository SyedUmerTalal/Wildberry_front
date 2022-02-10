<?php 
$table_name = $this->uri->segment(2);
$form_type = $this->uri->segment(4);
$id = $this->uri->segment(5);
$action = '';
if($form_type == 'edit'){
  if(!empty($id)){
    $action = base_url('admin/').$table_name.'/form/edit/'.$id;
  }
  else{      
    redirect('admin/'.$table_name);
  }
}
else if($form_type == 'duplicate'){  
  if(!empty($id)){  
    $action = base_url('admin/').$table_name.'/form/duplicate/'.$id;
  }
  else{      
    redirect('admin/'.$table_name);
  }    
}
else if($form_type == 'add'){
  $action = base_url('admin/').$table_name.'/form/add';
}
else{
  redirect('admin/'.$table_name);
}
?>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <?php echo !empty($title)?$title:'Title';?>
    </h1>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title"><?php echo ucwords($form_type);?> Data</h3>
          </div>     
          <div class="col-md-6">
            <form role="form" action="<?php echo $action;?>" method="post" enctype="multipart/form-data">       
              <div class="box-body">

                <div class="form-group">
                  <label>Text</label>
                  <textarea type="name" class="form-control editor" id="txt" name="txt" required><?php echo !empty($record->txt)?$record->txt:''?></textarea>
                  <?php echo form_error('txt'); ?>
                </div>  
                
                
                <div class="form-group">
                  <label>Image One</label>
                  <div class="input-group-btn">
                    <div class="image-upload">                      
                      <img src="<?php echo !empty($record->img1)?base_url('uploads/homebnr/').$record->img1:base_url('assets/admin/img/placeholder.png')?>">
                      <div class="file-btn">
                        <input type="file" id="img1" name="img1">
                        <input type="text" id="img1" name="img1" value="<?php echo !empty($record->img1)?$record->img1:''?>" hidden>
                        <label class="btn btn-info">Upload</label>
                      </div>
                    </div>
                  </div>
                   <?php echo form_error('img1'); ?>                
                </div>  
                
                <div class="form-group">
                  <label>Image Two</label>
                  <div class="input-group-btn">
                    <div class="image-upload">                      
                      <img src="<?php echo !empty($record->img2)?base_url('uploads/homebnr/').$record->img1:base_url('assets/admin/img/placeholder.png')?>">
                      <div class="file-btn">
                        <input type="file" id="img2" name="img2">
                        <input type="text" id="img2" name="img2" value="<?php echo !empty($record->img2)?$record->img2:''?>" hidden>
                        <label class="btn btn-info">Upload</label>
                      </div>
                    </div>
                  </div>
                   <?php echo form_error('img2'); ?>                
                </div>    

               </div>
               <div class="box-footer">
                <button type="submit" class="btn btn-success">Submit</button>
              </div>    
            </form>        
          </div>
        </div>   
      </div>
    </div>
  </section>
</div>