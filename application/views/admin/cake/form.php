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
      <?php echo !empty($title)?$title:'Cakes';?>
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
                  <label>Cake Name</label>
                  <input type="name" class="form-control" id="name" name="name" required value="<?php echo !empty($record->name)?$record->name:''?>">
                  <?php echo form_error('name'); ?>
                </div> 

                <div class="form-group">
                  <label>Cake Price</label>
                  <input type="name" class="form-control" id="price" name="price" required value="<?php echo !empty($record->price)?$record->price:''?>">
                  <?php echo form_error('price'); ?>
                </div> 

                <div class="form-group">
                  <label>Cake Description</label>
                  <textarea type="name" class="form-control editor" id="desc" name="desc" required><?php echo !empty($record->desc)?$record->desc:''?></textarea>
                  <?php echo form_error('desc'); ?>
                </div> 


                
                
                <div class="form-group">
                  <label>Cake Image</label>
                  <div class="input-group-btn">
                    <div class="image-upload">                      
                      <img src="<?php echo !empty($record->image)?base_url('uploads/cake/').$record->image:base_url('assets/admin/img/placeholder.png')?>">
                      <div class="file-btn">
                        <input type="file" id="image" name="image">
                        <input type="text" id="image" name="image" value="<?php echo !empty($record->image)?$record->image:''?>" hidden>
                        <label class="btn btn-info">Upload</label>
                      </div>
                    </div>
                  </div>
                   <?php echo form_error('image'); ?>                
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