<?php
$table_name = $this->uri->segment(2);
$form_type = $this->uri->segment(4);
$id = $this->uri->segment(5);
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
            <form role="form" action="<?= base_url('admin/Menu/save'); ?>" method="post" enctype="multipart/form-data">       
              <div class="box-body">

                 <div class="form-group">
                    <label>Category Name *</label>
                    <select rows="6" class="form-control"  id="category_id" name="category_id">
                      <option selected disabled>Select Category</option>
                      <?php if(!empty(get_list('category'))): foreach(get_list('category') as $data): ?>
                      <option value="<?= $data->category_id;?>"><?= $data->category_name;?></option>
                    <?php endforeach; endif; ?>
                    </select>
                    <?php echo form_error('category_id'); ?>
                </div>
                
                
                <div class="form-group">
                  <label>Menu Name *</label>
                  <input type="name" class="form-control" id="menu_category_name" name="menu_category_name"  
                  value="<?php echo !empty($record->menu_category_name)?$record->menu_category_name:''?>">
                  <?php echo form_error('menu_category_name'); ?>
                </div> 
                
                 <div class="form-group">
                  <label>Menu Description</label>
                  <textarea type="name" class="form-control editor" id="menu_category_desc" name="menu_category_desc" >
                      <?php echo !empty($record->menu_category_desc)?$record->menu_category_desc:''?></textarea>
                  <?php echo form_error('menu_category_desc'); ?>
                </div>  
                
                <div class="form-group">
                  <label>Image</label>
                  <div class="input-group-btn">
                    <div class="image-upload">                      
                      <img src="<?php echo !empty($record->menu_category_thumbnail)?base_url('uploads/category/').$record->menu_category_thumbnail:base_url('assets/admin/img/placeholder.png')?>">
                      <div class="file-btn">
                        <input type="file" id="menu_category_thumbnail" name="menu_category_thumbnail">
                        <input type="text" id="menu_category_thumbnail" name="menu_category_thumbnail" value="<?php echo !empty($record->menu_category_thumbnail)?$record->menu_category_thumbnail:''?>" hidden>
                        <label class="btn btn-info">Upload</label>
                      </div>
                    </div>
                  </div>
                   <?php echo form_error('menu_category_thumbnail'); ?>                
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