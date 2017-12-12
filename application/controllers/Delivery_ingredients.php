<?php
	defined('BASEPATH') OR die('No direct script access allowed.');

	class Delivery_ingredients extends CORE_Controller
	{
		
		function __construct()
		{
			parent::__construct('');
			$this->validate_session();
			$this->load->model(
				array(
					'Delivery_ingredients_info_model',
					'Delivery_ingredients_items_model',
					'Suppliers_model',
					'Ingredients_model'
				)
			);
		}

		public function index()
		{
			//default resources of the active view
	        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
	        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
	        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
	        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
	        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
	        $data['title'] = "Ingredients Delivery";

	        $data['suppliers'] = $this->Suppliers_model->get_list('is_deleted=FALSE');
	        $data['ingredients'] = $this->Ingredients_model->get_list(
	        	'ingredients.is_deleted=FALSE',
	        	'ingredients.*, units.unit_name',
	        	array(
	        		array('units','units.unit_id = ingredients.ingredient_unit','left')
	        	)
	        );

	        $this->load->view('delivery_ingredients_view',$data);
		}	

		public function getList($txn) 
		{
			switch ($txn) {
				case 'invoices':
					$m_delivery = $this->Delivery_ingredients_info_model;

					$response['data'] = $m_delivery->get_list(
						'delivery_ingredients_info.is_deleted=FALSE',
						'delivery_ingredients_info.*, suppliers.supplier_name, CONCAT(user_accounts.user_fname, " ", user_accounts.user_lname) user_fullname',
						array(
							array('suppliers','suppliers.supplier_id = delivery_ingredients_info.supplier_id','left'),
							array('user_accounts','user_accounts.user_id = delivery_ingredients_info.posted_by_user','left')
						)
					);

					echo json_encode($response);
					break;

				case 'items':
					$m_delivery_ingredients_items = $this->Delivery_ingredients_items_model;

					$delivery_ingredients_info_id = $this->input->post('delivery_ingredients_info_id',TRUE);

					$response['data'] = $m_delivery_ingredients_items->get_list(
						'ingredients.is_deleted = FALSE AND delivery_ingredients_info_id = '.$delivery_ingredients_info_id,
						'delivery_ingredients_items.*, ingredients.*, ingredients_categories.ingredient_category_name, units.unit_name',
						array(
							array('ingredients', 'ingredients.ingredient_id = delivery_ingredients_items.ingredient_id','left'),
							array('ingredients_categories','ingredients_categories.ingredient_category_id = ingredients.ingredient_category_id', 'left'),
							array('units','units.unit_id = ingredients.ingredient_unit', 'left')
						)
					);

					echo json_encode($response);
					break;
			}
		}

		public function getReport($txn) 
		{
			switch ($txn) {
				case 'invoice':
					$m_delivery = $this->Delivery_ingredients_info_model;
					$m_delivery_ingredients_items = $this->Delivery_ingredients_items_model;

					$delivery_ingredients_info_id = $this->input->get('id',TRUE);
					$type = $this->input->get('type',TRUE);

					$info = $m_delivery->get_list(
						'delivery_ingredients_info.is_deleted = FALSE AND delivery_ingredients_info.delivery_ingredients_info_id = '.$delivery_ingredients_info_id,
						'delivery_ingredients_info.*, suppliers.supplier_name',
						array(
							array('suppliers','suppliers.supplier_id = delivery_ingredients_info.supplier_id','left')
						)
					);

					$data['info'] = $info[0];
					$data['items'] = $m_delivery_ingredients_items->get_list(
						'delivery_ingredients_info_id = '.$delivery_ingredients_info_id,
						'delivery_ingredients_items.*, ingredients.*, ingredients_categories.ingredient_category_name, units.unit_name',
						array(
							array('ingredients', 'ingredients.ingredient_id = delivery_ingredients_items.ingredient_id','left'),
							array('ingredients_categories','ingredients_categories.ingredient_category_id = ingredients.ingredient_category_id', 'left'),
							array('units','units.unit_id = ingredients.ingredient_unit', 'left')
						)
					);

					if ($type == null) {
						echo $this->load->view('template/delivery_ingredients_invoice',$data,TRUE);
					} else {
						echo $this->load->view('template/delivery_ingredients_invoice',$data,TRUE);
					}
					
					break;
			}
		}

		public function save()
		{
			$m_delivery_ingredients = $this->Delivery_ingredients_info_model;
			$m_delivery_ingredients_items = $this->Delivery_ingredients_items_model;

			$m_delivery_ingredients->begin();

			$m_delivery_ingredients->delivery_ingredients_doc_no = $this->input->post('delivery_ingredients_doc_no',TRUE);
			$m_delivery_ingredients->supplier_id = $this->input->post('supplier_id',TRUE);
			$m_delivery_ingredients->total_after_tax = $this->get_numeric_value($this->input->post('total_after_tax',TRUE));
			$m_delivery_ingredients->total_discount = $this->get_numeric_value($this->input->post('total_discount',TRUE));
			$m_delivery_ingredients->total_tax_amount = $this->get_numeric_value($this->input->post('total_tax_amount',TRUE));
			$m_delivery_ingredients->total_before_tax = $this->get_numeric_value($this->input->post('total_before_tax',TRUE));
			$m_delivery_ingredients->posted_by_user = $this->session->user_id;
			$m_delivery_ingredients->date_received = date('Y-m-d', strtotime($this->input->post('date_received',TRUE)));
			$m_delivery_ingredients->remarks = $this->input->post('remarks',TRUE);
			$m_delivery_ingredients->set('date_received_timestamp','NOW()');
			$m_delivery_ingredients->save();

			$delivery_ingredients_info_id = $m_delivery_ingredients->last_insert_id();

			$ingredient_id = $this->input->post('ingredient_id',TRUE);
			$delivery_ingredients_items_qty = $this->input->post('delivery_ingredients_items_qty',TRUE);
			$delivery_ingredients_items_discount = $this->input->post('delivery_ingredients_items_discount',TRUE);
			$delivery_ingredients_items_price = $this->input->post('delivery_ingredients_items_price',TRUE);
			$delivery_ingredients_items_line_total = $this->input->post('delivery_ingredients_items_line_total',TRUE);
			$delivery_ingredients_items_line_total_discount = $this->input->post('delivery_ingredients_items_line_total_discount',TRUE);
			$delivery_ingredients_items_tax_amount = $this->input->post('delivery_ingredients_items_tax_amount',TRUE);
			$delivery_ingredients_items_tax_rate = $this->input->post('delivery_ingredients_items_tax_rate',TRUE);
			$delivery_ingredients_items_non_tax_amount = $this->input->post('delivery_ingredients_items_non_tax_amount',TRUE);

			$m_delivery_ingredients_items->delete_via_fk($delivery_ingredients_info_id);

			for($i = 0; $i < count($ingredient_id); $i++)
			{
				$m_delivery_ingredients_items->delivery_ingredients_info_id = $delivery_ingredients_info_id;
				$m_delivery_ingredients_items->ingredient_id = $ingredient_id[$i];
				$m_delivery_ingredients_items->delivery_ingredients_items_qty = $this->get_numeric_value($delivery_ingredients_items_qty[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_discount = $this->get_numeric_value($delivery_ingredients_items_discount[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_price = $this->get_numeric_value($delivery_ingredients_items_price[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_line_total = $this->get_numeric_value($delivery_ingredients_items_line_total[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_line_total_discount = $this->get_numeric_value($delivery_ingredients_items_line_total_discount[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_tax_amount = $this->get_numeric_value($delivery_ingredients_items_tax_amount[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_tax_rate = $this->get_numeric_value($delivery_ingredients_items_tax_rate[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_non_tax_amount = $this->get_numeric_value($delivery_ingredients_items_non_tax_amount[$i]);
				$m_delivery_ingredients_items->save();
			}

			$m_delivery_ingredients->delivery_ingredients_info_no = "DR-".date('Ymd')."-".$delivery_ingredients_info_id;
			$m_delivery_ingredients->modify($delivery_ingredients_info_id);

			$m_delivery_ingredients->commit();

			$response['title'] = "Success!";
			$response['stat'] = "success";
			$response['msg'] = "Delivery Invoice successfully saved.";
			$response['row_added'] = $this->response_rows($delivery_ingredients_info_id);

			echo json_encode($response);
		}	

		public function update()
		{
			$m_delivery_ingredients = $this->Delivery_ingredients_info_model;
			$m_delivery_ingredients_items = $this->Delivery_ingredients_items_model;

			$delivery_ingredients_info_id = $this->input->post('delivery_ingredients_info_id',TRUE);

			$m_delivery_ingredients->begin();

			$m_delivery_ingredients->delivery_ingredients_doc_no = $this->input->post('delivery_ingredients_doc_no',TRUE);
			$m_delivery_ingredients->supplier_id = $this->input->post('supplier_id',TRUE);
			$m_delivery_ingredients->total_after_tax = $this->get_numeric_value($this->input->post('total_after_tax',TRUE));
			$m_delivery_ingredients->total_discount = $this->get_numeric_value($this->input->post('total_discount',TRUE));
			$m_delivery_ingredients->total_tax_amount = $this->get_numeric_value($this->input->post('total_tax_amount',TRUE));
			$m_delivery_ingredients->total_before_tax = $this->get_numeric_value($this->input->post('total_before_tax',TRUE));
			$m_delivery_ingredients->posted_by_user = $this->session->user_id;
			$m_delivery_ingredients->date_received = date('Y-m-d', strtotime($this->input->post('date_received',TRUE)));
			$m_delivery_ingredients->remarks = $this->input->post('remarks',TRUE);
			$m_delivery_ingredients->set('date_received_timestamp','NOW()');
			$m_delivery_ingredients->modify($delivery_ingredients_info_id);

			$ingredient_id = $this->input->post('ingredient_id',TRUE);
			$delivery_ingredients_items_qty = $this->input->post('delivery_ingredients_items_qty',TRUE);
			$delivery_ingredients_items_discount = $this->input->post('delivery_ingredients_items_discount',TRUE);
			$delivery_ingredients_items_price = $this->input->post('delivery_ingredients_items_price',TRUE);
			$delivery_ingredients_items_line_total = $this->input->post('delivery_ingredients_items_line_total',TRUE);
			$delivery_ingredients_items_line_total_discount = $this->input->post('delivery_ingredients_items_line_total_discount',TRUE);
			$delivery_ingredients_items_tax_amount = $this->input->post('delivery_ingredients_items_tax_amount',TRUE);
			$delivery_ingredients_items_tax_rate = $this->input->post('delivery_ingredients_items_tax_rate',TRUE);
			$delivery_ingredients_items_non_tax_amount = $this->input->post('delivery_ingredients_items_non_tax_amount',TRUE);

			$m_delivery_ingredients_items->delete_via_fk($delivery_ingredients_info_id);

			for($i = 0; $i < count($ingredient_id); $i++)
			{
				$m_delivery_ingredients_items->delivery_ingredients_info_id = $delivery_ingredients_info_id;
				$m_delivery_ingredients_items->ingredient_id = $ingredient_id[$i];
				$m_delivery_ingredients_items->delivery_ingredients_items_qty = $this->get_numeric_value($delivery_ingredients_items_qty[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_discount = $this->get_numeric_value($delivery_ingredients_items_discount[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_price = $this->get_numeric_value($delivery_ingredients_items_price[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_line_total = $this->get_numeric_value($delivery_ingredients_items_line_total[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_line_total_discount = $this->get_numeric_value($delivery_ingredients_items_line_total_discount[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_tax_amount = $this->get_numeric_value($delivery_ingredients_items_tax_amount[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_tax_rate = $this->get_numeric_value($delivery_ingredients_items_tax_rate[$i]);
				$m_delivery_ingredients_items->delivery_ingredients_items_non_tax_amount = $this->get_numeric_value($delivery_ingredients_items_non_tax_amount[$i]);
				$m_delivery_ingredients_items->save();
			}

			$m_delivery_ingredients->commit();

			$response['title'] = "Success!";
			$response['stat'] = "success";
			$response['msg'] = "Delivery Invoice successfully updated.";
			$response['row_updated'] = $this->response_rows($delivery_ingredients_info_id);

			echo json_encode($response);
		}	

		public function remove()
		{
			$m_delivery_ingredients = $this->Delivery_ingredients_info_model;

			$delivery_ingredients_info_id = $this->input->post('delivery_ingredients_info_id',TRUE);
			$m_delivery_ingredients->is_deleted=1;
			if ($m_delivery_ingredients->modify($delivery_ingredients_info_id)) 
			{
				$response['title'] = "Success!";
				$response['stat'] = "success";
				$response['msg'] = "Delivery Invoice successfully remove.";
				echo json_encode($response);
			}
		}

		public function response_rows($filter_value)
		{
			$m_delivery_ingredients = $this->Delivery_ingredients_info_model;

			return $m_delivery_ingredients->get_list(
				'delivery_ingredients_info.is_deleted=FALSE AND delivery_ingredients_info_id = '.$filter_value,
				'delivery_ingredients_info.*, suppliers.supplier_name, CONCAT(user_accounts.user_fname, " ", user_accounts.user_lname) user_fullname',
				array(
					array('suppliers','suppliers.supplier_id = delivery_ingredients_info.supplier_id','left'),
					array('user_accounts','user_accounts.user_id = delivery_ingredients_info.posted_by_user','left')
				)
			);
		}
	}
?>