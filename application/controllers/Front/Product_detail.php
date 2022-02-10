<?php 

class Product_detail extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function index($id="")
	{
	    $id = $_GET ? $_GET['q'] : $id;
	    $content['prod_cat'] = $this->db->query('SELECT * FROM product WHERE category_id IN('.$id.')')->result();;		
	    $content['main_content'] = 'product-detail';
		$this->load->view('front/inc/view',$content);		
	}

}


?>