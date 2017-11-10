<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">

    <title><?php echo $title; ?></title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="description" content="Avenxo Admin Theme">
    <meta name="author" content="">

    <?php echo $_def_css_files; ?>

    <link rel="stylesheet" href="assets/plugins/spinner/dist/ladda-themeless.min.css">

    <link type="text/css" href="assets/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet">
    <link type="text/css" href="assets/plugins/datatables/dataTables.themify.css" rel="stylesheet">
    <link type="text/css" href="assets/plugins/iCheck/skins/minimal/blue.css" rel="stylesheet">              <!-- iCheck -->
    <link type="text/css" href="assets/plugins/iCheck/skins/minimal/_all.css" rel="stylesheet">                   <!-- Custom Checkboxes / iCheck -->
    <link href="assets/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="assets/plugins/select2/select2.min.css" rel="stylesheet">
    <link href="assets/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <style>
        .toolbar{
            float: left;
        }


        td.details-control {
            background: url('assets/img/Folder_Closed.png') no-repeat center center;
            cursor: pointer;
        }

        tr.details td.details-control {
            background: url('assets/img/Folder_Opened.png') no-repeat center center;
        }

        .child_table{
            padding: 5px;
            border: 1px #ff0000 solid;
        }

        .glyphicon.spinning {
            animation: spin 1s infinite linear;
            -webkit-animation: spin2 1s infinite linear;
        }

        .select2-container{
            min-width: 100%;
        }

        @keyframes spin {
            from { transform: scale(1) rotate(0deg); }
            to { transform: scale(1) rotate(360deg); }
        }

        @-webkit-keyframes spin2 {
            from { -webkit-transform: rotate(0deg); }
            to { -webkit-transform: rotate(360deg); }
        }

        .no-back {
            background: none!important;
        }

        .numeric{
            text-align: right;
            width: 60%;
        }

        .select2-container {
            min-width: 100%;
            z-index: 999999999;
        }

        .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
            background: transparent;
            border-bottom: none;
            font-weight: bolder;
        }

    </style>

</head>

<body class="animated-content" style="font-family: tahoma;">

<?php echo $_top_navigation; ?>

<div id="wrapper">
    <div id="layout-static">

        <?php echo $_side_bar_navigation;?>

        <div class="static-content-wrapper white-bg">
            <div class="static-content"  >
                <div class="page-content"><!-- #page-content -->
                    <div class="container-fluid">
                        <div data-widget-group="group1">
                            <div class="row">
                                <div class="col-md-12">
                                    <div id="div_product_list">
                                        <div class="panel panel-default">
                                            <div class="panel-body table-responsive" style="border-top: 5px solid #2196f3;">
                                                <h1>MENU</h1>
                                                <table id="tbl_products" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>PLU</th>
                                                        <th>Description</th>
                                                        <th>SRP</th>
                                                        <th>Vendor</th>
                                                        <th>On hand</th>
                                                        <th><center>Action</center></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="panel-footer"></div>
                                        </div>
                                    </div>
                                    <!-- <div id="div_product_fields" style="display: none;">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h2>Product Information</h2>
                                                <div class="panel-ctrls" data-actions-container="" data-action-collapse='{"target": ".panel-body"}'></div>
                                            </div>

                                            <div class="panel-body">
                                                <br />
                                                <form id="frm_product" role="form" class="form-horizontal row-border">
                                                
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">PLU :</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group">
                                                                                    <span class="input-group-addon">
                                                                                        <i class="fa fa-file-code-o"></i>
                                                                                    </span>
                                                                <input type="text" name="product_code" class="form-control inputhighlight" value="" data-error-msg="Product Code is required!" required>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">* Description 1 :</label>
                                                        <div class="col-md-6">
                                                            <textarea name="product_desc" class="form-control" style="border:1px solid #27ae60;" data-error-msg="Product Description is required!" placeholder="Description" required></textarea>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">Quantity:</label>
                                                        <div class="col-md-7">
                                                            <input type="text" name="quantity" class="form-control numeric inputhighlight" disabled>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">SRP:</label>
                                                        <div class="col-md-7">
                                                            <input type="text" name="sale_cost" class="form-control numeric inputhighlight">
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">Purchase Cost:</label>
                                                        <div class="col-md-7">
                                                            <input type="text" name="purchase_cost" class="form-control numeric inputhighlight">
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">Tax Rate %:</label>
                                                        <div class="col-md-7">
                                                            <input type="text" name="tax_rate" class="form-control numeric inputhighlight">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">Mark Up :</label>
                                                        <div class="col-md-7">
                                                            <input type="text" name="markup_percent" class="form-control  numeric inputhighlight">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">Minimum Stock Order:</label>
                                                        <div class="col-md-7">
                                                            <input type="text" name="minstock_order" class="form-control  numeric inputhighlight">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">Max Stock:</label>
                                                        <div class="col-md-7">
                                                            <input type="text" name="maxstock_order" class="form-control  numeric inputhighlight">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel"> * Inventory Type :</label>

                                                        <div class="col-md-4">
                                                            <select name="inventory" id="product_inventory" data-error-msg="Inventory type is required." required>
                                                               <option value="Inventory">Inventory</option>
                                                                 <option value="Non-Inventory">Non-Inventory</option>
                                                            </select>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel"> * Category :</label>

                                                        <div class="col-md-4">
                                                            <select name="category_id" id="product_category" style="border:1px solid #27ae60 !important;" data-error-msg="Category is required." required>
                                                                <option value="0">[ Create Category ]</option>
                                                                <?php
                                                                foreach($product_cat as $row)
                                                                {
                                                                    echo '<option value="'.$row->category_id  .'">'.$row->category_name.'</option>';
                                                                }
                                                                ?>
                                                            </select>


                                                        </div>

                                                    </div>
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel" > * Brand Name :</label>

                                                        <div class="col-md-4">
                                                            <select name="brand_id" id="product_brand" data-error-msg="Brand is required." required>
                                                                <option value="0">[ Create Brand ]</option>
                                                                <?php
                                                                foreach($product_brand as $row)
                                                                {
                                                                    echo '<option value="'.$row->brand_id.'">'.$row->brand_name.'</option>';
                                                                }
                                                                ?>
                                                            </select>

                                                        </div>

                                                    </div>



                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel">Unit :</label>

                                                        <div class="col-md-4">
                                                            <select name="unit_id" id="product_unit" data-error-msg="Unit is required." required>
                                                                <option value="0">[ Create Unit ]</option>
                                                                <?php
                                                                foreach($product_unit as $row)
                                                                {
                                                                    echo '<option value="'.$row->unit_id.'">'.$row->unit_name.'</option>';
                                                                }
                                                                ?>
                                                            </select>

                                                        </div>

                                                    </div>
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-1 control-label boldlabel"> * Vendor Name :</label>

                                                        <div class="col-md-4">
                                                            <select name="vendor_id"  id="product_vendor" data-error-msg="Vendor is required." required>
                                                                <option value="0">[ Create Vendor ]</option>
                                                                <?php
                                                                foreach($product_vendor as $row)
                                                                {
                                                                    echo '<option value="'.$row->vendor_id.'">'.$row->vendor_name.'</option>';
                                                                }
                                                                ?>
                                                            </select>

                                                        </div>

                                                    </div>

                                                    
                                                    <br /><br />
                                                </form>
                                            </div>

                                            <div class="panel-footer">
                                                <div class="row">
                                                    <div class="col-sm-9 col-sm-offset-3">
                                                        <button id="btn_save" class="btn-primary btn" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;""><span class=""></span>  Save Changes</button>
                                                        <button id="btn_cancel" class="btn-default btn" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;"">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->

                                </div>
                            </div>
                        </div>
                    </div> <!-- .container-fluid -->

                </div> <!-- #page-content -->
            </div>

            <div id="modal_product" class="modal fade" tabindex="-1" role="dialog" style="padding-left:0px !important;"><!--modal-->
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color:none;">
                            <button type="button" class="close"   data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title"><span id="modal_mode"> </span>Menu Information</h4>
                        </div>
                        <div class="modal-body" style="overflow:hidden;">
                            <form id="frm_product">
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">PLU * :</label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-file-code-o"></i>
                                                </span>
                                                <input type="text" name="product_code" id="product_code" class="form-control" value="" data-error-msg="PLU is required." required>
                                            </div>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Product Description * :</label>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-toggle-off"></i>
                                                    </span>
                                                <input type="text" name="product_desc" id="product_desc" class="form-control" data-error-msg="Product Description is required." required>
                                            </div>                                        
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Quantity :</label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-toggle-off"></i>
                                                </span>
                                                <input type="text" name="quantity" id="quantity" class="form-control numeric" value="0.00" disabled>
                                            </div>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">SRP :</label>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-toggle-off"></i>
                                                    </span>
                                                <input type="text" name="sale_cost" id="sale_cost" class="form-control numeric">
                                            </div>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Purchase Cost :</label>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-toggle-off"></i>
                                                    </span>
                                                <input type="text" name="purchase_cost" id="purchase_cost" class="form-control numeric">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Tax Rate % :</label>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-toggle-off"></i>
                                                    </span>
                                                <input type="text" name="tax_rate" id="tax_rate" class="form-control numeric">
                                            </div>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Mark Up :</label>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-toggle-off"></i>
                                                    </span>
                                                <input type="text" name="markup_percent" id="markup_percent" class="form-control numeric">
                                            </div>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Minimum Stock Order :</label>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-toggle-off"></i>
                                                    </span>
                                                <input type="text" name="minstock_order" id="minstock_order" class="form-control numeric">
                                            </div>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Max Stock :</label>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-toggle-off"></i>
                                                    </span>
                                                <input type="text" name="maxstock_order" id="maxstock_order" class="form-control numeric">
                                            </div>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Inventory Type * :</label>
                                            <select name="inventory" id="product_inventory" data-error-msg="Inventory type is required." required>
                                                <option value="">Please select supplier</option>
                                                <option value="Inventory">Inventory</option>
                                                <option value="Non-Inventory">Non-Inventory</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Category * :</label>
                                            <select name="category_id" id="product_category" data-error-msg="Category is required." required>
                                                <option value="0">[ Create Category ]</option>
                                                <?php
                                                foreach($product_cat as $row)
                                                {
                                                    echo '<option value="'.$row->category_id  .'">'.$row->category_name.'</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Brand Name * :</label>
                                            <select name="brand_id" id="product_brand" data-error-msg="Brand is required." required>
                                                <option value="0">[ Create Brand ]</option>
                                                <?php
                                                foreach($product_brand as $row)
                                                {
                                                    echo '<option value="'.$row->brand_id.'">'.$row->brand_name.'</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Unit * :</label>
                                            <select name="unit_id" id="product_unit" data-error-msg="Unit is required." required>
                                                <option value="0">[ Create Unit ]</option>
                                                <?php
                                                foreach($product_unit as $row)
                                                {
                                                    echo '<option value="'.$row->unit_id.'">'.$row->unit_name.'</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="form-group" style="margin-bottom:0px;">
                                            <label class="">Vendor Name * :</label>
                                            <select name="vendor_id"  id="product_vendor" data-error-msg="Vendor is required." required>
                                                <option value="0">[ Create Vendor ]</option>
                                                <?php
                                                foreach($product_vendor as $row)
                                                {
                                                    echo '<option value="'.$row->vendor_id.'">'.$row->vendor_name.'</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <img src="assets/img/default_product.png" name="img_path" style="border: 1px solid #ddd; max-height: 200px; max-width: 190px;">
                                        <button type="button" id="btn_browse" class="btn btn-primary btn-block">
                                            Browse Photo
                                        </button>
                                        <button type="button" id="btn_remove_photo" class="btn btn-danger btn-block" style="margin-top: 0;">
                                            Remove Photo
                                        </button>
                                         <input type="file" name="file_upload[]" class="hidden">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer">
                                <div class="col-sm-3 col-sm-offset-9" style="margin-bottom: 10px;">
                                    <button id="btn_save" class="btn-primary btn" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;""><span class=""></span>  Save Changes</button>
                                    <button id="btn_cancel" class="btn-default btn" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;"">Cancel</button>
                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="modal_confirmation" class="modal fade" tabindex="-1" role="dialog"><!--modal-->
                <div class="modal-dialog modal-sm">
                    <div class="modal-content"><!---content-->
                        <div class="modal-header">
                            <button type="button" class="close"   data-dismiss="modal" aria-hidden="true">X</button>
                            <h4 class="modal-title"><span id="modal_mode"> </span>Confirm Deletion</h4>
                        </div>

                        <div class="modal-body">
                            <p id="modal-body-message">Are you sure ?</p>
                        </div>

                        <div class="modal-footer">
                            <button id="btn_yes" type="button" class="btn btn-danger" data-dismiss="modal">Yes</button>
                            <button id="btn_close" type="button" class="btn btn-default" data-dismiss="modal">No</button>
                        </div>
                    </div><!---content-->
                </div>
            </div><!---modal-->

            <div id="modal_inventory_type" class="modal fade" tabindex="-1" role="dialog"><!--modal-->
                <div class="modal-dialog modal-md">
                    <div class="modal-content"><!---content-->
                        <div class="modal-header">
                            <button type="button" class="close"   data-dismiss="modal" aria-hidden="true">X</button>
                            <h4 class="modal-title"><span id="modal_mode"> </span>New Inventory Type</h4>

                        </div>

                        <div class="modal-body">
                            <form id="frm_inventory_group">
                                <div class="form-group">
                                    <label>* Inventory Type Name :</label>
                                    <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-envelope-o"></i>
                                                </span>
                                        <input type="text" name="inventory_name" class="form-control" placeholder="Category Name">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Description :</label>
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea name="inventory_desc" placeholder="Category Description" class="form-control"></textarea>
                                    </div>
                                </div>
                            </form>


                        </div>

                        <div class="modal-footer">
                            <button id="btn_create_inventory_type" type="button" class="btn btn-primary"  style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;"><span class=""></span> Create</button>
                            <button id="btn_close_unit_group" type="button" class="btn btn-default" data-dismiss="modal" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;">Cancel</button>
                        </div>
                    </div><!---content-->
                </div>
            </div><!---modal-->
            
            <div id="modal_category_group" class="modal fade" tabindex="-1" role="dialog"><!--modal-->
                <div class="modal-dialog modal-md">
                    <div class="modal-content"><!---content-->
                        <div class="modal-header">
                            <button type="button" class="close"   data-dismiss="modal" aria-hidden="true">X</button>
                            <h4 class="modal-title"><span id="modal_mode"> </span>New Category Group</h4>

                        </div>

                        <div class="modal-body">
                            <form id="frm_category_group">
                                <div class="form-group">
                                    <label>* Category Name :</label>
                                    <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-envelope-o"></i>
                                                </span>
                                        <input type="text" name="category_name" class="form-control" placeholder="Category Name" data-error-msg="Category name is required." required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Description :</label>
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea name="category_desc" placeholder="Category Description" class="form-control"></textarea>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="modal-footer">
                            <button id="btn_create_category_group" type="button" class="btn btn-primary"  style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;"><span class=""></span> Create</button>
                            <button id="btn_close_unit_group" type="button" class="btn btn-default" data-dismiss="modal" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;">Cancel</button>
                        </div>
                    </div><!--content-->
                </div>
            </div><!---modal-->

            <div id="modal_details" class="modal fade" role="dialog">
              <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Details</h4>
                  </div>
                  <div id="details_body" class="modal-body">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
                </div>

              </div>
            </div>
                        
            <div id="modal_brand_group" class="modal fade" tabindex="-1" role="dialog"><!--modal-->
                <div class="modal-dialog modal-md">
                    <div class="modal-content"><!---content-->
                        <div class="modal-header">
                            <button type="button" class="close"   data-dismiss="modal" aria-hidden="true">X</button>
                            <h4 class="modal-title"><span id="modal_mode"> </span>New Brand Group</h4>

                        </div>

                        <div class="modal-body">
                            <form id="frm_brand_group">
                                <div class="form-group">
                                    <label>* Brand Name :</label>
                                    <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-envelope-o"></i>
                                                </span>
                                        <input type="text" name="brand_name" class="form-control" placeholder="Brand Name" data-error-msg="Brand name is required." required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Description :</label>
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea name="brand_desc" placeholder="Category Description" class="form-control"></textarea>
                                    </div>
                                </div>
                            </form>


                        </div>

                        <div class="modal-footer">
                            <button id="btn_create_brand_group" type="button" class="btn btn-primary"  style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;"><span class=""></span> Create</button>
                            <button id="btn_close_brand_group" type="button" class="btn btn-default" data-dismiss="modal" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;">Cancel</button>
                        </div>
                    </div><!---content-->
                </div>
            </div><!---modal-->

            <div id="modal_unit_group" class="modal fade" tabindex="-1" role="dialog"><!--modal-->
                <div class="modal-dialog modal-md">
                    <div class="modal-content"><!---content-->
                        <div class="modal-header">
                            <button type="button" class="close"   data-dismiss="modal" aria-hidden="true">X</button>
                            <h4 class="modal-title"><span id="modal_mode"> </span>New Unit Group</h4>

                        </div>

                        <div class="modal-body">
                            <form id="frm_unit_group">
                                <div class="form-group">
                                    <label>* Unit Name :</label>
                                    <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-envelope-o"></i>
                                                </span>
                                        <input type="text" name="unit_name" class="form-control" placeholder="Unit Name" data-error-msg="Unit name is required." required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Description :</label>
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea name="unit_desc" placeholder="Unit Description" class="form-control"></textarea>
                                    </div>
                                </div>
                            </form>


                        </div>

                        <div class="modal-footer">
                            <button id="btn_create_unit_group" type="button" class="btn btn-primary"  style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;"><span class=""></span> Create</button>
                            <button id="btn_close_unit_group" type="button" class="btn btn-default" data-dismiss="modal" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;">Cancel</button>
                        </div>
                    </div><!---content-->
                </div>
            </div><!---modal-->

            <div id="modal_vendor_group" class="modal fade" tabindex="-1" role="dialog"><!--modal-->
                <div class="modal-dialog modal-md">
                    <div class="modal-content"><!---content-->
                        <div class="modal-header">
                            <button type="button" class="close"   data-dismiss="modal" aria-hidden="true">X</button>
                            <h4 class="modal-title"><span id="modal_mode"> </span>New Vendor Group</h4>

                        </div>

                        <div class="modal-body">
                            <form id="frm_vendor_group">
                                <div class="form-group">
                                    <label>* Vendor Name :</label>
                                    <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-envelope-o"></i>
                                                </span>
                                        <input type="text" name="vendor_name" class="form-control" placeholder="Unit Name" data-error-msg="Vendor name is required." required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Description :</label>
                                    <div class="input-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea name="vendor_desc" placeholder="Unit Description" class="form-control"></textarea>
                                    </div>
                                </div>
                            </form>


                        </div>

                        <div class="modal-footer">
                            <button id="btn_create_vendor_group" type="button" class="btn btn-primary"  style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;"><span class=""></span> Create</button>
                            <button id="btn_close_vendor_group" type="button" class="btn btn-default" data-dismiss="modal" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;">Cancel</button>
                        </div>
                    </div><!---content-->
                </div>
            </div><!---modal-->         

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


<?php echo $_switcher_settings; ?>
<?php echo $_def_js_files; ?>


<script type="text/javascript" src="assets/plugins/datatables/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/plugins/datatables/dataTables.bootstrap.js"></script>


<!-- Date range use moment.js same as full calendar plugin -->
<script src="assets/plugins/fullcalendar/moment.min.js"></script>
<!-- Data picker -->
<script src="assets/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Select2 -->
<script src="assets/plugins/select2/select2.full.min.js"></script>


<!-- Date range use moment.js same as full calendar plugin -->
<script src="assets/js/plugins/fullcalendar/moment.min.js"></script>
<!-- Data picker -->
<script src="assets/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- twitter typehead -->
<script src="assets/plugins/twittertypehead/handlebars.js"></script>
<script src="assets/plugins/twittertypehead/bloodhound.min.js"></script>
<script src="assets/plugins/twittertypehead/typeahead.bundle.min.js"></script>
<script src="assets/plugins/twittertypehead/typeahead.jquery.min.js"></script>

<!-- touchspin -->
<script type="text/javascript" src="assets/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js"></script>

<!-- numeric formatter -->
<script src="assets/plugins/formatter/autoNumeric.js" type="text/javascript"></script>
<script src="assets/plugins/formatter/accounting.js" type="text/javascript"></script>



<script>

$(document).ready(function(){
    var dt; 
    var _txnMode; 
    var _selectedID; 
    var _selectRowObj;
    var _addedIngredientsID = [];

    var initializeControls=function(){
        dt=$('#tbl_products').DataTable({
            "dom": '<"toolbar">frtip',
            "bLengthChange":false,
            "ajax" : "Pos/transaction/listinventory",
            "columns": [
                {
                    "targets": [0],
                    "class":          "details-control",
                    "orderable":      false,
                    "data":           null,
                    "defaultContent": ""
                },
                { targets:[1],data: "product_code" },
                { targets:[2],data: "product_desc" },
                { targets:[3],data: "sale_cost" },
                { targets:[4],data: "vendor_name" },
                { targets:[5],data: "stock_onhand" },
                {
                    targets:[6],
                    render: function (data, type, full, meta){
                        var btn_edit='<button class="btn btn-primary btn-sm" name="edit_info"  style="margin-left:-15px;" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i> </button>';
                        var btn_trash='<button class="btn btn-danger btn-sm" name="remove_info" style="margin-right:0px;" data-toggle="tooltip" data-placement="top" title="Move to trash"><i class="fa fa-trash-o"></i> </button>';

                        return '<center>'+btn_edit+' '+btn_trash+'</center>';
                    }
                }
            ],
            "rowCallback":function( row, data, index ){

                $(row).find('td').eq(5).attr({
                    "align": "right"
                });
            }
        });

        _inventory_type=$("#product_inventory").select2({
            placeholder: "Inventory type",
            allowClear: true
        });

        _inventory_type.select2('val', null);
        
        _product_category=$("#product_category").select2({
            placeholder: "Category",
            allowClear: true
        });

        _product_category.select2('val', null);

        _product_category.on("select2:select", function (e) {

            var i=$(this).select2('val');
            if(i==0){
                $(this).select2('val',null)
                $('#modal_category_group').modal('show');
                clearFields($('#modal_category_group').find('form'));
            }


        });
        
        _product_brand=$("#product_brand").select2({
            placeholder: "Brand",
            allowClear: true
        });

        _product_brand.select2('val', null);

        _product_brand.on("select2:select", function (e) {

            var i=$(this).select2('val');
            if(i==0){
                $(this).select2('val',null)
                $('#modal_brand_group').modal('show');
                clearFields($('#modal_brand_group').find('form'));
            }


        });

        _product_unit=$("#product_unit").select2({
            placeholder: "Unit",
            allowClear: true
        });

        _product_unit.select2('val', null);

        _product_unit.on("select2:select", function (e) {

            var i=$(this).select2('val');
            if(i==0){
                $(this).select2('val',null)
                $('#modal_unit_group').modal('show');
                clearFields($('#modal_unit_group').find('form'));
            }


        });
        
        _product_vendor=$("#product_vendor").select2({
            placeholder: "Vendor",
            allowClear: true
        });

        _product_vendor.select2('val', null);

        _product_vendor.on("select2:select", function (e) {

            var i=$(this).select2('val');
            if(i==0){
                $(this).select2('val',null)
                $('#modal_vendor_group').modal('show');
                clearFields($('#modal_vendor_group').find('form'));
            }
        });

        $('.numeric').autoNumeric('init');

        var createToolBarButton=function(){
            var _btnNew='<button class="btn btn-primary"  id="btn_new" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;" data-toggle="modal" data-target="" data-placement="left" title="Create New product" >'+
                '<i class="fa fa-file"></i> Add New to Menu</button>';
            $("div.toolbar").html(_btnNew);
        }();
    }();

    $('#btn_create_inventory_type').click(function(){

        var btn=$(this);

        if(validateRequiredFields($('#frm_inventory_group'))){
            var data=$('#frm_inventory_group').serializeArray();

            $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Inventory/transaction/create",
                "data":data,
                "beforeSend" : function(){
                    showSpinningProgress(btn);
                }
            }).done(function(response){
                showNotification(response);
                $('#modal_inventory_type').modal('hide');

                var _group=response.row_added[0];
                $('#product_inventory').append('<option value="'+_group.inventory_id+'" selected>'+_group.inventory_name+'</option>');
                $('#product_inventory').select2('val',_group.inventory_id);

            }).always(function(){
                showSpinningProgress(btn);
            });
        }


    });
    
    $('#btn_create_category_group').click(function(){

        var btn=$(this);

        if(validateRequiredFields($('#frm_category_group'))){
            var data=$('#frm_category_group').serializeArray();

            $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Categories/transaction/create",
                "data":data,
                "beforeSend" : function(){
                    showSpinningProgress(btn);
                }
            }).done(function(response){
                showNotification(response);
                $('#modal_category_group').modal('hide');

                var _group=response.row_added[0];
                $('#product_category').append('<option value="'+_group.category_id+'" selected>'+_group.category_name+'</option>');
                $('#product_category').select2('val',_group.category_id);

            }).always(function(){
                showSpinningProgress(btn);
            });
        }
    }); 
    
    $('#btn_create_brand_group').click(function(){

        var btn=$(this);

        if(validateRequiredFields($('#frm_brand_group'))){
            var data=$('#frm_brand_group').serializeArray();

            $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Brands/transaction/create",
                "data":data,
                "beforeSend" : function(){
                    showSpinningProgress(btn);
                }
            }).done(function(response){
                showNotification(response);
                $('#modal_brand_group').modal('hide');

                var _group=response.row_added[0];
                $('#product_brand').append('<option value="'+_group.brand_id+'" selected>'+_group.brand_name+'</option>');
                $('#product_brand').select2('val',_group.brand_id);

            }).always(function(){
                showSpinningProgress(btn);
            });
        }


    });

    $('#btn_create_unit_group').click(function(){

        var btn=$(this);

        if(validateRequiredFields($('#frm_unit_group'))){
            var data=$('#frm_unit_group').serializeArray();

            $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Units/transaction/create",
                "data":data,
                "beforeSend" : function(){
                    showSpinningProgress(btn);
                }
            }).done(function(response){
                showNotification(response);
                $('#modal_unit_group').modal('hide');

                var _group=response.row_added[0];
                $('#product_unit').append('<option value="'+_group.unit_id+'" selected>'+_group.unit_name+'</option>');
                $('#product_unit').select2('val',_group.unit_id);

            }).always(function(){
                showSpinningProgress(btn);
            });
        }


    });

    $('#btn_create_vendor_group').click(function(){

        var btn=$(this);

        if(validateRequiredFields($('#frm_vendor_group'))){
            var data=$('#frm_vendor_group').serializeArray();

            $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Vendors/transaction/create",
                "data":data,
                "beforeSend" : function(){
                    showSpinningProgress(btn);
                }
            }).done(function(response){
                showNotification(response);
                $('#modal_vendor_group').modal('hide');

                var _group=response.row_added[0];
                $('#product_vendor').append('<option value="'+_group.vendor_id+'" selected>'+_group.vendor_name+'</option>');
                $('#product_vendor').select2('val',_group.vendor_id);

            }).always(function(){
                showSpinningProgress(btn);
            });
        }


    });
    
    var bindEventHandlers=(function(){
        var detailRows = [];

        $('#tbl_products tbody').on( 'click', 'tr td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = dt.row( tr );
            var idx = $.inArray( tr.attr('id'), detailRows );

            // if ( row.child.isShown() ) {
            //     tr.removeClass( 'details' );
            //     row.child.hide();

            //     detailRows.splice( idx, 1 );
            // }
            // else {
                //tr.addClass( 'details' );
                _addedIngredientsID = [];
                var d=row.data();
                $('#modal_details').modal('show');
                $.ajax({
                    "dataType":"html",
                    "type":"POST",
                    "url":"Templates/layout/products-content?pid="+d.product_id,
                    "beforeSend" : function(){
                        $('#details_body').html( '<center><br /><img src="assets/img/loader/ajax-loader-lg.gif" /><br /><br /></center>' ).show();
                    }
                }).done(function(response){
                    $('#details_body').html(response);
                    reinitializeSelect2($('#cbo_ingredients_'+d.product_id));
                    // row.child( response ).show();
                    // // Add to the 'open' array
                    // if ( idx === -1 ) {
                    //     detailRows.push( tr.attr('id') );
                    // }
                });
            // }
        } );

        $(document).on("click",".btn-save-ingredients", function() {
            var _productID = $(this).data('product-id');
            
            console.log($('#frm_ingredients_' + _productID).serializeArray())
        });

        $(document).on('click','.tbl-ingredients tbody .btn_remove_ingredient', function(){
            $(this).closest('tr').remove();
        });

        $(document).on("select2:select",".cbo-ingredient", function(event) {
            if ($('#tbl_ingredients_'+$(this).data('id')+' tbody tr').length == 0)  
                $('#tbl_ingredients_'+$(this).data('id')+' tbody').html('');
            console.log($('.cbo-ingredient option:selected').val() + ' ' + _addedIngredientsID)
            var index = $.inArray($('.cbo-ingredient option:selected').val(), _addedIngredientsID);

            if (index >= 0) {
                event.preventDefault();
            } else {
                $('#tbl_ingredients_'+$(this).data('id')).append(
                    '<tr>' +
                        '<td class="hidden"><input type="hidden" name="ingredient_id" class="form-control" value="'+$('.cbo-ingredient option:selected').val()+'">'+$('.cbo-ingredient option:selected').val()+'</td>' +
                        '<td><input type="hidden" class="form-control" value="'+$('.cbo-ingredient option:selected').data('ingredient-name')+'">'+$('.cbo-ingredient option:selected').data('ingredient-name')+'</td>' +
                        '<td><center><input style="width:100%;" type="number" class="form-control text-center" name="ingredient_amount" value="0"></center></td>' +
                        '<td><input type="hidden" class="form-control" value="'+$('.cbo-ingredient option:selected').data('ingredient-unit')+'">'+$('.cbo-ingredient option:selected').data('ingredient-unit')+'</td>' +
                        '<td><center><button type="button" class="btn btn-danger btn-delete btn_remove_ingredient"><i class="fa fa-times"></i></button></center></td>' +
                    '</tr>'
                );
            }

            _addedIngredientsID.push(parseInt($('.cbo-ingredient option:selected').val()));

        
        });

        $('#btn_new').click(function(){
            clearFields($('#frm_product'))
            $('#modal_product').modal('show');
            $('#product_inventory').select2('val','');
            $('#product_category').select2('val','');
            $('#product_brand').select2('val','');
            $('#product_unit').select2('val','');
            $('#product_vendor').select2('val','');
            $('input[name="quantity"]').val('0.00');
            $('button').prop('disabled',false);
            _txnMode="new";
        });

        $('#btn_cancel').click(function(){
            $('#modal_product').modal('hide');
        });

        $('#tbl_products tbody').on('click','button[name="edit_info"]',function(){
            _txnMode="edit";
            $('#modal_product').modal('show');
            _selectRowObj=$(this).closest('tr');
            var data=dt.row(_selectRowObj).data();
            _selectedID=data.product_id;

            $('#minstock_order').val(data.minstock_order);
            $('#maxstock_order').val(data.maxstock_order);
            $('#product_inventory').select2('val',data.inventory_type);
            $('#product_category').select2('val',data.category_id);
            $('#product_brand').select2('val',data.brand_id);
            $('#product_unit').select2('val',data.unit_id);
            $('#product_vendor').select2('val',data.vendor_id);
            $('button').prop('disabled',false);

            $('img[name="img_path"]').attr('src', data.img_path);

            $('input,textarea').each(function(){
                var _elem=$(this);
                $.each(data,function(name,value){
                    if(_elem.attr('name')==name){
                        _elem.val(value);
                    }
                });
            });

        });

        $('#tbl_products tbody').on('click','button[name="remove_info"]',function(){
            _selectRowObj=$(this).closest('tr');
            var data=dt.row(_selectRowObj).data();
            _selectedID=data.product_id;

            $('#modal_confirmation').modal('show');
        });

        $('#btn_yes').click(function(){
            removeProduct().done(function(response){
                showNotification(response);
                dt.row(_selectRowObj).remove().draw();
            });
        });

        $('#btn_browse').on('click', function(e){
            e.preventDefault();
            $('input[name="file_upload[]"]').click();
        });

        $('#btn_remove_photo').click(function(event){
            event.preventDefault();
            $('img[name="img_path"]').attr('src','assets/img/product_default.png');
        });

        $('input[name="file_upload[]"]').change(function(event){
            var _files=event.target.files;

            var data=new FormData();
            $.each(_files,function(key,value){
                data.append(key,value);
            });

            $.ajax({
                url : 'Products/transaction/upload',
                type : "POST",
                data : data,
                cache : false,
                dataType : 'json',
                processData : false,
                contentType : false,
                success : function(response){
                    $('img[name="img_path"]').attr('src',response.path);
                }
            });
        });

        $('#btn_cancel').click(function(){
            showList(true);
        });

        $('#btn_save').click(function(){
            if(validateRequiredFields($('#frm_product'))){
                if(_txnMode=="new"){
                    createProduct().done(function(response){
                        showNotification(response);
                        dt.row.add(response.row_added[0]).draw();
                        clearFields($('#frm_product'));
                    }).always(function(){
                        $('#modal_product').modal('toggle');
                        showSpinningProgress($('#btn_save'));
                    });
                }else{
                    updateProduct().done(function(response){
                        showNotification(response);
                        dt.row(_selectRowObj).data(response.row_updated[0]).draw();
                        clearFields($('#frm_product'));
                        showList(true);
                    }).always(function(){
                        $('#modal_product').modal('toggle');
                        showSpinningProgress($('#btn_save'));
                    });
                }
            }
        });
    })();

    var reinitializeSelect2=function(combobox) {
        combobox.select2({
            placeholder: "Please select Ingredient",
            allowClear: true
        });
        combobox.select2('val',null);
    };

    var reinitializeDataTable = function(table) {
        table.DataTable({
            "bLengthChange":false,
            "bFilter": false, 
            "bInfo": false
        });
    };

    var validateRequiredFields=function(f){
        var stat=true;

        $('div.form-group').removeClass('has-error');
        $('input[required],textarea[required],select[required]',f).each(function(){

            if($(this).is('select')){
                if($(this).select2('val')==0||$(this).select2('val')==null){
                    showNotification({title:"Error!",stat:"error",msg:$(this).data('error-msg')});
                    $(this).closest('div.form-group').addClass('has-error');
                    $(this).focus();
                    stat=false;
                    return false;
                }
            }else{
                if($(this).val()==""){
                    showNotification({title:"Error!",stat:"error",msg:$(this).data('error-msg')});
                    $(this).closest('div.form-group').addClass('has-error');
                    $(this).focus();
                    stat=false;
                    return false;
                }
            }
        });

        return stat;
    };

    var createProduct=function(){
        var _data=$('#frm_product').serializeArray();
        _data.push({name : "img_path" ,value : $('img[name="img_path"]').attr('src')});

        return $.ajax({
            "dataType":"json",
            "type":"POST",
            "url":"Products/transaction/create",
            "data":_data,
            "beforeSend": showSpinningProgress($('#btn_save'))
        });
    };

    var updateProduct=function(){
        var _data=$('#frm_product').serializeArray();
        _data.push({name : "img_path" ,value : $('img[name="img_path"]').attr('src')});

        _data.push({name : "product_id" ,value : _selectedID});

        return $.ajax({
            "dataType":"json",
            "type":"POST",
            "url":"Products/transaction/update",
            "data":_data,
            "beforeSend": showSpinningProgress($('#btn_save'))
        });
    };

    var removeProduct=function(){
        return $.ajax({
            "dataType":"json",
            "type":"POST",
            "url":"Products/transaction/delete",
            "data":{product_id : _selectedID}
        });
    };

    var showList=function(b){
        if(b){
            $('#div_product_list').show();
            $('#div_product_fields').hide();
        }else{
            $('#div_product_list').hide();
            $('#div_product_fields').show();
        }
    };

    var showNotification=function(obj){
        PNotify.removeAll();
        new PNotify({
            title:  obj.title,
            text:  obj.msg,
            type:  obj.stat
        });
    };

    $('.date-picker').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true

    });
    
    var showSpinningProgress=function(e){
        $(e).find('span').toggleClass('glyphicon glyphicon-refresh spinning');
        $(e).prop('disabled',true);
    };

    var clearFields=function(f){
        $('input,textarea',f).val('');
        $(f).find('select').select2('val',null);
        $(f).find('input:first').focus();
    };

});

</script>

</body>

</html>