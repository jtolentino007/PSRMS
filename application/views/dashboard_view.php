<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from avenxo.kaijuthemes.com/ui-typography.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Jun 2016 12:09:25 GMT -->
<head>
    <meta charset="utf-8">
    <title>Ordering Management</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="description" content="Avenxo Admin Theme">
    <meta name="author" content="">

    <link href="assets/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <!-- Datepicker -->
    <link href="assets/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

   <?php echo $_def_css_files; ?>

   <style type="text/css">
       html {
            overflow-x: hidden;
       }

       .btn,
       a {
            white-space: normal!important;
            word-wrap: break-word!important;
            font-family:Tahoma, Geneva, sans-serif;
            -webkit-box-shadow: 0px 3px 8px 1px rgba(166,166,166,1);
            -moz-box-shadow: 0px 3px 8px 1px rgba(166,166,166,1);
            box-shadow: 0px 3px 8px 1px rgba(166,166,166,1);
       }

       #topnav {
            display: none!important;
       }

       .navbar-fixed-top + #wrapper, .navbar-fixed-top + #layout-fixed {
            padding-top: 0!important;
       }

       h2.panel-title {
            color: #404040!important;
            font-family: 'Trebuchet MS', Helvetica, sans-serif;
            font-size: 20px!important;
       }

       .panel {
            -webkit-box-shadow: 0px 0px 12px 0px rgba(179,179,179,1);
            -moz-box-shadow: 0px 0px 12px 0px rgba(179,179,179,1);
            box-shadow: 0px 0px 12px 0px rgba(179,179,179,1);
        }
   </style>

</head>

<body class="animated-content">

<?php echo $_top_navigation; ?>

<?php
    $user_id=$this->session->user_id;
                $user = $this->db->query('SELECT user_accounts.user_group_id FROM user_accounts
                         WHERE user_id='.$user_id);
    $user_group = $user->row(0);
    $user_group_id = $user_group->user_group_id;
    $query = $this->db->query('SELECT user_groups_permission.* FROM user_groups_permission
                     WHERE user_group_id='.$user_group_id);

    $category = $this->db->query('SELECT category_id,category_name FROM categories');
    $products = $this->db->query('SELECT product_id,product_desc FROM products');
?>

<div id="wrapper">
        <div id="layout-static">
        <?php echo $_side_bar_navigation; ?>
        <div class="static-content-wrapper">
            <div class="static-content"  >
                <div class="page-content">
                    <div class="row">
                        <div class="container-fluid">
                            <div class="col-xs-12 col-sm-6">
                                <h1 style="margin-left: 20px; font-weight: 700; font-family: 'Trebuchet MS', Helvetica, sans-serif;text-shadow: 2px 2px 4px #afafaf;"><span style="font-size: 50px;">O</span>RDERING <span style="font-size: 50px;">M</span>ANAGEMENT <small style="color: #ff9800;">ADMINISTRATION v1.8</small></h1>
                            </div>
                            <div class="col-xs-12 col-sm-6 text-right" style="padding-top: 10px;">
                                <a id="btn_logout" href="Login/transaction/logout" class="btn btn-primary" style="border-radius: 50%;padding: 15px 20px;">
                                    <i class="fa fa-sign-out" style="font-size: 20px;"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container-fluid">
                            <div class="col-xs-12 col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="border-top: 5px solid #445963; background: transparent!important;">
                                        <h2 class="panel-title">PRODUCTS SECTION</h2>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="categories" class="btn btn-success btn-block btn-height <?php echo (in_array('1-7', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #009688!important; border-color: #009688!important;"><br>
                                                <i class="fa fa-cubes" style="font-size: 50px;"></i><br><br>
                                                <span>PRODUCT CATEGORIES</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="ingredients_categories" class="btn btn-success btn-block btn-height <?php echo (in_array('1-7', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #009688!important; border-color: #009688!important;"><br>
                                                <i class="fa fa-clone" style="font-size: 50px;"></i><br><br>
                                                <span>INGREDIENTS CATEGORIES</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="units" class="btn btn-success btn-block btn-height <?php echo (in_array('1-8', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #d39e00!important; border-color: #d39e00!important;"><br>
                                                <i class="fa fa-cube" style="font-size: 50px;"></i><br><br>
                                                <span>UNITS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="ingredients" class="btn btn-success btn-block btn-height <?php echo (in_array('1-9', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #00bcd4!important; border-color: #00bcd4!important;"><br>
                                                <i class="fa fa-bars" style="font-size: 50px;"></i><br><br>
                                                <span>INGREDIENTS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-12">
                                            <a href="products" class="btn btn-success btn-block btn-height <?php echo (in_array('1-14', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #e67e22!important; border-color: #e67e22!important;"><br>
                                                <i class="fa fa-map-o" style="font-size: 50px;"></i><br><br>
                                                <span>MENU</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="border-top: 5px solid #445963; background: transparent!important;">
                                        <h2 class="panel-title">STOCK SECTION</h2>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="Deliveries" class="btn btn-primary btn-block btn-height <?php echo (in_array('1-1', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-truck" style="font-size: 50px;"></i><br><br>
                                                <span>RECEIVING</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="Delivery_ingredients" class="btn btn-primary btn-block btn-height <?php echo (in_array('1-1', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-linode" style="font-size: 50px;"></i><br><br>
                                                <span>INGREDIENTS RECEIVING</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="Issuance" class="btn btn-success btn-block btn-height <?php echo (in_array('1-2', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-cube" style="font-size: 50px;"></i><br><br>
                                                <span>ISSUANCE</span>
                                            </a>
                                        </div>
                                        <!-- <div class="col-xs-12 col-sm-12">
                                            <a href="stock" class="btn btn-success btn-block btn-height <?php echo (in_array('1-17', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #2980b9!important; border-color: #2980b9!important;"><br>
                                                <i class="fa fa-linode" style="font-size: 50px;"></i><br><br>
                                                <span>STOCKS</span>
                                            </a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="border-top: 5px solid #445963; background: transparent!important;">
                                        <h2 class="panel-title">USERS SECTION</h2>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="users" class="btn btn-info btn-block btn-height <?php echo (in_array('1-20', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-male" style="font-size: 50px;"></i><br><br>
                                                <span>USER ACCOUNTS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="user_groups" class="btn btn-warning btn-block btn-height <?php echo (in_array('1-21', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-address-book" style="font-size: 50px;"></i><br><br>
                                                <span>USER RIGHTS</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container-fluid">
                            <div class="col-xs-12 col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="border-top: 5px solid #445963; background: transparent!important;">
                                        <h2 class="panel-title">MISCELLANEOUS</h2>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="vendors" class="btn btn-success btn-block btn-height <?php echo (in_array('1-22', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #009688!important; border-color: #009688!important;"><br>
                                                <i class="fa fa-user-circle" style="font-size: 50px;"></i><br><br>
                                                <span>VENDORS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="servers" class="btn btn-success btn-block btn-height <?php echo (in_array('1-23', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #d39e00!important; border-color: #d39e00!important;"><br>
                                                <i class="fa fa-child" style="font-size: 50px;"></i><br><br>
                                                <span>SERVERS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="customers" class="btn btn-success btn-block btn-height <?php echo (in_array('1-16', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #8e44ad!important; border-color: #8e44ad!important;"><br>
                                                <i class="fa fa-users" style="font-size: 50px;"></i><br><br>
                                                <span>CUSTOMERS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="discounts" class="btn btn-success btn-block btn-height <?php echo (in_array('1-10', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #5364c3!important; border-color: #5364c3!important;"><br>
                                                <i class="fa fa-database" style="font-size: 50px;"></i><br><br>
                                                <span>DISCOUNTS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="cards" class="btn btn-success btn-block btn-height <?php echo (in_array('1-11', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #9c27b0!important; border-color: #9c27b0!important;"><br>
                                                <i class="fa fa-credit-card" style="font-size: 50px;"></i><br><br>
                                                <span>CARDS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="tables" class="btn btn-success btn-block btn-height <?php echo (in_array('1-12', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #607d8b!important; border-color: #607d8b!important;"><br>
                                                <i class="fa fa-table" style="font-size: 50px;"></i><br><br>
                                                <span>TABLES</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="suppliers" class="btn btn-success btn-block btn-height <?php echo (in_array('1-15', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #27ae60!important; border-color: #27ae60!important;"><br>
                                                <i class="fa fa-vcard" style="font-size: 50px;"></i><br><br>
                                                <span>SUPPLIERS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-8">
                                            <a id="btn_pos" href="pos_v2" class="btn btn-primary btn-block btn-height <?php echo (in_array('1-3', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-calculator" style="font-size: 50px;"></i><br><br>
                                                <span>POINT OF SALES</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="border-top: 5px solid #445963; background: transparent!important;">
                                        <h2 class="panel-title">REPORTS SECTION</h2>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="Receipts" class="btn btn-info btn-block btn-height <?php echo (in_array('1-4', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-file" style="font-size: 50px;"></i><br><br>
                                                <span>RECEIPTS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <button class="sales_reportsjs btn btn-info btn-block btn-height <?php echo (in_array('1-5', $this->session->user_rights) ? '' : 'hidden') ?>" id="btn_sales_report">
                                                <br>
                                                <i class="fa fa-book" style="font-size: 50px;"></i><br><br>
                                                <span>DAILY SALES REPORT</span>
                                            </button>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <button class="btn btn-info btn-block btn-height <?php echo (in_array('1-6', $this->session->user_rights) ? '' : 'hidden') ?>" id="btn_inventory_report"><br>
                                                <i class="fa fa-archive" style="font-size: 50px;"></i><br><br>
                                                <span>INVENTORY REPORT</span>
                                            </button>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="voids" class="btn btn-success btn-block btn-height <?php echo (in_array('1-16', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #e91e63!important; border-color: #e91e63!important;"><br>
                                                <i class="fa fa-code" style="font-size: 50px;"></i><br><br>
                                                <span>VOID LOGS</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="Templates/layout/endbatch/0/preview" class="btn btn-success btn-block btn-height <?php echo (in_array('1-16', $this->session->user_rights) ? '' : 'hidden') ?>" style="background: #607d8b!important; border-color: #607d8b!important;"><br>
                                                <i class="fa fa-list-alt" style="font-size: 50px;"></i><br><br>
                                                <span>PRINT LAST BATCH REPORT</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="xreading" class="btn btn-success btn-block btn-height <?php echo (in_array('1-18', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-file-o" style="font-size: 50px;"></i><br><br>
                                                <span>X-READING</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <button class="btn btn-primary btn-block btn-height <?php echo (in_array('1-19', $this->session->user_rights) ? '' : 'hidden') ?>" id="btn_z_reading"><br>
                                                <i class="fa fa-file-o" style="font-size: 50px;"></i><br><br>
                                                <span>Z-READING</span>
                                            </a>
                                        </div>
                                        <div class="col-xs-12 col-sm-4">
                                            <a href="warehouse" class="btn btn-primary btn-block btn-height <?php echo (in_array('1-18', $this->session->user_rights) ? '' : 'hidden') ?>"><br>
                                                <i class="fa fa-bank" style="font-size: 50px;"></i><br><br>
                                                <span>WAREHOUSE REPORT</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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

<!-- Date range use moment.js same as full calendar plugin -->
<script src="assets/plugins/fullcalendar/moment.min.js"></script>
<!-- Data picker -->
<script src="assets/plugins/datapicker/bootstrap-datepicker.js"></script>
<!-- Select2 -->
<script src="assets/plugins/select2/select2.full.min.js"></script>
<!-- Date range use moment.js same as full calendar plugin -->
<script src="assets/js/plugins/fullcalendar/moment.min.js"></script>

<script>
    $('.date-picker').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true

    });
</script>
<script>
$(document).ready(function(){

    $('#btn_generate_z').click(function(){
        if ($('#fromdatepdf').val() !== '' || $('#todatepdf').val() !== '')
            window.location.replace('Templates/layout/zreading/0/preview?sdate='+$('#fromdatepdf').val()+'&stime='+$('#fromtimepdf').val()+'&edate='+$('#todatepdf').val()+'&etime='+$('#totimepdf').val());
        else
            alert('Please fill in the required(*) Dates');
    });

    $('#btn_z_reading').click(function(){
        $('#modal_zreading_reportsjs').modal('show');
    });

    $('#btn_exit').on('click', function(){
        window.close();
    });

    $('#btn_sales_report').click(function(){
        getsales();
        $('#modal_sales_reportsjs').modal('toggle');
    });

    $("#btn_inventory_report").click(function(){
        getinventory();
        $('#modal_inventory_reportsjs').modal('toggle');
    });

    $('#inventoryfromdate').change(function() {
        getinventory();
    });

    $('#inventorytodate').change(function() {
        getinventory();
    });

    var getinventory=function(){
        var _data=$('#frm_inventoryreports').serializeArray();
        $.ajax({
            "dataType":"html",
            "type":"POST",
                    "data":_data,
            "url":"Templates/layout/inventoryreports/",
            beforeSend : function(){
                $('.preview_inventoryreports').html("<center><img src='assets/img/loader/preloaderimg.gif'><h3>Loading...</h3></center>");
            },
        }).done(function(response){
            $('.preview_inventoryreports').html(response);
        });

    };

    $('#salesfromdate').change(function() {
        getsales();
    });

    $('#salestodate').change(function() {
        getsales();
    });

    $('#btn_logout').on('click', function(){
        window.close();
    });

    var getsales=function(){
        var _data=$('#frm_salesreports').serializeArray();
        $.ajax({
            "dataType":"html",
            "type":"POST",
                    "data":_data,
            "url":"Templates/layout/dailyreports/",
            beforeSend : function(){
                $('.preview_salesreports').html("<center><img src='assets/img/loader/preloaderimg.gif'><h3>Loading...</h3></center>");
            },
        }).done(function(response){
            $('.preview_salesreports').html(response);
        });
    };

    $("#stock_cardjs").click(function(){
        $('#modal_stock_cardjs').modal('toggle');
    });

    $('#print_daily_report').click(function(event){
    /*printing_notif();*/
        var currentURL = window.location.href;
        var output = currentURL.match(/^(.*)\/[^/]*$/)[1];
        output = output+"/assets/css/css_special_files.css";
        $(".preview_salesreports").printThis({
            debug: false,
            importCSS: true,
            importStyle: false,
            printContainer: false,
            loadCSS: output,
            formValues:false
        });
    });

    $('#print_inventory_report').click(function(event){
        /*printing_notif();*/
        var currentURL = window.location.href;
        var output = currentURL.match(/^(.*)\/[^/]*$/)[1];
        output = output+"/assets/css/css_special_files.css";
        $(".preview_inventoryreports").printThis({
                debug: false,
                importCSS: true,
                importStyle: false,
                printContainer: false,
                loadCSS: output,
                formValues:false
        });
    });
})();

</script>
<?php
foreach ($query->result() as $row)
{
       if($row->receiving_stock!="enabled"){
           echo "<script>
                    $('a.receivingjs').attr('href', '#');
                    document.getElementById('receivingjs').style.color = 'black';
                </script>";
       }
       if($row->transactions!="enabled"){
           echo "<script>
                    $('a.transactionsjs').attr('href', '#');
                    document.getElementById('transactionsjs').style.color = 'black';
                </script>";
       }
       if($row->point_of_sale!="enabled"){
           echo "<script>
                    $('a.posjs').attr('href', '#');
                    document.getElementById('posjs').style.color = 'black';
                </script>";
       }
       if($row->transactions!="enabled"){
           echo "<script>
                    $('a.transactionsjs').attr('href', '#');
                    document.getElementById('transactionsjs').style.color = 'black';
                </script>";
       }
       if($row->sales_reports!="enabled"){
           echo "<script>
                    $('a.sales_reportsjs').attr('data-target', '#');
                    document.getElementById('sales_reportsjs').style.color = 'black';
                </script>";
       }
       if($row->inventory_reports!="enabled"){
           echo "<script>
                    $('a.inventory_reportsjs').attr('data-target', '#');
                    document.getElementById('inventory_reportsjs').style.color = 'black';
                </script>";
       }
       if($row->product_management!="enabled"){
           echo "<script>
                    $('a.product_managementjs').attr('href', '#');
                    document.getElementById('product_managementjs').style.color = 'black';
                </script>";
       }
       if($row->supplier_management!="enabled"){
           echo "<script>
                    $('a.supplier_managementjs').attr('href', '#');
                    document.getElementById('supplier_managementjs').style.color = 'black';
                </script>";
       }
       if($row->customer_management!="enabled"){
           echo "<script>
                    $('a.customer_managementjs').attr('href', '#');
                        document.getElementById('customer_managementjs').style.color = 'black';
                </script>";
       }
       if($row->xreading!="enabled"){
           echo "<script>
                    $('a.xreading_reportjs').attr('href', '#');
                    document.getElementById('xreading_reportjs').style.color = 'black';
                </script>";
       }
       if($row->zreading!="enabled"){
           echo "<script>
                    $('a.zreading_reportjs').attr('data-target', '#');
                    document.getElementById('zreading_reportjs').style.color = 'black';
                </script>";
       }
       if($row->user_account!="enabled"){
           echo "<script>
                    $('a.user_accountjs').attr('href', '#');
                    document.getElementById('user_accountjs').style.color = 'black';
                </script>";
       }
       if($row->user_rights!="enabled"){
           echo "<script>
                    $('a.user_rightsjs').attr('href', '#');
                    document.getElementById('user_rightsjs').style.color = 'black';
                </script>";
       }
       if($row->company_info!="enabled"){
           echo "<script>
                    $('a.company_infojs').attr('href', '#');
                    document.getElementById('company_infojs').style.color = 'black';
                </script>";
       }
       if($row->notes!="enabled"){
           echo "<script>
                    $('a.notesjs').attr('href', '#');
                    document.getElementById('notesjs').style.color = 'black';
                </script>";
       }


}
?>


</body>


</html>
