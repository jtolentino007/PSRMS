<?php
	class Delivery_ingredients_info_model extends CORE_Model
	{
		protected $table = "delivery_ingredients_info";
		protected $pk_id = "delivery_ingredients_info_id";
		
		function __construct()
		{
			parent::__construct('');
		}
	}
?>