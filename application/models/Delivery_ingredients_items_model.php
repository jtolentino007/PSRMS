<?php
	class Delivery_ingredients_items_model extends CORE_Model
	{
		protected $table = "delivery_ingredients_items";
		protected $pk_id = "delivery_ingredients_items_id";
		protected $fk_id = "delivery_ingredients_info_id";
		
		function __construct()
		{
			parent::__construct('');
		}
	}
?>