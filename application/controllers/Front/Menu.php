<?php 

class Menu extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function index()
	{
	    $content['menu'] = $this->db->query('SELECT GROUP_CONCAT(category_id) as cat_id, meal_time.* from meal_time
                                            INNER JOIN meal_time_bridge on meal_time_bridge.meal_time_id = meal_time.meal_time_id
                                            GROUP BY meal_time_bridge.meal_time_id')->result();	
		$content['main_content'] = 'menu';
		$this->load->view('front/inc/view',$content);
			

	}
    

}


?>