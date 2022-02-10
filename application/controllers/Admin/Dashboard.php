<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Admin_Controller{
	
	public function index()
	{	
		$content['main_content'] = 'dashboard/dashboard';		
		$content['title'] = 'Dashboard';
		$this->load->view('admin/inc/view',$content);
	}



	
}
