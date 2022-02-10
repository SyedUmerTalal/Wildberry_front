<div class="content-wrapper">
  <section class="content-header">
    <h1>
        <?php echo !empty($title)?$title:'Online Paid Order Details';?>
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
                <small class="text-success"><i class="fa fa-calendar"></i> Order Time: <?php  
                $db = $record->checkout_created_at;
                $timestamp = strtotime($db);
                echo date("F j, Y, g:i a",$timestamp);?></small> <br>
                
                <?php if(!empty($record->name)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Customer Name</span>
                      <span class="col-md-10 view_details"><?php echo $record->name;?></span>
                  </div>  
                <?php endif;?>

                 <?php if(!empty($record->email)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Customer Email</span>
                      <span class="col-md-10 view_details"><?php echo $record->email;?></span>
                  </div>  
                <?php endif;?>

                 <?php if(!empty($record->phone)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Customer Phone</span>
                      <span class="col-md-10 view_details"><?php echo $record->phone;?></span>
                  </div>  
                <?php endif;?>

                 <?php if(!empty($record->address)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Customer Address</span>
                      <span class="col-md-10 view_details"><?php echo $record->address;?></span>
                  </div>  
                <?php endif;?>

                 <?php if(!empty($record->req)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Customer Request</span>
                      <span class="col-md-10 view_details"><?php echo $record->req;?></span>
                  </div>  
                <?php endif;?>

                <?php if(!empty($record->total_amount)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Customer Total Amount</span>
                      <span class="col-md-10 view_details"><?php echo $record->total_amount;?></span>
                  </div>  
                <?php endif;?>
                

                <?php if($this->session->userdata('master_admin_role') == 'master admin'){?>
                
                <?php if(!empty($record->rider)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Assigned Rider</span>
                      <span class="col-md-10 view_details"><?php echo $record->rider;?></span>
                  </div>  
                <?php endif;?>
                
                <?php if(!empty($record->card_name)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Customer Card Name</span>
                      <span class="col-md-10 view_details"><?php echo $record->card_name;?></span>
                  </div>  
                <?php endif;?>

                 <?php if(!empty($record->card_number)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Customer Card Number</span>
                      <span class="col-md-10 view_details"><?php echo $record->card_number;?></span>
                  </div>  
                <?php endif;?>

                 <?php if(!empty($record->payment_created_at)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Payment Time</span>
                      <span class="col-md-10 view_details"><?php echo $record->payment_created_at;?></span>
                  </div>  
                <?php endif;?>
                
                <?php } ?>
                
                <?php if(!empty($d->product_name)):?>
                  <div class="form-group clearfix">
                      <span class="col-md-2 view_label">Product Name</span>
                      <span class="col-md-10 view_details"><?= $d->product_name;?></span>
                  </div>  
                <?php endif;?>

                <table class="table table-bordered table-striped">
                  <thead>
                    <th>Product Name</th>
                    <th>Product Price</th>
                    <th>Product Quantity</th>
                    <th>Product Image</th>
                  </thead>
                  <tbody>
              <?php foreach($product as $d):?>
                <tr>
                  <td><?= $d->product_name;?></td>
                  <td><?= $d->product_price;?></td>
                  <td><?= $d->qty;?></td>
                  <td><?php echo !empty($d->product_image)?'<img src="'.base_url('uploads/product/').$d->product_image.'" height="50">':'';?></td> 
                </tr>
              <?php endforeach;?>
              </tbody>
              </table>

          

              </div>      
          </div>
        </div>   
      </div>
    </div>
  </section>
</div>