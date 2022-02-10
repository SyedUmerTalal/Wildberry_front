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

              <?php if($form_type == 'add') { ?>

              <div class="form-group">
                <label>Category Name</label>
                <select rows="6" class="form-control"  id="category_id" name="category_id">
                  <option selected disabled>Select Category</option>
                  <?php foreach($cat as $data):?>
                  <option value="<?= $data->category_id;?>"><?= $data->category_name;?></option>
                <?php endforeach;?>
                </select>
                <?php echo form_error('category_id'); ?>
              </div>

              <?php } else { ?>

              

               <div class="form-group">
                <label>Category Name</label>
                <select rows="6" class="form-control"  id="category_id" name="category_id">
                  <option selected disabled>Select Category</option>
                  <?php foreach($cat as $data):?>
                  <option value="<?= $data->category_id;?>" <?= $data->category_id == $record->category_id ? 'selected' : '' ?>><?= $data->category_name;?></option>

                <?php endforeach;?>
                </select>
                <?php echo form_error('category_id'); ?>
              </div>

              <?php } ?>

                <div class="form-group">
                  <label>Product Name</label>
                  <input type="name" class="form-control" id="product_name" name="product_name" required value="<?php echo !empty($record->product_name)?$record->product_name:''?>">
                  <?php echo form_error('product_name'); ?>
                </div> 

                <div class="form-group">
                  <label>Product Price</label>
                  <input type="name" class="form-control" id="product_price" name="product_price" required value="<?php echo !empty($record->product_price)?$record->product_price:''?>">
                  <?php echo form_error('product_price'); ?>
                </div> 

                <div class="form-group">
                  <label>Product Description</label>
                  <textarea type="name" class="form-control" id="product_desc" name="product_desc" required><?php echo !empty($record->product_desc)?$record->product_desc:''?></textarea>
                  <?php echo form_error('product_desc'); ?>
                </div>  
                
                
                <div class="form-group">
                  <label>Product Image</label>
                  <div class="input-group-btn">
                    <div class="image-upload">                      
                      <img src="<?php echo !empty($record->product_image)?base_url('uploads/product/').$record->product_image:base_url('assets/admin/img/placeholder.png')?>">
                      <div class="file-btn">
                        <input type="file" id="product_image" name="product_image">
                        <input type="text" id="product_image" name="product_image" value="<?php echo !empty($record->product_image)?$record->product_image:''?>" hidden>
                        <label class="btn btn-info">Upload</label>
                      </div>
                    </div>
                  </div>
                   <?php echo form_error('product_image'); ?>                
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