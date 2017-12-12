<style type="text/css">
	html {
		font-family: 
	}
</style>


    <span style="font-size: 20px; font-weight: 700;">ADD INGREDIENTS TO <?php echo $product_name; ?></span><br><small><i>Please add Ingredients for this recipe.</i></small><hr>
    <div class="row">
    	<div class="container-fluid">
    		<label><b>Select or Search Ingredient(s) :</b></label>
    		<select id="<?php echo "cbo_ingredients_".$product_id; ?>" class="form-control cbo-ingredient" data-id="<?php echo $product_id; ?>">
                <optgroup label="RAW INGREDIENTS">
        			<?php foreach ($ingredients as $ingredient) { ?>
        				<option 
                            value="<?php echo $ingredient->ingredient_id; ?>" 
                            data-ingredient-name="<?php echo $ingredient->ingredient_name; ?>" 
                            data-ingredient-unit="<?php echo $ingredient->unit_name; ?>" 
                            data-unit-id="<?php echo $ingredient->ingredient_unit; ?>"
                        >
                            <?php echo $ingredient->ingredient_name; ?>
                        </option>
        			<?php } ?>
                </optgroup>
                <optgroup label="PROCESSED INGREDIENTS">
                    <?php foreach ($products_list as $product_ind) { ?> 
                        <option 
                            value="<?php echo $product_ind->product_code; ?>" 
                            data-ingredient-name="<?php echo $product_ind->product_desc; ?>" 
                            data-ingredient-unit="<?php echo $product_ind->unit_name; ?>" 
                            data-unit-id="<?php echo $product_ind->unit_id; ?>"
                        >
                            <?php echo $product_ind->product_desc; ?>
                        </option>
                    <?php } ?>
                </optgroup>
    		</select>
    	</div>
    </div>
    <button id="btn_add_new_ingredient" class="btn btn-success" style="margin-top: 10px;"><i class="fa fa-plus"></i>&nbsp;Add New Ingredient</button>
    <div class="row">
    	<div class="container-fluid">
    		<form id="<?php echo "frm_ingredients_".$product_id; ?>">
	    		<table id="<?php echo "tbl_ingredients_".$product_id; ?>" class="table table-striped table-bordered tbl-ingredients">
	    			<thead style="background: #2196f3; color: white;">
	    				<th class="hidden">Ingredient ID</th>
	    				<th>Ingredient name</th>
	    				<th><center>Qty per order</center></th> 	
	    				<th><center>Ingredient unit</center></th>
                        <th><center>Base price</center></th>
                        <th><center>Cost per unit</center></th>
	    				<th><center>Action</center></th>
	    			</thead>
	    			<tbody>
              
              <?php foreach ($products as $product) { ?>
                <tr>
                    <td class="hidden"><input type="hidden" name="ingredient_id[]" class="form-control" value="<?php echo ($product->ingredient_id == null ? $product->prod_code : $product->ingredient_id); ?>"><?php echo ($product->ingredient_id == null ? $product->prod_code : $product->ingredient_id); ?></td>
                    <td><input type="hidden" class="form-control" value="<?php echo ($product->ingredient_name == null ? $product->prod_name : $product->ingredient_name); ?>"><?php echo ($product->ingredient_name == null ? $product->prod_name : $product->ingredient_name); ?></td>
                    <td><center><input style="width:100%;" type="text" class="form-control text-right" name="ingredient_amount[]" data-error-msg="Ingredient amount cannot be zero." value="<?php echo number_format($product->qty_per_order,3); ?>" required></center></td>
                    <td>
                        <select id="<?php echo '#cbo_child_'.$product->ingredient_unit.'_'.$product->ingredient_id; ?>" name="ingredient_unit_id[]" class="form-control text-right">
                            
                            <?php
                                $sql = "SELECT
                                units.*
                                FROM
                                measurements
                                LEFT JOIN units ON units.unit_id = measurements.sub_unit_id
                                WHERE measurements.unit_id = ".$product->ingredient_unit."

                                UNION 

                                SELECT
                                *
                                FROM
                                units
                                WHERE is_deleted = FALSE";

                                $units = $this->db->query($sql)->result();
                            ?>

                            <?php foreach($units as $unit) { ?>
                                <option value="<?php echo $unit->unit_id; ?>" <?php echo (($product->prod_unit == null ? $product->ingredient_unit_id : $product->prod_unit) == $unit->unit_id ? 'selected' : '') ?>><?php echo $unit->unit_name; ?></option>
                            <?php } ?>
                            </option>
                        </select>
                    </td>
                    <td><input type="text" name="base_price[]" class="form-control text-right" value="<?php echo number_format($product->base_price,2); ?>"></td>
                    <td><input type="text" name="cost[]" class="form-control text-right" value="<?php echo number_format($product->cost,2); ?>"></td>
                    <td><center><button type="button" class="btn btn-danger btn-delete btn_remove_ingredient"><i class="fa fa-times"></i></button></center></td>
                </tr>
              <?php } ?>
	    			</tbody>
	    		</table>
    		</form>
    	</div>
    </div><hr>
    <div class="row">
    	<div class="container-fluid text-right">
    		<button id="<?php echo "btn_save_ingredient_".$product_id; ?>" class="btn-save-ingredients btn btn-primary" data-product-id="<?php echo $product_id; ?>"><i class="fa fa-save"></i>&nbsp;Save Recipe</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    	</div>
    </div>

