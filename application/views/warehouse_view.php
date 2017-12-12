<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title; ?></title>
	<link rel="stylesheet" href="assets/plugins/spinner/dist/ladda-themeless.min.css">

    <link href="assets/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link type="text/css" href="assets/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet">
    <link type="text/css" href="assets/plugins/datatables/dataTables.themify.css" rel="stylesheet">
   <link href="assets/plugins/select2/select2.min.css" rel="stylesheet">
	<?php echo $_def_css_files; ?>
</head>
	<body class="animated-content">

<?php echo $_top_navigation; ?>

	<div id="wrapper">
	    <div id="layout-static">

	        <?php echo $_side_bar_navigation;?>

	        <div class="static-content-wrapper white-bg">
	            <div class="static-content"  >
	                <div class="page-content"><!-- #page-content -->
	                    <div class="container-fluid">
	                    	<div class="panel panel-default" style="margin-top: 10px;">
	                    		<div class="panel-body" style="border-top: 5px solid #2196f3;">
	                    			<div class="row">
	                    				<div class="container-fluid">
	                    					<div class="col-xs-12 col-sm-6">
	                    						<h1>Warehouse Report<br><i><small>Stocks-in and out</small></i></h1>
	                    					</div>
	                    					<div class="col-xs-12 col-sm-6" style="margin-top: 25px; visibility: hidden;">
	                    						<div class="col-xs-12 col-sm-2">
		                    						<b>Start Date :</b>
	                    						</div>
	                    						<div class="col-xs-12 col-sm-4">
	                    							<div class="input-group">
	                    								<input type="text" name="sDate" class="form-control date-picker" value="<?php echo date("m/d/Y"); ?>">
	                    								<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                    						</div>
	                    						</div>
	                    						<div class="col-xs-12 col-sm-2">
		                    						<b>End Date :</b>
	                    						</div>
	                    						<div class="col-xs-12 col-sm-4">
		                    						<div class="input-group">
	                    								<input type="text" name="sDate" class="form-control date-picker" value="<?php echo date("m/d/Y"); ?>">
	                    								<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                    						</div>
		                    					</div>
	                    					</div>
	                    				</div>
	                    			</div><hr>
	                    			<div class="col-xs-12">
	                    				<h4><b>INGREDIENTS BREAKDOWN</b></h4>
	                    				<h4><b>LEGEND: </b><span style='background: #8bc34a; border-radius: 50%;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> Normal <span style='background: #ff9800; border-radius: 50%;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> Below Normal <span style='background: #f44336; border-radius: 50%;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> Needs replenishment</h4>
	                    				<table id="tbl_inventory_ingredients" class="table table-striped table-bordered table-responsive">
	                    					<thead style="background: #2196f3; color: white;">
	                    						<th><b>STATUS</b></th>
	                    						<th><b>INGREDIENT</b></th>
	                    						<th><b>IN</b></th>
	                    						<th><b>OUT</b></th>
	                    						<th><b>REMAINING</b></th>
	                    					</thead>
	                    					<tbody></tbody>
	                    				</table>
	                    			</div>
	                    		</div>
	                    		<div class="panel-footer">
	                    			
	                    		</div>
	                    	</div>
	                    </div> <!-- .container-fluid -->
	                </div> <!-- #page-content -->
	            </div>

	            <footer role="contentinfo">	
	                <div class="clearfix">
	                    <ul class="list-unstyled list-inline pull-left">
	                    </ul>
	                    <button class="pull-right btn btn-link btn-xs hidden-print" id="back-to-top"><i class="ti ti-arrow-up"></i></button>
	                </div>
	            </footer>

	        </div>
	    </div>
	</div>
	<?php echo $_def_js_files; ?>
	<script src="assets/plugins/spinner/dist/spin.min.js"></script>
	<script src="assets/plugins/spinner/dist/ladda.min.js"></script>

	<!-- Data picker -->
	<script src="assets/plugins/datapicker/bootstrap-datepicker.js"></script>

	<script type="text/javascript" src="assets/plugins/datatables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
	<!-- Select2 -->
	<script src="assets/plugins/select2/select2.full.min.js"></script>

	<!-- numeric formatter -->
	<script src="assets/plugins/formatter/autoNumeric.js" type="text/javascript"></script>
	<script src="assets/plugins/formatter/accounting.js" type="text/javascript"></script>

	<script type="text/javascript">
		(function(){

			var dtIngredients;

			dtIngredients = $('#tbl_inventory_ingredients').DataTable({
				"dom": '<"toolbar">frtip',
	            "bLengthChange":false,
	            "pageLength": 50,
	            language: {
			        searchPlaceholder: "Search ingredient"
			    },
	            "order": [[ 1, 'asc' ]],
	            "ajax" : "Warehouse/getList/getIngredientInventory",
	            "columns": [
	                {
	                    "targets": [0],data:"status",
	                    render: function(data, type, full, meta) {
	                    	if (data == 1) {
	                    		return "<center><span style='background: #8bc34a; border-radius: 50%;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></center>";
	                    	} else if (data == 2) {
	                    		return "<center><span style='background: #ff9800;border-radius: 50%;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></center>";
	                    	} else if (data == 3) {
	                    		return "<center><span style='background: #f44336;border-radius: 50%;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></center>";
	                    	}
	                    }
	                },
	                { targets:[1],data: "ingredient_name" },
	                { 
	                	class: "text-right",
	                	targets:[2],
	                	data: "stock_in",
	                	render: function(data, type, full, meta) {
	                		return accounting.formatNumber(data,4)+' '+(full.primary_unit === null ? '' : full.primary_unit);
	                	}
	                },
	                { 
	                	class: "text-right",
	                	targets:[3],
	                	data: "stock_out",
	                	render: function(data, type, full, meta) {
	                		return accounting.formatNumber(data,4)+' '+(full.primary_unit === null ? '' : full.primary_unit);
	                	}
	                },
	                { 
	                	class: "text-right",
	                	targets:[4],
	                	data: "balance",
	                	render: function(data, type, full, meta) {
	                		return accounting.formatNumber(data,4)+' '+(full.primary_unit === null ? '' : full.primary_unit);
	                	}
	                }
	            ]
			});

			$('.date-picker').datepicker({
	            todayBtn: "linked",
	            keyboardNavigation: false,
	            forceParse: false,
	            calendarWeeks: true,
	            autoclose: true
	        });
		})();
	</script>

</body>
</html>