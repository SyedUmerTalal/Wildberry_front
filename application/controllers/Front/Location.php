<?php 

class Location extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function index()
	{
		$this->load->view('front/location');
	}

}


?>