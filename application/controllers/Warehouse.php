<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Warehouse extends CORE_Controller
	{
		
		function __construct()
		{
			parent::__construct('');
			$this->validate_session();
			$this->load->model('Products_model');
		}

		public function index()
		{
			$data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
	        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
	        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
	        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
	        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
	        $data['title'] = 'Warehouse Management';

	        $this->load->view('warehouse_view',$data);
		}

		public function getList($txn = null)
		{
			switch ($txn) {
				case 'getIngredientInventory':
					$m_products = $this->Products_model;

					$response['data'] = $m_products->ingredientInventory();

					echo json_encode($response);
					break;
				
				default:
					# code...
					break;
			}
		}
	}
?>