<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Checkout extends Admin_Controller {
    function __construct() {
        parent::__construct(); 
        require_once('vendor/autoload.php');
        $this->table_name = $this->uri->segment(2);     
        $this->record_id = $this->uri->segment(2).'_id';     
        $this->record_status = $this->uri->segment(2).'_status';     
        

        //To use CRUD or not. (TRUE to make CRUD enable) 
        $this->is_crud = true;

        $this->form_validations = array(
           
        );

        $this->image_fields = array(

        );

    } 

    public function index(){
     if($this->is_crud == false){
         redirect('admin/'.$this->table_name.'/form/edit/1');
     }
     
     
     $content['records'] = $this->db->select('*')->from('checkout')
      ->join('payment', 'payment.payment_id = checkout.payment_id')
     ->join('order_bridge', 'order_bridge.checkout_id = checkout.checkout_id')
     ->join('order_items', 'order_items.order_items_id = order_bridge.order_items_id')
     ->join('product', 'product.product_id = order_items.product_id')
     ->where(array('checkout.checkout_status' => 'enable', 'cod' => 'online'))
      ->group_by('checkout.email')
     ->get()->result();
     
    //  echo '<pre>'; print_r($content['records']); exit;
     $content['riders'] = $this->db->select('*')->from('master_admin')->where(array('master_admin_role' => 'rider', 'master_admin_status' => 'enable'))->get()->result();
        
     $content['main_content'] = $this->table_name.'/list';   
     $content['main_content'] = $this->table_name.'/list';           
     $this->load->view('admin/inc/view',$content);   
 }
 
     public function cod(){
     if($this->is_crud == false){
         redirect('admin/'.$this->table_name.'/form/edit/1');
     }
     
     $content['records'] = $this->db->select('*')->from('checkout')
     ->join('order_bridge', 'order_bridge.checkout_id = checkout.checkout_id')
     ->join('order_items', 'order_items.order_items_id = order_bridge.order_items_id')
     ->join('product', 'product.product_id = order_items.product_id')
     ->where(array('checkout.checkout_status' => 'enable', 'cod' => 'COD'))
      ->group_by('checkout.email')
     ->get()->result();
     
     $content['riders'] = $this->db->select('*')->from('master_admin')->where(array('master_admin_role' => 'rider', 'master_admin_status' => 'enable'))->get()->result();
    
     $content['main_content'] = $this->table_name.'/list';   
     $content['main_content'] = $this->table_name.'/list_cod';           
     $this->load->view('admin/inc/view',$content);   
 }
 
      public function list_cod_rider(){
     if($this->is_crud == false){
         redirect('admin/'.$this->table_name.'/form/edit/1');
     }
     $rider = $this->session->userdata('master_admin_name');
     $content['records'] = $this->db->select('*')->from('checkout')
     ->join('order_bridge', 'order_bridge.checkout_id = checkout.checkout_id')
     ->join('order_items', 'order_items.order_items_id = order_bridge.order_items_id')
     ->join('product', 'product.product_id = order_items.product_id')
     ->where(array('checkout.checkout_status' => 'enable', 'cod' => 'COD', 'rider' => $rider))
     ->group_by('checkout.email')
     ->get()->result();
     
     $content['riders'] = $this->db->select('*')->from('master_admin')->where(array('master_admin_role' => 'rider', 'master_admin_status' => 'enable'))->get()->result();
    
     $content['main_content'] = $this->table_name.'/list';   
     $content['main_content'] = $this->table_name.'/list_cod_rider';           
     $this->load->view('admin/inc/view',$content);   
 }
    
    public function list_rider(){
     if($this->is_crud == false){
         redirect('admin/'.$this->table_name.'/form/edit/1');
     }
     $rider = $this->session->userdata('master_admin_name');
     $content['records'] = $this->db->select('*')->from('checkout')
     ->join('payment', 'payment.payment_id = checkout.payment_id')
     ->join('order_bridge', 'order_bridge.checkout_id = checkout.checkout_id')
     ->join('order_items', 'order_items.order_items_id = order_bridge.order_items_id')
     ->join('product', 'product.product_id = order_items.product_id')
     ->where(array('checkout.checkout_status' => 'enable', 'cod' => 'online', 'rider' => $rider))
     ->group_by('checkout.email')
     ->get()->result();
     
    //   echo '<pre>'; print_r($content['records']); exit;
     $content['riders'] = $this->db->select('*')->from('master_admin')->where(array('master_admin_role' => 'rider', 'master_admin_status' => 'enable'))->get()->result();
    
     $content['main_content'] = $this->table_name.'/list';   
     $content['main_content'] = $this->table_name.'/list_rider';           
     $this->load->view('admin/inc/view',$content);   
 }
    
    
    public function order_status()
    {
        $data = array(
             'order_status' => $this->input->post('order_status'),
             );
            
         if($data)
        {
         $id = $this->input->post('checkout_id');
         $this->db->where('checkout_id', $id);
         $this->db->update('checkout', $data);
         
        $this->session->set_flashdata('success', 'Success');
        redirect($_SERVER['HTTP_REFERER']);
        }
        else{
            $this->session->set_flashdata('error', 'Something went wrong');
            redirect($_SERVER['HTTP_REFERER']);
        }
    }
    
      public function send_remarks()
     {
         $data = array(
             'rider' => $this->input->post('rider'),
             );
            
         if($data)
        {
         $id = $this->input->post('checkout_id');
         $this->db->where('checkout_id', $id);
         $this->db->update('checkout', $data);
        
        
        
        $cust_data = $this->db->select('*')->from('checkout')->where('checkout_id', $id)->get()->row();
        
        $rider_name = $this->input->post('rider');
        $rider_data = $this->db->select('master_admin_email')->from('master_admin')->where('master_admin_name', $rider_name)->get()->row();
        $rider_email = $rider_data->master_admin_email;
        $this->email->from('no-reply@wildberrycake.com');
        $this->email->to($rider_email);
        $this->email->subject('New Order Details - WildBerry Cake');
        $this->email->message('Dear ' .$rider_name.', Admin assigned you a new order please check your Dashboard for details.');
        $this->email->set_mailtype("html");
        $this->email->send();
        
        //send sms to customer
        $from = '+16468281025';
		$to = $cust_data->phone;
		$message = 'Dear '.$cust_data->name.', Your order has been confirmed at Wildberry Cake and will be delevired to given address in 30 minutes.';

		$response = $this->twilio->sms($from, $to, $message);


		if($response->IsError){
// 			echo 'Error: ' . $response->ErrorMessage;
            $this->session->set_flashdata('error', $response->ErrorMessage);
            redirect($_SERVER['HTTP_REFERER']);
		}else{
// 			echo 'Sent message to ' . $to;
			$this->session->set_flashdata('success', 'Assigned Successfully');
            redirect($_SERVER['HTTP_REFERER']);
			
		}
		
        //send sms to customer ends
        
        }
        else{
        $this->session->set_flashdata('error', 'Something went wrong');
        redirect($_SERVER['HTTP_REFERER']);
        }
     }

    public function view($id)
    {
    if($this->is_crud == true){
        $content['record'] = 
        $this->db->query("SELECT *, GROUP_CONCAT(product.product_id) AS purchased_product FROM `checkout` JOIN `payment` ON `payment`.`payment_id` = `checkout`.`payment_id` JOIN `order_bridge` ON `order_bridge`.`checkout_id` = `checkout`.`checkout_id` JOIN `order_items` ON `order_items`.`order_items_id` = `order_bridge`.`order_items_id` JOIN `product` ON `product`.`product_id` = `order_items`.`product_id` WHERE `checkout`.`checkout_id` =" .$id)->row();
      

        $content['product'] = $this->db->select('*')->from('product')
        ->join('order_items', 'order_items.product_id = product.product_id')
        ->where('product.product_id IN (' .$content['record']->purchased_product.')')->get()->result(); 
        $content['main_content'] = $this->table_name.'/view';           
        $this->load->view('admin/inc/view',$content); 
    }
    else{
        redirect('admin/'.$this->table_name);
    }

}

public function view_cod($id)
{
    if($this->is_crud == true){
        $content['record'] = 
        $this->db->query("SELECT *, GROUP_CONCAT(product.product_id) AS purchased_product FROM `checkout` JOIN `order_bridge` ON `order_bridge`.`checkout_id` = `checkout`.`checkout_id` JOIN `order_items` ON `order_items`.`order_items_id` = `order_bridge`.`order_items_id` JOIN `product` ON `product`.`product_id` = `order_items`.`product_id` WHERE `checkout`.`checkout_id` =" .$id)->row();
         
        // echo '<pre>'; print_r($content['record']); exit;
        $content['product'] = $this->db->select('*')->from('product')
        ->join('order_items', 'order_items.product_id = product.product_id')
        ->where('product.product_id IN (' .$content['record']->purchased_product.')')->get()->result(); 
        $content['main_content'] = $this->table_name.'/view_cod';           
        $this->load->view('admin/inc/view',$content); 
    }
    else{
        redirect('admin/'.$this->table_name);
    }

}
public function delete($id)
{
    if($this->is_crud == true){
        $content = array(
            $this->record_status => 'disable',
        );    
        $data['where'] = array($this->record_id => $id); 
        $data['table'] = $this->table_name;  
        $this->general->update($data,$content);        
        $this->session->set_flashdata('success', 'Deleted Successfully.');
        redirect('admin/'.$this->table_name);
    }
    else{
        redirect('admin/'.$this->table_name);
    }        
} 
}

