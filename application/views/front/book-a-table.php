    <div class="cart-section checkout-section">
        <div class="container-1730">
            <h1 class="inner-main-head">book a table</h1>
            <div class="row checkout-row">
                <div class="col-lg-6">
                    <form class="cheakout-form book-table" action="<?= base_url()."booktable/add_booking";?>" method="post">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" id="name" name="name" class="form-control" placeholder="Full Name" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="email" id="email" name="email" class="form-control" placeholder="Email" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="phone" id="phone" name="phone" class="form-control" placeholder="Phone" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" id="person_qty" name="person_qty" class="form-control" placeholder="Person Qty" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="date" id="date" name="date" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="time" id="time" name="time" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" id="special_req" name="special_req" class="form-control" placeholder="Any Special Request?">
                        </div>

                        <!-- position box -->
                    
                </div>
            </div>
        </div>

         <button type="submit" class="second-menu-btn"><span>Booked now</span></button>
</form>
    </div>

    </div>


 

