<!DOCTYPE html>
<html>
<head>
	<title>End Batch Report</title>
<script type="text/javascript">
      window.onload = function() {
      window.print();
      setTimeout(function(){
        var url = window.location.origin;
        url = url + "/POS/Login/transaction/logout";  // this number is dynamic actually
        window.location.href = url;
      },100);
   }
 </script>
</head>
<body style="width: 250px;">
<?php
	$fromdate="1900/10/01"; //post value of the date
	$tilldate="2016/09/10"; //post value of the date
	$newfromdate = date("Y-m-d", strtotime($fromdate));
	$newtilldate = date("Y-m-d", strtotime($tilldate));
	$filterdate="'$newfromdate'";
	$filterdate2="'$newtilldate'";

	$date = date('Y-m-d H:i:s');
	$today = date("m/d/Y", strtotime($date));
	$time = date("H:i:s", strtotime($date));

	$user_id=$this->session->user_id;

?>
	<center><?php echo "<h2 style='font-size:11px;text-align:center;font-family:tahoma;margin:0px;margin-bottom:5px;'>END BATCH REPORT</h2>"; ?></center>
	<center><?php echo "<h2 style='font-size:11px;text-align:center;font-family:tahoma;margin:0px;margin-bottom:5px;'></h2>"; ?></center>
	<center><?php echo "<h3 style='font-size:11px;text-align:center;font-family:tahoma;margin:0px;margin-bottom:5px;'>".$company_info->company_name."</h3>"; ?></center>
	<center><?php echo "<h3 style='font-size:11px;text-align:center;font-family:tahoma;margin:0px;margin-bottom:5px;'>".$company_info->company_address."</h3>"; ?></center>
	<center><?php echo "<h3 style='font-size:11px;text-align:center;font-family:tahoma;margin:0px;margin-bottom:5px;'>".$company_info->email_address."</h3>"; ?></center>
	<center><?php echo "<h3 style='font-size:11px;text-align:center;font-family:tahoma;margin:0px;margin-bottom:5px;'>".$company_info->landline."</h3>"; ?></center>
	<div>
		<table width="100%" cellpadding="5" style="font-family: tahoma;font-size: 8px;">
            <tr>
				<td width="45%" valign="top">
                    <companyname>
                        <h3 style="margin-bottom: 3px !important;margin-top: 0px !important;"><strong><?php  echo "Date :<u>".$today."</u>";?></strong></h3>
                        <h3 style="margin-bottom: 3px !important;margin-top: 0px !important;"><strong><?php  echo "Time : <u>".date('g:i A', strtotime($time))."</u>";?></strong></h3>
                        <h3 style="margin-bottom: 3px !important;margin-top: 0px !important;"><strong><?php echo "Cashier Name :<br>".$user_info->full_name; ?> </strong></h3>
                    </companyname>
                </td>
            </tr>
        </table>
    </div>
    <table width='100%' style='border-collapse: collapse;border-spacing: 0;font-family: tahoma;font-size: 8px;'>
    	<thead>
    		<th width="25%" style='border-bottom: 2px solid gray; border-top: 2px solid gray;text-align: left;'>Receipt #</th>
			<th width="20%" style='border-bottom: 2px solid gray; border-top: 2px solid gray;text-align: left;'>Table #</th>
			<th width="20%" style='border-bottom: 2px solid gray; border-top: 2px solid gray;text-align: center;'># of Customers</th>
            <th width="35%" colspan="2" style='border-bottom: 2px solid gray; border-top: 2px solid gray;text-align: center;'>Time in - Time out</th>
    	</thead>
    	<tbody>
    		<?php

				$query = $this->db->query("SELECT
				*,
				GROUP_CONCAT(tables.table_name) table_names
				FROM
				(SELECT 
				receipt_no,
				pos_invoice.*,
				customers.customer_name,
				pos_payment.pos_payment_id,
				TIME_FORMAT(pos_invoice.transaction_timestamp,'%h:%i %p') time_in,
				TIME_FORMAT(pos_payment.transaction_timestamp,'%h:%i %p') time_out,
				SUM(pos_invoice_items.total) total
				FROM pos_payment
				LEFT JOIN pos_invoice ON pos_payment.pos_invoice_id=pos_invoice.pos_invoice_id
				INNER JOIN pos_invoice_items ON pos_invoice_items.pos_invoice_id = pos_invoice.pos_invoice_id
				LEFT JOIN customers ON pos_invoice.customer_id=customers.customer_id
				WHERE is_current_batch=1 
				GROUP BY pos_invoice_id) a
				INNER JOIN order_tables ON order_tables.pos_invoice_id = a.pos_invoice_id
				LEFT JOIN tables ON tables.table_id = order_tables.table_id
				GROUP BY a.pos_invoice_id");
					
				$gtotal = $query->row();

				$grandtotal=0; //start value of grandtotal
				$cash_amount=0;
				$card_amount=0;
				$tendered=0;
				$change=0;

				foreach ($query->result() as $row)
				{
				   $receiptno=  $row->receipt_no;
				   $invoiceid=  $row->pos_invoice_id;
				   $customer=  $row->customer_name;
				   $pos_payment_id=  $row->pos_payment_id;
			?>

		<tr>
			<td width="25%" style='border-bottom: 2px solid gray;border-top: 2px solid gray;text-align: left;text-align: left;'><?php echo $receiptno; ?></td>
			<td width="20%" style='border-bottom: 2px solid gray;border-top: 2px solid gray;text-align: left;text-align: left;'><?php echo $row->table_names; ?></td>
			<td width="20%" style='border-bottom: 2px solid gray;border-top: 2px solid gray;text-align: left;text-align: center;'><?php echo $row->customer_count; ?></td>
			<td width="35%" colspan="3" style='border-bottom: 2px solid gray;border-top: 2px solid gray;text-align: left;'><?php echo $row->time_in.' - '.$row->time_out; ?></td>
		</tr>

		<tr>
			<th colspan="4" style='border-bottom: 2px solid gray;text-align: left;'>Category</th>
			<th colspan="3" style='border-bottom: 2px solid gray;text-align: right;'>Total</th>
		</tr>

		<?php
					$query1 = $this->db->query('SELECT
							*
							FROM
							(SELECT
							*
							FROM
							(SELECT
							brand_id,
							brand_name,
							pos_invoice_id,
							SUM(total) total
							FROM
							(SELECT 
							products.product_desc,
							pos_invoice_items.pos_invoice_id,
							pos_invoice_items.product_id,
							SUM(pos_invoice_items.pos_qty) pos_qty,
							pos_invoice_items.pos_price,
							SUM(pos_invoice_items.pos_discount) pos_discount,
							pos_invoice_items.tax_rate,
							SUM(pos_invoice_items.tax_amount) tax_amount,
							SUM(pos_invoice_items.total) total,
							products.brand_id,
							brands.brand_name
							FROM pos_invoice_items 
							LEFT JOIN products
							ON pos_invoice_items.product_id=products.product_id
							LEFT JOIN brands
							ON products.brand_id=brands.brand_id
							WHERE pos_invoice_id="'.$invoiceid.'"
							GROUP BY pos_invoice_items.pos_invoice_id, pos_invoice_items.product_id) a
							GROUP BY a.brand_id) b

							UNION

							(SELECT
							brand_id,
							brand_name,	
							0 pos_invoice_id,
							0 total
							FROM
							brands)
							) c
							WHERE c.brand_id != 1
							GROUP BY c.brand_id
							ORDER BY c.brand_id
							 ');

					foreach ($query1->result() as $prod)
					{

						?>
						<tr>
							<td colspan="4" style='text-align: left;'><?php echo $prod->brand_name; ?></td>
							<td colspan="2" style='text-align: right;'><?php echo number_format($prod->total,2); ?></td>
						</tr>

				<?php
						$grandtotal+=$prod->total; //computing for grandtotal
					}
				?>
						<tr>
							<td colspan="4" style='border-bottom:1px solid black;text-align: left;'><b>Sub Total :</b></td>
							<td colspan="2" style='border-bottom:1px solid black;border-top:1px solid black;text-align: right;'><?php echo "<b>".number_format($row->total_after_tax,2)."</b>"; ?>
						</tr>
				<?php
					$getcash = $this->db->query('SELECT pos_payment_details.card_amount FROM 	pos_payment_details WHERE pos_payment_id='.$pos_payment_id);
							foreach($getcash->result() as $row){
								$card_amount += $row->card_amount;
					}

					$getpayment = $this->db->query('SELECT pos_payment.* FROM pos_payment WHERE pos_payment_id='.$pos_payment_id);
							foreach($getpayment->result() as $row){
								$tendered += $row->tendered;
								$change += $row->change;
				}

			}

		?>

		<tr>
			<td colspan="6"><h4>SUMMARY</h4></td>
		</tr>

		<?php 
			$sql_summary = $this->db->query(
				"SELECT
				*
				FROM
				(SELECT
				*
				FROM
				(SELECT
				brand_id,
				brand_name,
				SUM(total) total
				FROM
				(SELECT 
				products.product_desc,
				pos_invoice_items.pos_invoice_id,
				pos_invoice_items.product_id,
				SUM(pos_invoice_items.pos_qty) pos_qty,
				pos_invoice_items.pos_price,
				SUM(pos_invoice_items.pos_discount) pos_discount,
				pos_invoice_items.tax_rate,
				SUM(pos_invoice_items.tax_amount) tax_amount,
				SUM(pos_invoice_items.total) total,
				products.brand_id,
				brands.brand_name
				FROM pos_invoice_items 
				INNER JOIN pos_invoice ON pos_invoice.pos_invoice_id = pos_invoice_items.pos_invoice_id
				LEFT JOIN products
				ON pos_invoice_items.product_id=products.product_id
				LEFT JOIN brands
				ON products.brand_id=brands.brand_id
				WHERE pos_invoice.is_current_batch = 1
				GROUP BY pos_invoice_items.pos_invoice_id, pos_invoice_items.product_id) a
				GROUP BY a.brand_id) b

				UNION

				(SELECT
				brand_id,
				brand_name,	
				0 total
				FROM
				brands)
				) c
				WHERE c.brand_id != 1
				GROUP BY c.brand_id
				ORDER BY c.brand_id"
			);

		$sum_summary = 0;
		foreach($sql_summary->result() as $summary_row) {
		?>
			<tr>
				<td colspan="4" style="font-weight: 600;"><?php echo "TOTAL SUM OF ALL ".$summary_row->brand_name; ?></td>
				<td colspan="2" style="font-weight: 600; border-bottom: 1px solid black;" align="right"><?php echo number_format($summary_row->total,2); ?></td>
			</tr>

			<?php $sum_summary += $summary_row->total; ?>
		<?php } ?>
			<tr><td></td></tr>
			<tr><td></td></tr>
			<tr><td></td></tr>
			<tr><td></td></tr>
			<tr>
				<td colspan="4" style="font-weight: 600; font-size: 12px;" align="right">GRAND TOTAL :</td>
				<td colspan="2" style="font-weight: 600; font-size: 12px; border-bottom: 1px solid black;" align="right"><?php echo number_format($sum_summary,2); ?></td>
			</tr>
		</table>

</body>
</html>