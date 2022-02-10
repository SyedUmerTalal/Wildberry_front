<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wildberry</title>
    <!----- bootstrap ---->
    <link rel="stylesheet" href="<?= base_url('assets/front/css/bootstrap4.5.css');?>">
    
    <!-- fontawesome -->
    <link rel="stylesheet" href="<?= base_url('assets/front/links/fontawesome/css/all.css');?>">
    <!-- full page css -->
    <!-- montserrat -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
     <!--Fancy Box-->
    <link rel="stylesheet import" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css"/ defer>
    <!-- bebas neue font  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <!-- aos  -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!-- slick slider  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css" integrity="sha512-6lLUdeQ5uheMFbWm3CP271l14RsX1xtx+J5x2yeIDkkiBpeVTNhTqijME7GgRKKi6hCqovwCoBTlRBEC20M8Mg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" integrity="sha512-wR4oNhLBHf7smjy0K4oqzdWumd+r5/+6QO/vDda76MW5iug4PT7v86FoEkySIJft3XA0Ae6axhIvHrqwm793Nw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- libre baskarvile font  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital@0;1&display=swap" rel="stylesheet">
    <!-- full page css -->
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.6.6/jquery.fullPage.css">-->
    <!--FULL PAGE SCROLL-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.6.6/jquery.fullPage.css">
    <!-- custom css -->
    <link rel="stylesheet" href="<?= base_url('assets/front/css/style.css');?>">
    <link rel="icon" type="x/icon" href="<?= base_url('assets/front/homepage/favicon.png');?>">
    <!--///toastr-->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"> -->
    <!-- jquery -->
    <script src="<?= base_url('assets/front/js/jquery-3.6.0.min.js');?>"></script>
    <link rel="stylesheet" href="<?php echo base_url('assets/admin/css/alert.css');?>" />  
     <link rel="stylesheet" href="<?php echo base_url('assets/front/css/style-sh.css');?>" /> 
    <script src="<?php echo base_url('assets/admin/js/alert.js');?>"></script>
</head>
<body>

<?php if($this->session->flashdata('success')):?>
<script>alert_success("<?php echo $this->session->flashdata('success')?>");</script>
<?php endif;?>
<?php if($this->session->flashdata('error')):?>
<script>alert_danger("<?php echo $this->session->flashdata('error')?>");</script>
<?php endif;?>
<?php if($this->session->flashdata('warning')):?>
<script>alert_warning("<?php echo $this->session->flashdata('warning')?>");</script>
<?php endif;?>
<?php if($this->session->flashdata('info')):?>
<script>alert_info("<?php echo $this->session->flashdata('info')?>");</script>
<?php endif;?>

    <div class="inner-page">
        <!-- right menu  -->
        <div class="right_menu">
        <div class="row">
            <div class="col-12">
                <div class="right-brand">
                    <a href="#"><img src="<?= base_url('assets/front/homepage/logo.png');?>" alt=""></a>
                    <button class="menu-close"><i class="fas fa-times"></i></button>
                </div>
                <div class="right-menu-list">
                    <ul class="menu">
                        <!--<li class="nav-item "><a class="nav-link active" href="<?= base_url();?>">Home</a></li>-->
                        <li class="nav-item"><a class="nav-link" href="<?= base_url('location');?>">Location</a></li>
                        <li class="nav-item"><a class="nav-link" href="<?= base_url('cart');?>">Cart</a></li>
                        <li class="nav-item"><a class="nav-link" href="<?= base_url('policy');?>">Privacy</a></li>
                        <li class="nav-item"><a class="nav-link" href="<?= base_url('terms');?>">Terms</a></li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        <!-- right menu  -->

        <!-- header  -->
        <header class="main-header">
        <div class="container-1730">
            <div class="row">
                <div class="col-4 col-md-1 brand_col">
                    <div class="brand">
                        <a href="<?= base_url();?>"><img src="<?= base_url('assets/front/homepage/logo.png');?>" alt=""></a>
                    </div>
                    <!-- logo -->

                </div>
                <div class="col-1 col-md-7">
                    <nav id="menu" class="nav_menu">
                        <ul class="menu">
                           <li class="nav-item "><a class="nav-link active" href="<?= base_url();?>">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="<?= base_url('about');?>">About</a></li>
                            <li class="nav-item "><a class="nav-link" href="<?= base_url('menu');?>">menu</a></li>
                            <li class="nav-item "><a class="nav-link" href="<?= base_url('cake');?>">Cakes</a></li>
                            <li class="nav-item"><a class="nav-link" href="<?= base_url('booktable');?>">Book a Table</a></li>
                            <li class="nav-item"><a class="nav-link" href="<?= base_url('contact');?>">Contact</a></li>
                        </ul>
                    </nav>
                    <!-- navigation -->
                    
                    <div class="search-bar hide-search">
                        <form action="#" method="post" class="email-subs">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                         <input type="text" name="email" id="email" placeholder="Search Here" class="form-control" required="">
                                    </div>
                                    
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        
                                    </div>
                                    <div class="contact_submit">
                                        <button type="submit" class="btn_black">Submit</button>
                                    </div> 
                                </div>
    
                            </div>
                        </form>
                    </div>
                </div>


                <div class="col-6 col-md-3">
                    <div class="search-menu">
                        <span class="search"><a href="#" class="search-open"><img src="<?= base_url('assets/front/search.png');?>" alt=""></a></span>
                        <span class="cart">
                            <span id="cartCount"></span>
                            <span class="hz-count"><?= count($this->cart->contents()); ?></span>
                            <a href="<?= base_url('cart');?>"><img src="<?= base_url('assets/front/cart.png');?>" alt="">
                            </a>
                        </span>
                        <span class="menu-icon"><a href="javascript:void(0)"><img src="<?= base_url('assets/front/menuicon.png');?>" alt=""></a></span>
                    </div>
                </div>

            </div>
        </div>
        </header>
        <!-- header  end--> 
    </div>
</body>