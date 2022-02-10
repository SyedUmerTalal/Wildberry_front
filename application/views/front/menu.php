
        
        <!--second meu -->
        <section id="second-menu" class="second-meu">
            <div class="container-1730">
                <div class="second-menu-content">
                    <h1 class="second-menu-heading">menu</h1>
                    <img src="<?= base_url('assets/front/menu/menu1.png');?>" alt="">
                    <ul class="menu-list">
                        <?php foreach($menu as $d):?>
                        <li><a href="<?= base_url('product_detail?q='.$d->cat_id);?>"><?= $d->meal_time_name;?></a></li>
                        <?php endforeach;?>
                    </ul> 
                </div>  
                <!-- section links -->
                <div class="right-position-box">
                    <img src="<?= base_url('assets/front/menu/right-img.png');?>" alt="">
                    <!--<h3 class="position-box-head"><a href="https://webprojectmockup.com/custom/wildberry/product-detail">View All</a></h3>-->
                </div>
                <!-- left btn -->
                <!--<div class="second-menu-scroll-bottom">-->
                <!--    <a href="https://webprojectmockup.com/custom/wildberry/product-detail"><img class="scroll-anim" src="<?= base_url('assets/front/homepage/scroll.png');?>" alt=""></a>-->
                <!--</div>-->
                <!-- scroll bottom  -->
            </div>
            <!-- position box -->
            <!--<button class="second-menu-btn"><span>order now</span></button>-->
        </section>
        <!-- second meu end-->
    </div>