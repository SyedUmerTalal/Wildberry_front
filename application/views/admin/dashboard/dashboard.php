 <div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Dashboard
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
    <?php 
    $rider = $this->session->userdata('master_admin_name');
    ?>
    <?php if($this->session->userdata('master_admin_role') == 'rider'){?>
       <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>COD Orders</p>
              <h3><?php echo $this->db->where(array('checkout_status' => 'enable', 'cod' => 'cod', 'rider' => $rider))->count_all_results('checkout');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/checkout/list_cod_rider')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>
      
      <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>Online Paid Orders</p>
              <h3><?php echo $this->db->where(array('checkout_status' => 'enable', 'cod' => 'online', 'rider' => $rider))->count_all_results('checkout');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/checkout/list_rider')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>
    <?php } ?>
  <?php if($this->session->userdata('master_admin_role') == 'master admin'){?>
  
       <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>COD Orders</p>
              <h3><?php echo $this->db->where(array('checkout_status' => 'enable', 'cod' => 'cod'))->count_all_results('checkout');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/checkout/cod')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>
      
      <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>Online Paid Orders</p>
              <h3><?php echo $this->db->where(array('checkout_status' => 'enable', 'cod' => 'online'))->count_all_results('checkout');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/checkout/')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>

       <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>Payment Details</p>
              <h3><?php echo $this->db->where('payment_status', 'enable')->count_all_results('payment');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/payment')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>
      
      

       <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>Custom Cakes Request</p>
              <h3><?php echo $this->db->where('custom_order_status', 'enable')->count_all_results('custom_order');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/custom_order')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>
      
      <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>Contact Queries Details</p>
              <h3><?php echo $this->db->where('contact_status', 'enable')->count_all_results('contact');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/contact')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>

      <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>Table Reservation Details</p>
              <h3><?php echo $this->db->where('table_reservation_status', 'enable')->count_all_results('table_reservation');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/table_reservation')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>
      
       <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua">
            <div class="inner">
              <p>Newsletter Details</p>
              <h3><?php echo $this->db->where('newsletter_status', 'enable')->count_all_results('newsletter');?></h3>
            </div>
            <div class="icon">
              <i class="fa fa-envelope"></i>
            </div>
            <a href="<?php echo base_url('admin/newsletter')?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
      </div>
  <?php }?>

    </div>
    <!-- /.row -->


  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
