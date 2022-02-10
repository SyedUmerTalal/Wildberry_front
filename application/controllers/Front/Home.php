<?php 

class Home extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function get_mealtime($id)
	{
	   $data = $this->db->query('SELECT p.*,mt.meal_time_name FROM product AS p 
	   LEFT JOIN category AS c ON c.category_id = p.category_id 
	   LEFT JOIN meal_time_bridge AS mb ON mb.category_id = c.category_id 
	   LEFT JOIN meal_time AS mt on mt.meal_time_id = mb.meal_time_id WHERE  mt.meal_time_id = "'.$id.'" 
	   AND p.product_status = "enable" AND p.stock = "In Stock"')->result();	
	   echo json_encode(array('res'=>$data));
	}

	public function get_category_products($id)
	{
	    $data = $this->db->query('SELECT product.*, category.category_name FROM product
	    INNER JOIN category ON category.category_id = product.category_id 
	    WHERE  product.category_id = "'.$id.'" AND product.product_status = "enable" AND product.stock = "In Stock"')->result();	
	   	echo json_encode(array('res'=>$data));
	}

	public function index()
	{
	   $content['cat'] = $this->db->select('*')->from('category')->where(array("category_status"=> "enable",'feature'=>'yes'))
	   ->order_by("category.category_id", "desc")->limit(8)->get()->result();	
	   
	   $content['cat_products'] = $this->db->select('category.*,product.product_image ')
	   ->from('category')->join('product', 'product.category_id = category.category_id', 'inner')
	   ->where(array("category_status"=> "enable",'feature'=>'yes', 'product_status'=> "enable", 'stock'=> 'In Stock'))->order_by("category.category_id", "desc")
	   ->limit(8)->get()->result();	
	   
	   $content['meal_times'] = 
	   $this->db->query('SELECT mt.meal_time_id, mt.meal_time_name, p.* 
	   FROM product AS p LEFT JOIN category AS c ON c.category_id = p.category_id 
	   LEFT JOIN meal_time_bridge AS mb ON mb.category_id = c.category_id
	   LEFT JOIN meal_time AS mt on mt.meal_time_id = mb.meal_time_id 
	   WHERE p.product_status = "enable" AND p.stock = "In Stock" GROUP BY mt.meal_time_id')
	   ->result();	
	   
	   $content['bnr'] = $this->db->select('*')->from('homebnr')
	   ->join('category', 'category.category_id = homebnr.hdng')
	   ->where('homebnr_status', 'enable')->order_by("homebnr_id", "desc")
	   ->limit(6)->get()->result();	
      
       $content['menu_title'] = $this->db->select('*')->from('meal_time')->where('meal_time_status', 'enable')->get()->result();
	   
	   $content['main_content'] = 'index';
	   
	   $this->load->view('front/inc/view',$content);
	}
	
	
	public function back()
	{
	    $this->cart->destroy();
		$this->session->unset_userdata('checkout_data');
		redirect();
	}
}
?>