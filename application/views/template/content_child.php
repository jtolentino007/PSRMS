<style type="text/css">
	html {
		font-family: 
	}
</style>

<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#recipe">RECIPE</a></li>
  <!-- <li><a data-toggle="tab" href="#status">STATUS</a></li> -->
</ul>

<div class="tab-content" style="border: 1px solid #ddd; border-top: none; padding: 10px;">
  <div id="recipe" class="tab-pane fade in active">
    <span style="font-size: 20px; font-weight: 700;">ADD INGREDIENTS TO <?php echo $product_name; ?></span><br><small><i>Please add Ingredients for this recipe.</i></small><hr>
    <div class="row">
    	<div class="container-fluid">
    		<label><b>Select or Search Ingredient(s) :</b></label>
    		<select id="<?php echo "cbo_ingredients_".$product_id; ?>" class="form-control cbo-ingredient" data-id="<?php echo $product_id; ?>">
    			<?php foreach ($ingredients as $ingredient) { ?>
    				<option value="<?php echo $ingredient->ingredient_id; ?>" data-ingredient-name="<?php echo $ingredient->ingredient_name; ?>" data-ingredient-unit="<?php echo $ingredient->unit_name; ?>"><?php echo $ingredient->ingredient_name; ?></option>
    			<?php } ?> 
    		</select>
    	</div>
    </div>
    <div class="row">
    	<div class="container-fluid">
    		<form id="<?php echo "frm_ingredients_".$product_id; ?>">
	    		<table id="<?php echo "tbl_ingredients_".$product_id; ?>" class="table table-striped table-bordered tbl-ingredients">
	    			<thead>
	    				<th class="hidden">Ingredient ID</th>
	    				<th>Ingredient name</th>
	    				<th>Ingredient amount</th> 	
	    				<th><center>Ingredient unit</center></th>
	    				<th><center>Action</center></th>
	    			</thead>
	    			<tbody>
              <?php foreach ($products as $product) { ?>
                <tr>
                    <td class="hidden"><input type="hidden" name="ingredient_id[]" class="form-control" value="<?php echo $product->ingredient_id; ?>"><?php echo $product->ingredient_id; ?></td>
                    <td><input type="hidden" class="form-control" value="<?php echo $product->ingredient_name; ?>"><?php echo $product->ingredient_name; ?></td>
                    <td><center><input style="width:100%;" type="number" class="form-control text-center" name="ingredient_amount[]" data-error-msg="Ingredient amount cannot be zero." value="<?php echo number_format($product->qty_per_order); ?>" required></center></td>
                    <td><input type="hidden" class="form-control" value="<?php echo $product->unit_name; ?>"><?php echo $product->unit_name; ?></td>
                    <td><center><button type="button" class="btn btn-danger btn-delete btn_remove_ingredient"><i class="fa fa-times"></i></button></center></td>
                </tr>
              <?php } ?>
	    			</tbody>
	    		</table>
    		</form>
    	</div>
    </div><hr>
    <div class="row">
    	<div class="container-fluid">
    		<button id="<?php echo "btn_save_ingredient_".$product_id; ?>" class="btn-save-ingredients btn btn-primary" data-product-id="<?php echo $product_id; ?>"><i class="fa fa-save"></i>&nbsp;Save Recipe</button>
    	</div>
    </div>
   </div>
  <!-- <div id="status" class="tab-pane fade">
    <p>Some content in menu 1.</p>
  </div> -->
</div>

