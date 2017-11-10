<?php
	class Recipes_model extends CORE_Model
	{
		protected $table="recipes";
		protected $pk_id="recipe_id";
		protected $fk_id="product_id";
		
		function __construct()
		{
			parent::__construct('');
		}
	}
?>