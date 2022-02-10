<?php
$table_name = $this->uri->segment(2);
$record_id = $this->uri->segment(2).'_id';
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
          <div class="box-body">
            <table id="datatable" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>S.No</th> 
                  <th>Name </th>
                  <th>Email </th>
                  <th>Phone </th>
                  <th>Person Quantity</th>
                  <th>Date </th>
                  <th>Time </th>
                  <th>Status </th>
                  <th>Remarks</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>            
                <?php $i=1; if(!empty($records)): foreach($records as $record):?>    
                <tr>
                  <td><?php echo $i;?></td>

                  <td><?php echo !empty($record->name)?$record->name:'';?></td>
                  <td><?php echo !empty($record->email)?$record->email:'';?></td>
                  <td><?php echo !empty($record->phone)?$record->phone:'';?></td>
                  <td><?php echo !empty($record->person_qty)?$record->person_qty:'';?></td>
                  <td><?php echo !empty($record->date)?$record->date:'';?></td>
                  <td><?php echo !empty($record->time)?$record->time:'';?></td>
                  <td><?php echo !empty($record->approval)?$record->approval:'';?></td>
                  
                  <!-- <td>  
                  <label class="switch">
                    <input type="checkbox">
                    <span class="slider round"></span>
                  </label>
                  </td> -->
                  <td>
                    <!-- <select class="form-control">
                      <option value="pending" selected="">Pending</option>
                      <option value="accept">Accept</option>
                      <option value="reject">Reject</option>
                    </select> -->

                    <button type="button" class="btn btn-primary reserve_table" data-toggle="modal" data-target="#remarksmodal" data-id="<?= $record->table_reservation_id;?>" data-whatever="@mdo">Remarks</button>
                  </td>
                 
                  <td>
                    <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/view/').$record->$record_id:'';?>"><span class="view_icon"><i class="fa fa-eye" aria-hidden="true"></i></span></a>
                    <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/delete/').$record->$record_id:'';?>"><span class="delete_icon"><i class="fa fa-trash" aria-hidden="true"></i></span></a>
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
        <h5 class="modal-title" id="remarksmodalLabel">Send Table Reservation Remarks to User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?= base_url('admin/table_reservation/send_remarks');?>" method="post">
          <input type="hidden" id="hiddenID" name="table_reservation_id">
          <label>Action</label>
          <select class="form-control" required="" name="approval">
            <option value="pending" selected="">Pending</option>
            <option value="accept">Accept</option>
            <option value="reject">Reject</option>
          </select> 
           <br>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text" required="" name="admin_remarks"></textarea>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="color: black">Close</button>
        <button type="submit" class="btn btn-primary">Send Remarks</button>
        </form>
      </div>
    </div>
  </div>
</div>

