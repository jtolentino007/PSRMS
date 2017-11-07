<?php

class Ingredients_categories_model extends CORE_Model {
    protected  $table="ingredients_categories";
    protected  $pk_id="ingredient_category_id";

    function __construct() {
        parent::__construct();
    }
}
?>