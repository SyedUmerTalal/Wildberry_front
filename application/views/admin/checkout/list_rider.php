<?php
$table_name = $this->uri->segment(2);
$record_id = $this->uri->segment(2).'_id';
$form_type = $this->uri->segment(4);
$id = $this->uri->segment(5);
?>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <?php echo !empty($title)?$title:'Online Paid Order Details';?>
    </h1>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary"> 
          <div class="box-body">
            <table id="datatable" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>S.No</th> 
                  <th>Customer Name</th>
                  <th>Customer Phone</th>
                  <th>Customer Address</th>
                  <th>Customer Request</th>
                  <th>Total Amount</th>
                  <th>Time</th>
                  <th>Order Status</th>
                  <th>Action</th>
                  <th>Detail</th>
                </tr>
              </thead>
              <tbody>            
                <?php $i=1; if(!empty($records)): foreach($records as $record):?>    
                <tr>
                  <td><?php echo $i;?></td>
                  <td><?php echo !empty($record->name)?$record->name:'';?></td>
                  <td><?php echo !empty($record->phone)?$record->phone:'';?></td>
                  <td><?php echo !empty($record->address)?$record->address:'';?></td>
                  <td><?php echo !empty($record->req)?$record->req:'';?></td>
                  <td><?php echo !empty($record->total_amount)?$record->total_amount:'';?></td>
                  <td><?php echo !empty($record->checkout_created_at)?$record->checkout_created_at:'';?></td>
                  <td><?php echo !empty($record->order_status)?$record->order_status:'';?></td>
                  <td><button type="button" class="btn btn-primary reserve_table" data-toggle="modal" data-target="#remarksmodal" data-id="<?= $record->checkout_id;?>" data-whatever="@mdo">Remarks</button>
                  </td>
                  <td>
                    <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/view/').$record->$record_id:'';?>"><span class="view_icon"><i class="fa fa-eye" aria-hidden="true"></i></span></a>
                    <?php if($this->session->userdata('master_admin_role') == 'master admin'){?>
                    <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/delete/').$record->$record_id:'';?>"><span class="delete_icon"><i class="fa fa-trash" aria-hidden="true"></i></span></a>
                  <?php }?>
                  </td>
                </tr>
                <?php $i++; endforeach;?>  
                <?php else:?>
                  <tr>
                    <td>No Record Found</td>
                  </tr>
                <?php endif;?>
              </tbody>
            </table>
          </div>
        </div>   
      </div>
    </div>
  </section>
</div>
<div class="modal fade" id="remarksmodal" tabindex="-1" role="dialog" aria-labelledby="remarksmodalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="remarksmodalLabel">Order Status</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?= base_url('admin/checkout/order_status');?>" method="post">
          <input type="hidden" id="hiddenID" name="checkout_id">
          <label>Action</label>
          <select class="form-control" required="" name="order_status">
            <option value="pending" disabled selected="">Pending</option>
            <option value="delevired">Delevired</option>
          </select> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="color: black">Close</button>
        <button type="submit" class="btn btn-primary">Send Remarks</button>
        </form>
      </div>
    </div>
  </div>
</div>