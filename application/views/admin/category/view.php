<div class="content-wrapper">
  <section class="content-header">
    <h1>
        <?php echo !empty($title)?$title:'Title';?>
    </h1>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-md-12">s
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">View Data</h3>
          </div>     
          <div class="col-md-12">
              <div class="box-body box-body-view">
                
                <?php if(isset($record)){?>
                <small class="text-success"><i class="fa fa-calendar"></i> Created on: <?php  
                $db = $record->category_created_at;
                $timestamp = strtotime($db);
                echo date("F j, Y, g:i a",$timestamp);?></small> <br>

                <small class="text-info"><i class="fa fa-calendar"></i> Updated on: <?php  
                $db2 = $record->category_updated_at;
                $timestamp2 = strtotime($db2);
                echo date("F j, Y, g:i a",$timestamp2);?></small> 
               <?php }?>

                <?php if(!empty($record->category_name)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Category Name</span>
                      <span class="col-md-10 view_details"><?php echo $record->category_name;?></span>
                  </div>  
                <?php endif;?>

                <?php if(!empty($record->mb_name)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Meal Time</span>
                      <span class="col-md-10 view_details"><?php echo $record->mb_name;?></span>
                  </div>  
                <?php endif;?>

              <!-- <?php $meal_time = get_list("meal_time",array("meal_time_id"=>$record->meal_time_id),""); ?> 

              <?php if(isset($meal_time[0]->meal_time_name)){ ?>

                <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Meal Time</span>
                      <span class="col-md-10 view_details"><?=$meal_time[0]->meal_time_name; ?></span>
                </div> 
              <?php } ?>  -->

              <?php if(!empty($record->feature)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Is Featured</span>
                      <span class="col-md-10 view_details"><?php echo $record->feature;?></span>
                  </div>  
              <?php endif;?>

               <?php if(!empty($record->category_image)):?>
                <div class="form-group clearfix">
                  <span class="col-md-2 view_label">Image</span>
                  <span class="col-md-10 view_details"><img src="<?php echo !empty($record->category_image)?base_url('uploads/category/').$record->category_image:base_url('assets/front/images/placeholder.png')?>" height="80px"></span>
                </div>  
              <?php endif;?>

              </div>      
          </div>
        </div>   
      </div>
    </div>
  </section>
</div>
