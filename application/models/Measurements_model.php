<?php
	class Measurements_model extends CORE_Model
	{
		protected $table = "measurements";
		protected $pk_id = "measurement_id";
		protected $fk_id = "unit_id";
		function __construct()
		{
			parent::__construct('');
		}

		function getUnits($ingredient_unit) 
		{
			$sql = "SELECT
                units.*
                FROM
                measurements
                LEFT JOIN units ON units.unit_id = measurements.sub_unit_id
                WHERE measurements.unit_id = ".$ingredient_unit."

                UNION 

                SELECT
                *
                FROM
                units
                WHERE is_deleted = FALSE";

            return $this->db->query($sql)->result();
		}
	}
?>