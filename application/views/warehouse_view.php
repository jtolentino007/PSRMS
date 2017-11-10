<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title; ?></title>
	<link rel="stylesheet" href="assets/plugins/spinner/dist/ladda-themeless.min.css">

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
	                    			<h1>Warehouse Report</h1>
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

	<script type="text/javascript" src="assets/plugins/datatables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
	<!-- Select2 -->
	<script src="assets/plugins/select2/select2.full.min.js"></script>

</body>
</html>