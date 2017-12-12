<company style="font-weight:bold;font-size:15pt;"><?php echo $company_info->company_name;?> </company>
<address style="font-weight:bold;font-size:12pt;margin:0;"><?php echo $company_info->company_address;?> </address>
<br>
<table class="table table-responsive">
  <thead>
    <tr>
      <th>Item Code</th>
      <th>Item Description</th>
      <th align="right">In</th>
      <th align="right">Out</th>
      <th align="right">On hand</th>
    </tr>
  </thead>
  <tbody>
    <?php
      foreach($inventory as $items){
      ?>
      <tr>
        <td><?php echo $items->product_code; ?></td>
        <td><?php echo $items->product_desc; ?></td>
        <td align="right"><?php echo number_format($items->total_in,0); ?></td>
        <td align="right"><?php echo number_format($items->total_out,0); ?></td>
        <td align="right"><?php echo number_format($items->stock_onhand,0); ?></td>
      </tr>
    <?php
      }
     ?>
  </tbody>
</table>

<style>
    table {
      padding: 5px !important;
    }

    th {
      padding-top: 6px !important;
      padding-bottom: 6px !important;
      padding-left: 6px !important;
      font-size: 14px;
    }

    tr {
      padding: 6px !important;
    }

    td {
      padding-top: 6px !important;
      padding-bottom: 6px !important;
      padding-left: 6px !important;
      font-size: 14px;
    }
</style>
