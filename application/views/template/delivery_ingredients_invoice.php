<!DOCTYPE html>
<html>
<head>
	<title>Delivery Invoice Report</title>
	<style type="text/css">
		td,
		th {
			padding: 10px;
		}

	</style>
</head>
<body>
	<table width="100%" border="1" cellspacing="0">
		<tr>
			<td colspan="4">
				<center><h1>Delivery Invoice</h1></center>
			</td>
		</tr>
		<tr>
			<td width="15%"><strong>DOCUMENT CODE :</strong></td>
			<td><?php echo $info->delivery_ingredients_info_no; ?></td>
			<td width="15%"><strong>RECEIPT # :</strong></td>
			<td><?php echo $info->delivery_ingredients_doc_no; ?></td>
		</tr>
		<tr>
			<td width="15%"><strong>SUPPLIER :</strong></td>
			<td><?php echo $info->supplier_name; ?></td>
			<td width="15%"><strong>DATE RECEIVED :</strong></td>
			<td><?php echo $info->date_received; ?></td>
		</tr>
		<tr>
			<td width="15%"><strong>REMARKS :</strong></td>
			<td colspan="3"><?php echo $info->remarks; ?></td>
		</tr>
	</table>
	<table width="100%" border="1" cellspacing="0">
		<thead>
			<th width="7%">Qty</th>
			<th width="20%">Description</th>
			<th width="10%">Unit</th>
			<th width="10%">Cost</th>
			<th width="10%">Discount</th>
			<th width="10%">Tax</th>
			<th width="10%">Total</th>
		</thead>
		<tbody>
			<?php foreach($items as $item) { ?>
				<tr>
					<td align="center"><?php echo number_format($item->delivery_ingredients_items_qty,2); ?></td>
					<td><?php echo $item->ingredient_name; ?></td>
					<td><?php echo $item->unit_name; ?></td>
					<td align="right"><?php echo number_format($item->delivery_ingredients_items_price,2); ?></td>
					<td align="right"><?php echo number_format($item->delivery_ingredients_items_line_total_discount,2); ?></td>
					<td align="right"><?php echo number_format($item->delivery_ingredients_items_tax_amount,2); ?></td>
					<td align="right"><?php echo number_format($item->delivery_ingredients_items_line_total,2); ?></td>
				</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2"><strong>Total Discount:</strong></td>
				<td align="right"><?php echo number_format($info->total_discount,2); ?></td>
				<td colspan="2"><strong>Total Before Tax:</strong></td>
				<td colspan="2" align="right"><?php echo number_format($info->total_before_tax,2); ?></td>
			</tr>
			<tr>
				<td colspan="2"><strong>Total Tax Amount:</strong></td>
				<td align="right"><?php echo number_format($info->total_tax_amount,2); ?></td>
				<td colspan="2"><strong>Total After Tax:</strong></td>
				<td colspan="2" align="right"><?php echo number_format($info->total_after_tax,2); ?></td>
			</tr>
		</tfoot>
	</table>
</body>
</html>