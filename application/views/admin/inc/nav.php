   <aside class="main-sidebar">
  <section class="sidebar">
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo !empty($this->session->userdata('master_admin_image'))?base_url('uploads/admin/').$this->session->userdata('master_admin_image'):base_url('admin/assets/admin/img/placeholder.png');?>" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo !empty($this->session->userdata('master_admin_name'))?$this->session->userdata('master_admin_name'):'Name';?></p>
      </div>
    </div>
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">MAIN NAVIGATION</li>
      <li>
        <a href="<?php echo base_url('admin');?>">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>
      <?php if($this->session->userdata('master_admin_role') == 'master admin'){?>
      <li class="treeview">
        <a href="javascript">
          <i class="fa fa-gear"></i>
          <span>Settings</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="<?php echo base_url('admin/settings/general');?>"><i class="fa fa-circle-o"></i>General</a></li>
        </ul>
      </li>
     
       <li class="treeview">
          <a href="javascript">
            <i class="fa fa-envelope"></i>
            <span>Users</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="<?php echo base_url('admin/user');?>"><i class="fa fa-circle-o"></i>Users</a></li> 
         </ul>
       </li>

       <li class="treeview">
          <a href="javascript">
            <i class="fa fa-bars"></i>
            <span>Menu</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="<?php echo base_url('admin/category');?>"><i class="fa fa-circle-o"></i>Menu Category</a></li>
           <li><a href="<?php echo base_url('admin/product');?>"><i class="fa fa-circle-o"></i>Menu Products</a></li>
         </ul>
       </li>
        
      <li class="treeview">
          <a href="javascript">
            <i class="fa fa-bars"></i>
            <span>Cakes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="<?php echo base_url('admin/cake');?>"><i class="fa fa-circle-o"></i>Manage</a></li>
         </ul>
       </li>

       <li class="treeview">
          <a href="javascript">
            <i class="fa fa-bars"></i>
            <span>HomePage Content</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="<?php echo base_url('admin/homebnr');?>"><i class="fa fa-circle-o"></i>Home Banner</a></li>
           <!-- <li><a href="<?php echo base_url('admin/cat_bnr');?>"><i class="fa fa-circle-o"></i>Catgory Banner</a></li> -->
         </ul>
       </li>
       <li class="treeview">
          <a href="javascript">
            <i class="fa fa-bars"></i>
            <span>Queries</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="<?php echo base_url('admin/table_reservation');?>"><i class="fa fa-circle-o"></i>Table Reservation</a></li>
           <li><a href="<?php echo base_url('admin/contact');?>"><i class="fa fa-circle-o"></i>Contact Us</a></li>
           <li><a href="<?php echo base_url('admin/newsletter');?>"><i class="fa fa-circle-o"></i>Newsletter</a></li>
           <li><a href="<?php echo base_url('admin/custom_order');?>"><i class="fa fa-circle-o"></i>Custom Cakes</a></li>
         </ul>
       </li>

       
        <li class="treeview">
          <a href="javascript">
            <i class="fa fa-bars"></i>
            <span>Payments</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="<?php echo base_url('admin/payment');?>"><i class="fa fa-circle-o"></i>Details</a></li>
         </ul>
       </li>
       
       
       <li class="treeview">
          <a href="javascript">
            <i class="fa fa-bars"></i>
            <span>Orders</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="<?php echo base_url('admin/checkout');?>"><i class="fa fa-circle-o"></i>Online Orders</a></li>
           <li><a href="<?php echo base_url('admin/checkout/cod');?>"><i class="fa fa-circle-o"></i>COD Orders</a></li>
         </ul>
       </li>
     <?php } ?>
     
     <?php if($this->session->userdata('master_admin_role') == 'rider'){?>
       <li class="treeview">
          <a href="javascript">
            <i class="fa fa-bars"></i>
            <span>Orders</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a href="<?php echo base_url('admin/checkout/list_rider');?>"><i class="fa fa-circle-o"></i>Online Orders</a></li>
           <li><a href="<?php echo base_url('admin/checkout/list_cod_rider');?>"><i class="fa fa-circle-o"></i>COD Orders</a></li>
         </ul>
       </li>
    <?php } ?>
    </ul>

</section>
</aside>
<?php if(isset($output)):?>
  <div class="content-wrapper">    
    <?php echo $output;?> 
  </div>
  <?php endif;?>