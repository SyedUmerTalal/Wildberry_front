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

<style>

li.select2-selection__choice {
    background: #333 !important;
}

  </style>

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
                <label>Is Featured</label>
                <select rows="6" class="form-control"  id="feature" name="feature" required="">
                  <option selected disabled>Select for showing Homepage</option>
                  <option value="yes">YES</option>
                  <option value="no">NO</option>
                </select>
                <?php echo form_error('feature'); ?>
              </div>

               <div class="form-group">
                <label>Select Meal Time</label>
                <select rows="6" class="form-control js-example-basic-multiple "  id="meal_time_id" name="meal_time_id[]" multiple="multiple" required="">
                    <?php $meal_time = get_list("meal_time"); 
                    foreach($meal_time as $mt){ ?>
                    <option value="<?= $mt->meal_time_id ?>"> <?= $mt->meal_time_name ?> </option>
                    <?php } ?>
                </select>
                <?php echo form_error('feature'); ?>
              </div>

              <?php } else { ?>

               <div class="form-group">
                <label>Is Featured</label>
                <select rows="6" class="form-control"  id="feature" name="feature">
                  <option disabled>Select for showing Homepage</option>
                  <option value="yes" <?= $record->feature == 'yes' ? 'selected' : '' ?>>YES</option>
                  <option value="no" <?= $record->feature == 'no' ? 'selected' : '' ?>>NO</option>
                </select>
                <?php echo form_error('feature'); ?>
              </div>

               <div class="form-group">
                <label>Select Meal Time</label>
                <select rows="6" class="form-control js-example-basic-multiple "  id="meal_time_id" name="meal_time_id[]" multiple="multiple" required="">
                    <?php $meal_time = get_list("meal_time"); ?>
                    <?php foreach($meal_time as $mt): ?>
                    <option <?=  (in_array($mt->meal_time_id, $mb_id))?'selected':''; ?>  value="<?= $mt->meal_time_id ?>"> <?= $mt->meal_time_name ?> </option>
                    <?php endforeach; ?>
                </select>
                <?php echo form_error('feature'); ?>
              </div>

              <?php } ?>

                <div class="form-group">
                  <label>Category Name</label>
                  <input type="name" class="form-control" id="category_name" name="category_name" required value="<?php echo !empty($record->category_name)?$record->category_name:''?>">
                  <?php echo form_error('category_name'); ?>
                </div>                
                
                <div class="form-group">
                  <label>Image</label>
                  <div class="input-group-btn">
                    <div class="image-upload">                      
                      <img src="<?php echo !empty($record->category_image)?base_url('uploads/category/').$record->category_image:base_url('assets/admin/img/placeholder.png')?>">
                      <div class="file-btn">
                        <input type="file" id="category_image" name="category_image">
                        <input type="text" id="category_image" name="category_image" value="<?php echo !empty($record->category_image)?$record->category_image:''?>" hidden>
                        <label class="btn btn-info">Upload</label>
                      </div>
                    </div>
                  </div>
                   <?php echo form_error('category_image'); ?>                
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




<script type="text/javascript">
  

  $(document).ready(function() {
    $('.js-example-basic-multiple').select2();
});

  
</script>>
