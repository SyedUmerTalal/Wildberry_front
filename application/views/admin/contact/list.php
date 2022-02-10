  <?php
$table_name = $this->uri->segment(2);
$record_id = $this->uri->segment(2).'_id';
$form_type = $this->uri->segment(4);
$id = $this->uri->segment(5);
?>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <?php echo !empty($title)?$title:'Contact Queries';?>
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
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>Subject</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>            
                <?php $i=1; if(!empty($records)): foreach($records as $record):?>    
                <tr>
                  <td><?php echo $i;?></td>
                  <td><?php echo !empty($record->full_name)?$record->full_name:'';?></td>
                  <td><?php echo !empty($record->email)?$record->email:'';?></td>
                  <td><?php echo !empty($record->phone)?$record->phone:'';?></td>
                  <td><?php echo !empty($record->subject)?$record->subject:'';?></td>
                  
                  <!-- <td><?php echo !empty($record->technology_image)?'<img src="'.base_url('uploads/technology/').$record->technology_image.'" height="50">':'';?></td> -->
                  <td>
                   <!--  <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/form/edit/').$record->$record_id:'';?>"><span class="edit_icon"><i class="fa fa-pencil" aria-hidden="true"></i></span></a> -->
                    <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/view/').$record->$record_id:'';?>"><span class="view_icon"><i class="fa fa-eye" aria-hidden="true"></i></span></a>
                    <!-- <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/form/duplicate/').$record->$record_id:'';?>"><span class="duplicate_icon"><i class="fa fa-clone" aria-hidden="true"></i></span></a> -->
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
