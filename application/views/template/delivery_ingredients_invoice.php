<!DOCTYPE html>
<html>
<head>
	<title>Delivery Invoice Report</title>
	<style type="text/css">
		td,
		th {
			padding: 10px;
		}

		html {
			font-family: 'Arial', sans-serif;
			font-size: 12px;
		}

	</style>
</head>
<body>
	<table width="100%" cellspacing="0">
		<tr>
			<td colspan="4">
				<center><h1 style="font-weight: 500;">DELIVERY INVOICE</h1></center>
			</td>
		</tr>
		<tr>
			<td width="20%"><strong>DOCUMENT CODE :</strong></td>
			<td style="border-bottom: 1px solid black; font-weight: 700;"><?php echo $info->delivery_ingredients_info_no; ?></td>
			<td width="15%"><strong>RECEIPT # :</strong></td>
			<td style="border-bottom: 1px solid black; font-weight: 700;"><?php echo $info->delivery_ingredients_doc_no; ?></td>
		</tr>
		<tr>
			<td width="20%"><strong>SUPPLIER :</strong></td>
			<td style="border-bottom: 1px solid black;font-weight: 700;"><?php echo $info->supplier_name; ?></td>
			<td width="20%"><strong>DATE RECEIVED :</strong></td>
			<td style="border-bottom: 1px solid black; font-weight: 700;"><?php echo $info->date_received; ?></td>
		</tr>
		<tr>
			<td width="20%"><strong>REMARKS :</strong></td>
			<td style="border-bottom: 1px solid black; font-weight: 700;" colspan="3"><?php echo $info->remarks; ?></td>
		</tr>
	</table><br>
	<table width="100%" border="1" cellspacing="0">
		<thead>
			<th width="20%">Description</th>
			<th width="10%">Cost</th>
			<th width="10%">Discount</th>
			<th width="10%">Tax</th>
			<th width="10%">Total</th>
		</thead>
		<tbody>
			<?php foreach($items as $item) { ?>
				<tr>
					<td><?php echo $item->ingredient_name; ?><br><small><?php echo number_format($item->delivery_ingredients_items_qty,2); ?> <?php echo $item->unit_name; ?></small></td>
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
				<td><strong>Total Before Tax:</strong></td>
				<td colspan="2" align="right"><?php echo number_format($info->total_before_tax,2); ?></td>
			</tr>
			<tr>
				<td colspan="2"><strong>Total Tax Amount:</strong></td>
				<td align="right"><?php echo number_format($info->total_tax_amount,2); ?></td>
				<td><strong>Total After Tax:</strong></td>
				<td colspan="2" align="right"><?php echo number_format($info->total_after_tax,2); ?></td>
			</tr>
		</tfoot>
	</table>
</body>
</html>