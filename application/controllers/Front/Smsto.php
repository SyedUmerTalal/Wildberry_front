<?php

class Smsto extends Front_Controller {


    public function __construct()
	{
		parent:: __construct();
		require_once('vendor/autoload.php');

	}
    
    	function index()
	{
		$from = '+16468281025';
		$to = '+16093828487';
		$message = 'Dear Adnan, Your order has been confirmed at Wildberry Cake.';

		$response = $this->twilio->sms($from, $to, $message);


		if($response->IsError)
			echo 'Error: ' . $response->ErrorMessage;
		else
			echo 'Sent message to ' . $to;
	}
	

	 public function index1()
     {
     $data = ['phone' => '+16093828487', 'text' => 'Dear Adnan, Your order has been confirmed at Wildberry Cake.'];
     print_r($this->sendSMS($data));
     }
 
     protected function sendSMS($data) {
        $sid = 'ACb4991c4a0fe0c6ca3713675b2c65ad00';
        $token = '356cc030a4bd6a3cc2be7403fc3b779e';
        $client = new Client($sid, $token);

         return $client->messages->create(
            // the number you'd like to send the message to
            $data['+16093828487'],
            array(
                // A Twilio phone number you purchased at twilio.com/console
                "from" => "+16468281025",
                // the body of the text message you'd like to send
                'body' => $data['Dear Adnan, Your order has been confirmed at Wildberry Cake.']
            )
        );
    }
}


?>