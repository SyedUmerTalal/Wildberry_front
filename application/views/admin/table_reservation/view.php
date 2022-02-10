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
                <small class="text-success"><i class="fa fa-calendar"></i> Created on: <?php  
                $db = $record->table_reservation_created_at;
                $timestamp = strtotime($db);
                echo date("F j, Y, g:i a",$timestamp);?></small> <br>

                <small class="text-info"><i class="fa fa-calendar"></i> Updated on: <?php  
                $db2 = $record->table_reservation_updated_at;
                $timestamp2 = strtotime($db2);
                echo date("F j, Y, g:i a",$timestamp2);?></small> 


                <?php if(!empty($record->name)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Full Name</span>
                      <span class="col-md-10 view_details"><?php echo $record->name;?></span>
                  </div>  
                <?php endif;?>

                <?php if(!empty($record->email)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Email</span>
                      <span class="col-md-10 view_details"><?php echo $record->email;?></span>
                  </div>  
                <?php endif;?>
                
                 <?php if(!empty($record->phone)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Phone</span>
                      <span class="col-md-10 view_details"><?php echo $record->phone;?></span>
                  </div>  
                <?php endif;?>
                
                 <?php if(!empty($record->date)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Date</span>
                      <span class="col-md-10 view_details"><?php echo $record->date;?></span>
                  </div>  
                <?php endif;?>
                
                <?php if(!empty($record->time)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Time</span>
                      <span class="col-md-10 view_details"><?php echo $record->time;?></span>
                  </div>  
                <?php endif;?>
                
                <?php if(!empty($record->person_qty)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Person Quantity</span>
                      <span class="col-md-10 view_details"><?php echo $record->person_qty;?></span>
                  </div>  
                <?php endif;?>
                 <?php if(!empty($record->special_req)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Special Request</span>
                      <span class="col-md-10 view_details"><?php echo $record->special_req;?></span>
                  </div>  
                <?php endif;?>

                <?php if(!empty($record->approval)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Approval Status</span>
                      <span class="col-md-10 view_details"><?php echo $record->approval;?></span>
                  </div>  
                <?php endif;?>

                <?php if(!empty($record->admin_remarks)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Admin Remarks</span>
                      <span class="col-md-10 view_details"><?php echo $record->admin_remarks;?></span>
                  </div>  
                <?php endif;?>
            </div>      
          </div>
        </div>   
      </div>
    </div>
  </section>
</div>