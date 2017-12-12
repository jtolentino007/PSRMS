<br>
<label><strong>Select Child Unit: </strong></label>
	<select id="<?php echo 'cbo_units_'.$unit_id; ?>" class="form-control cbo_child_unit">
		<?php foreach($child_units as $child_unit) { ?>
			<option value="<?php echo $child_unit->unit_id; ?>"><?php echo $child_unit->unit_name; ?></option>
		<?php } ?>
	</select>
<hr>
<button id="btn_create_child" class="btn btn-success" style="margin-bottom: 15px;">
	<i class="fa fa-plus"></i> Create new child unit
</button>
<form id="frm_child_items">
	<table id="tbl_unit_child" class="table table-striped table-bordered">
		<thead style="background: #2196f3;color: white;">
			<th class="hidden">Child ID</th>
			<th>Child unit</th>
			<th>Equivalent</th>
			<th><center>Action</center></th>
		</thead>
		<tbody>
			<?php foreach($measurements as $measurement) { ?>
				<tr>
					<td class="hidden"><input type="hidden" name="sub_unit_id[]" value="<?php echo $measurement->sub_unit_id; ?>"></td>
                    <td><?php echo $measurement->unit_name; ?></td>
                    <td><input class="form-control text-center" type="number" name="equivalent_qty[]" value="<?php echo $measurement->equivalent_qty; ?>"></td>
                    <td><center><button id="btn_remove_child" class="btn btn-danger"><i class="fa fa-times"></i></button></center></td>
				</tr>
			<?php } ?>
		</tbody>
	</table>
</form>