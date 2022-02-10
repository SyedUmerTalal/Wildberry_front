<div id="fullpage-scroll">
    <section class="et_pb_section hz-sec-1">    
        <div id="banner-slider">
    		<section id="banner" class="section vertical-scrolling banner_sec">
    		 <!-- banner section  -->
    		 <?php $i = 1; foreach($bnr as $d):?>
    		 
    		
    		    <div>
        			<div class="container-1730">
        				<div class="row">
        					<div class="col-md-6">
        						<div class="banner-left">
        							<h1 class="banner-main-head"><?= $d->category_name;?></h1>
        							<p class="banner-text quotation-marks"><?= $d->txt;?></p>
        							 <a href="<?= base_url('product_detail/'.$d->category_id);?>"><button class="banner-btn"><span>CHECK THE MENU <img src="<?= base_url('assets/front/homepage/arrow2.png');?>" alt=""></span></button></a>
        						</div>
        					</div>
        					<div class="col-md-6">
        						<div class="banner-right">
        							<img class="right-main-img" src="<?= base_url('uploads/homebnr/'.$d->img1);?>" alt="">
        							<img src="<?= base_url('uploads/homebnr/'.$d->img2);?>" alt="" class="right-small-img">
        						</div>
        					</div>
        				</div>
        				<!-- content  -->
        				<div class="banner-icons">
        					<a href="#"><i class="fab fa-facebook-square"></i></a>
        					<a href="#"><i class="fab fa-instagram"></i></a>
        					<a href="#"><i class="fab fa-twitter"></i></a>
        					<!--<a href="#"><i class="fab fa-whatsapp"></i></a>-->
        				</div>
        
        				<div class="banner-slider-dots">
        					<span class="banner-prev banner-arrow"></span>
        					<span class="banner-nextr banner-arrow"></span>
        				</div>
        			</div>
        
        			 
        			<!-- scroll bottom  -->
        			<div class="scroll-bottom">
        				<h3 class="scroll-heading">DISCOVER WILDBERRY</h3>
        				<a href="#gallery"><img class="scroll-anim" src="<?= base_url('assets/front/homepage/scroll.png');?>" alt=""></a>
        			</div>
        			
        			<!-- slider arrow  -->
        			 <div class="slider-arrows">
        				<h3 class="slider-number"><?php echo $i++; ?>/
        				<?php echo $this->db->where(array('homebnr_status' => 'enable'))->count_all_results('homebnr');?></h3>
        				<img class="ban-slider-prev" src="<?= base_url('assets/front/homepage/left-arrow.png');?>" alt="">
        				<img class="divider" src="<?= base_url('assets/front/homepage/divider.png');?>" alt="">
        				<img class="ban-slider-next" src="<?= base_url('assets/front/homepage/right-arrow.png');?>" alt="">
        			</div>
        			
                </div>
    		
    		
    		 <?php endforeach;?>
    		<!-- banner section  end-->
    		</section>  
 </div>
    </section>
    		
    	<!-- gallery section  -->
    <section class="et_pb_section hz-sec-2"><section id="gallery" class="section gallery_section">
    		<div class="container-fluid">
    			<div class="row">
    				<?php foreach($cat as $data):
    					?>
    				<div class="col-lg-3 col-md-6 col-6">
    				<a href="<?= base_url('product_detail/'.$data->category_id);?>"> 
    					<div class="gallery-overlay">
    						<div class="overlay overlay-1">
    							<h1 class="overlay-heading"><?= $data->category_name;?></h1>
    						</div>
    						<img src="<?= base_url('uploads/category/'.$data->category_image);?>" alt="" class="gallery-img">
    					</div>
    				</a>    
    				</div>
    				<?php endforeach;?>
    			</div>
    
    			<div class="scroll-bottom">
    				<a href="#see-menu"><img class="scroll-gal-anim" src="<?= base_url('assets/front/homepage/scroll.png');?>" alt=""></a>
    			</div>
    			<!-- scroll bottom  -->
    		</div>
 </section>
 </section>
    	<!-- gallery section  -->
    <section class="et_pb_section hz-sec-3"><div id="menu-slider" class="section">
    		<!-- our menu -->
    		<section id="see-menu" class="see-our-menu">
    			<div class="container-1730">
    				<div class="menu-content">
    					<h1 class="menu-heading">EXPLORE OUR RESTAURANT</h1>
    					
    					<form action="#breakfast">
    					    <button class="menu-btn"><span>SEE OUR MENU</span></button>
    					</form>
    				</div>  
    
    				<!-- section links -->
    				<!--<div class="right-position-box">-->
    				<!--	<img src="<?= base_url('assets/front/birthday/sec-main.png');?>" alt="">-->
    				<!--	<h3 class="position-box-head"><a href="#banner">View All</a></h3>-->
    				<!--</div>-->
    				<!-- position box -->
    				<!--<div class="all-sec-scroll-bottom">-->
    				<!--	<a href="#all-categories"><img class="scroll-anim" src="<?= base_url('assets/front/circle.png');?>" alt="" ></a>-->
    				<!--</div>-->
    				<!-- scroll bottom  -->
    			</div>
    		</section>
    		<!-- our-menu end-->
    
 </div>
    </section>
    	
    	<!-- all category slider  -->
    <section class="et_pb_section hz-sec-4"><div id="all-categories">
    
    		 <!-- category 1 -->
    	<section class="section all-section birthday-section">
    		<div class="container-1730">
    			<div class="row all-sec-row">
    				<div class="col-md-6 col-12">
    					<div id="categoryImages" class="all-sec-gallery">
    			<!-- 			
    			<img class="all-sec-img-<?= $i++;?>" src="<?= base_url('uploads/product/'.$d->product_image);?>" alt="">
    
    			<img class="all-sec-img-<?= $i++;?>" src="<?= base_url('uploads/product/'.$d->product_image);?>" alt="">
    
    			<img class="all-sec-img-<?= $i++;?>" src="<?= base_url('uploads/product/'.$d->product_image);?>" alt="">
    
    			<img class="all-sec-img-<?= $i++;?>" src="<?= base_url('uploads/product/'.$d->product_image);?>" alt="">
    
    			<img class="all-sec-img-<?= $i++;?>" src="<?= base_url('uploads/product/'.$d->product_image);?>" alt="">
    
    			<img class="all-sec-img-<?= $i++;?>" src="<?= base_url('uploads/product/'.$d->product_image);?>" alt="">  -->
    					</div>
    				</div>
    				<!-- left  -->
    				<div class="col-md-6">
    					<h1 id="categoryName" class="all-sec-main-head">
    						<?= ($cat_products[0]->category_name)??'Notfound';?>
    					</h1>
    				</div>
    			 </div>
    
    				<!-- right  -->
    				<div class="all-sec-arrows">
    					<div class="all-sec-arrow-align">
    						<img class="all-slider-prev" src="<?= base_url('assets/front/left-arrow.png');?>" alt="">
    						<img class="all-divider" src="<?= base_url('assets/front/divider.png');?>" alt="">
    						<img class="all-slider-next" src="<?= base_url('assets/front/right-arrow.png');?>" alt="">
    					</div>
    				</div>
    				<!-- section arrow -->
    				<div class="all-section-link">
    
    
    					<?php foreach($cat_products as $d):?>
    					<h3 class="section-link main-section-link"><a style="cursor: pointer;" href="javascript:void();" onclick="getCategories(<?= $d->category_id ?>)"   href="#<?= $d->category_id ;?>"><?= $d->category_name;?></a></h3>
    					<?php endforeach;?>
    				</div>
    				<!-- section links -->
    				<!--<div class="right-position-box">-->
    				<!--	<img src="<?= base_url('assets/front/birthday/sec-main.png');?>" alt="">-->
    				<!--	<h3 class="position-box-head"><a href="<?= base_url('product_detail/'.$cat_products[0]->category_id);?>">View All</a></h3>-->
    				<!--</div>-->
    				<!-- position box -->
    				<div class="all-sec-scroll-bottom">
    					<a href="#breakfast"><img class="scroll-anim" src="<?= base_url('assets/front/all-arrow.png');?>" alt=""></a>
    				</div>
    				<!-- scroll bottom  -->
    		</div>
    	</section>
    	<!-- category 1 end-->
 </div>
 </section>
    	<!-- all category slider  end-->
    
       
    
    <section class="et_pb_section hz-sec-5"><div id="all-menu-slider">
    		<!--second menu -->
    		<section id="breakfast" class="section breakfast-menu">
    		<div class="container-1730">
    			<div class="row gallery-row">
    				<div class="col-md-5">
    					<div class="breakfast-left">
    						<h1 id="mealtime-heading" class="breakfast-head"><?= ($menu_title[0]->meal_time_name)??'Not Found' ?></h1>
    						<ul class="menu-list">
    							<?php foreach($menu_title as $d):?>
    							<li><a style="cursor: pointer;" href="javascript:void();" onclick="getMealTime(<?= $d->meal_time_id ?>)" ><?= $d->meal_time_name;?></a></li>
    						<?php endforeach;?>
    						</ul> 
    					</div>
    				</div>
    				<div class="col-md-7">
    					<div id="breakfast-gallery" class="breakfast-gallery">
    					</div>
    				</div>
    			</div>
    			<!-- section links -->
    			 <div class="right-position-box">
    				<img src="<?= base_url('assets/front/menu/right-img.png');?>" alt="">
    				<h3 class="position-box-head"><a href="<?= base_url('menu');?>">View All</a></h3>
    			</div>
    			<!-- left btn -->
    			<div class="second-menu-scroll-bottom">
    				<a href="#contact"><img class="scroll-anim" src="<?= base_url('assets/front/homepage/scroll.png');?>" alt=""></a>
    			</div>
    			<!-- scroll bottom  -->
    		</div>
    		<!-- position box -->
    		<!-- <button class="second-menu-btn"><span>order now</span></button> -->
    	</section>
    
    
 </div></section>
 
 
    	
    	<!-- --==== modal  ====-->
    	  
    	  <!-- The Modal id="myModal" -->
    <div class="modal wild-modal" id="">
    		<div class="modal-dialog">
    		  <div class="modal-content">
    	  
    			<!-- Modal Header -->
    			<div class="modal-header">
    			  <button type="button" class="close" data-dismiss="modal" onClick="PopUp()">&times;</button>
    			</div>
    	  
    			<!-- Modal body -->
    			<div class="modal-body">
    				<div class="contentFromSlide">
    					<div class="row">
    						<div class="col-lg-5 col-md-2 p-0">
    							<img src="<?= base_url('assets/front/gallery/cake8.png');?>">
    						</div>
    						<div class="col-lg-7 col-md-10 modal-pera ">
    							<h2 class="modal-head">Birthday cake</h2>
    							<p class="modal-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit doloremque hic ipsum rerum fuga voluptas, culpa sed incidunt reprehenderit eum. </p>
    							<form class="poppup-form">
    								<div class="form-group">
    								 <input type="text" class="form-control" placeholder="Enter Your Email">
    								</div>
    								<button type="submit" class="poppup-btn">Let Me know!</button>
    							</form>
    						</div>
    					</div>
    				</div>
    			</div>
    		  </div>
    		</div>
   </div>
    	
    	<!----==== modal  end==== -->
    
    	<!-- Button to Open the Modal -->
    





