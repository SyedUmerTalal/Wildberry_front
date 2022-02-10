<?php 

class Cart extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function index()
	{
	
		$content['main_content'] = 'cart';
		$this->load->view('front/inc/view',$content);		

	}


	public function add()
	{
	   $data = array(
	   "id"  => $_POST["id"],
	   "name"  => $_POST["name"],
	   "qty"  => 1,
	   "price"  => $_POST["price"],
	   "img"  => $_POST["img"]
	   );

	  	$this->cart->insert($data); 
	  	echo json_encode($this->cart->contents());
	  	$this->session->set_flashdata('success', 'Added Successfully');
	}

	public function destroy()
	{
		$this->cart->destroy();
		redirect('cart');
	}

	public function remove($rowid)
	 {
	  $data = array(
	   'rowid'  => $rowid,
	   'qty'  => 0
	  );
	  $this->cart->update($data);
	  $this->session->set_flashdata('success', 'Removed Successfully');
	  redirect('cart');
	 }
	 
	 public function update($rowid)
    {
        $data=$this->cart->update(array(
            'rowid'=>$rowid,
            'qty'=> $this->input->post('qty')
        ));
    
        $this->cart->update($data);  
        redirect('cart');
    }

}


?>