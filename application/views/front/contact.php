<?php include 'inc/header.php';?>
    <div class="contact-page inner-page">
        <section id="contact" class="section contact-section">
        
            <div class="row contact-row">
                <div class="col-md-4 contact-col-1">
                    <a href="<?= base_url('location');?>"><button class="contact-btn"><span>CHECK OUR 360 virtual tour</span></button></a>
                </div>
                <div class="col-md-8 contact-col-2">
                    <div class="contact-main">
                        <h1 class="contact-heading">CONTACT US</h1>

                        <div class="contact-form">  
                            <form action="<?= base_url()."contact/contact_us";?>" method="post" class="contact-form">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <input type="text" min="3" max="20" name="full_name" id="full_name" placeholder="Full Name*" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" min="5" max="16" name="phone" id="phone" placeholder="Phone Number*" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                             <input type="email" min="5" max="25" name="email" id="email" placeholder="Email*" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="subject" name="subject" id="subject" placeholder="Subject*" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <textarea class="form-control" name="message" id="message" placeholder="Your Message"></textarea>
                                        </div>
                                        <div class="contact_submit">
                                            <button type="submit" class="btn_black">Submit</button>
                                        </div> 
                                    </div>
  
                                </div>
                            </form>
                        </div>
                        <!-- link -->
                        <div class="footer-social-links">
                            <a href="#"><i class="fab fa-facebook-square"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <!-- contact main  -->
                    <div class="copyright">
                        <p>Copyright 2021 - 2025 WildBerryCake. All Rights Reserved.</p>
                    </div>
                </div>
            </div>
                    
                    
        </section>
    </div>
     
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <!-- bootstrap -->
    <script src="<?= base_url('assets/front/js/bootstrap.min.js');?>"></script>
    <!-- slick slider  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js" integrity="sha512-WNZwVebQjhSxEzwbettGuQgWxbpYdoLf7mH+25A7sfQbbxKeS5SQ9QBf97zOY4nOlwtksgDA/czSTmfj4DUEiQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- full page  -->
    <!--<script src="https://rawgit.com/alvarotrigo/fullPage.js/dev/src/fullpage.js"></script>-->
    <!-- aos  -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- custom js -->
    <script src="<?= base_url('assets/front/js/custom.js');?>"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>


   