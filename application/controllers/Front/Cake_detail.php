<?php

class Cake_detail extends Front_Controller {

	public function index($id)
	{   
	    $content['cake'] = $this->db->select('*')->from('cake')->where(array('cake_id' => $id, 'cake_status' => 'enable'))->get()->result();
    	$content['main_content'] = 'cakedetail';
		$this->load->view('front/inc/view',$content);
	}
}

?>