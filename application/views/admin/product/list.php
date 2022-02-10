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
          <div class="box-header with-border">  
            <a href="<?php echo site_url('admin/'.$table_name.'/form/add');?>" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
          </div>  
          <div class="box-body">
            <table id="datatable" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>S.No</th> 
                  <th>Category Name</th>
                  <th>Product Name</th>
                  <th>Product Price</th>
                  <th>Product Description</th>
                  <th>Product Image</th>
                  <th>Stock Status</th>
                  <th>Stock</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>            
                <?php $i=1; if(!empty($records)): foreach($records as $record):?>    
                <tr>
                  <td><?php echo $i;?></td>

                  <td><?php echo !empty($record->category_name)?$record->category_name:'';?></td>
                  <td><?php echo !empty($record->product_name)?$record->product_name:'';?></td>
                  <td><?php echo !empty($record->product_price)?$record->product_price:'';?></td>
                  <td><?php echo !empty($record->product_desc)?$record->product_desc:'';?></td>
                  <td><?php echo !empty($record->product_image)?'<img src="'.base_url('uploads/product/').$record->product_image.'" height="50">':'';?></td>
                  <td><?php echo !empty($record->stock)?$record->stock:'';?></td> 
                     <td><button type="button" class="btn btn-primary reserve_table" data-toggle="modal" data-target="#remarksmodal" data-id="<?= $record->$record_id;?>" data-whatever="@mdo">Manage</button></td>
                  <td>
                    <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/form/edit/').$record->$record_id:'';?>"><span class="edit_icon"><i class="fa fa-pencil" aria-hidden="true"></i></span></a>
                    <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/view/').$record->$record_id:'';?>"><span class="view_icon"><i class="fa fa-eye" aria-hidden="true"></i></span></a>
                    <a href="<?php echo !empty($record->$record_id)?base_url('admin/'.$table_name.'/form/duplicate/').$record->$record_id:'';?>"><span class="duplicate_icon"><i class="fa fa-clone" aria-hidden="true"></i></span></a>
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
        <h5 class="modal-title" id="remarksmodalLabel">Manage Stock</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?= base_url('admin/product/manage_stock');?>" method="post">
          <input type="hidden" id="hiddenID" name="product_id">
          <label>Choose</label>
          <select class="form-control" required="" name="stock">
            <option value="In Stock" selected="">In Stock</option>
            <option value="Out Of Stock">Out Of Stock</option>
          </select> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="color: black">Close</button>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>