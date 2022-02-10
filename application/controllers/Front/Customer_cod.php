<?php 

class Customer_cod extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function index()
	{
		$this->load->view('front/customer_cod');		

	}
}