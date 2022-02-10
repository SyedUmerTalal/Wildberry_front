<?php

class Invoice extends Front_Controller {

	public function index()
	{
		$this->load->view('front/invoice');
	}
}

?>