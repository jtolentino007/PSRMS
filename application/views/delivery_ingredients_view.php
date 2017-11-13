<!DOCTYPE html>
<html>
<head>
    <title><?php echo $title; ?></title>
    <?php echo $_def_css_files; ?>
    <link rel="stylesheet" href="assets/plugins/spinner/dist/ladda-themeless.min.css">

    <link type="text/css" href="assets/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet">
    <link type="text/css" href="assets/plugins/datatables/dataTables.themify.css" rel="stylesheet">

    <link href="assets/plugins/select2/select2.min.css" rel="stylesheet">
    <!-- Datepicker -->
    <link href="assets/plugins/datapicker/datepicker3.css" rel="stylesheet">

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

        .dropdown-menu > .active > a,.dropdown-menu > .active > a:hover{
            background-color: dodgerblue;
        }

        @keyframes spin {
            from { transform: scale(1) rotate(0deg); }
            to { transform: scale(1) rotate(360deg); }
        }

        @-webkit-keyframes spin2 {
            from { -webkit-transform: rotate(0deg); }
            to { -webkit-transform: rotate(360deg); }
        }

        .custom_frame{

            border: 1px solid lightgray;
            margin: 1% 1% 1% 1%;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        .numeric{
            text-align: right;
        }

        @media screen and (max-width: 1000px) {
            .custom_frame{
                padding-left:5%;

            }
        }

        textarea {
          resize: none;
        }



    </style>
</head>
<body class="animated-content">
    <?php echo $_top_navigation ?>
    <div id="wrapper">
        <div id="layout-static">
            <div class="static-content-wrapper white-bg">
                <div class="static-content"  >
                    <div class="page-content">
                        <div class="container-fluid">
                            <div class="panel panel-default" style="margin-top: 10px;">
                                <div class="panel-body" style="border-top: 5px solid #2196f3;">
                                    <h1>Ingredients Receiving</h1>
                                    <table id="tbl_delivery_invoice" class="table table-striped table-bordered table-responsive" cellspacing="0" width="100%">
                                        <thead style="background: #2196f3; color: white;">
                                        <tr>
                                            <th></th>
                                            <th>Invoice #</th>
                                            <th>Document #</th>
                                            <th>Supplier</th>
                                            <th>Date Received</th>
                                            <th>Posted by</th>
                                            <th><center>Action</center></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <!-- Modal -->
                            <div id="modal_confirmation" class="modal fade" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Confirmation</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are you sure you want to delete this invoice?</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" id="btn_yes" class="btn btn-primary" data-dismiss="modal">Yes</button>
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal -->
                            <div id="modal_report" class="modal fade" role="dialog">
                                <div class="modal-dialog" style="width: 50%;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Delivery Invoice Report</h4>
                                        </div>
                                        <div id="report_content" class="modal-body">
                                            
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="modal_delivery" class="modal fade" role="dialog">
                                <div class="modal-dialog" style="width: 80%">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Delivery Information</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form id="frm_delivery">
                                                <div class="row">
                                                    <div class="container-fluid">
                                                        <div class="col-xs-12 col-sm-4">
                                                            <label>
                                                                <strong>* Receipt No :</strong>
                                                            </label>
                                                            <input class="form-control" type="text" name="delivery_ingredients_doc_no" data-error-msg="Document no is required." required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="container-fluid">
                                                        <div class="col-xs-12 col-sm-4">
                                                            <label>
                                                                <strong>* Supplier :</strong>
                                                            </label><br>
                                                            <select id="cbo_supplier" class="form-control" name="supplier_id" style="width: 100%;" data-error-msg="Supplier is required" required>
                                                                <?php foreach($suppliers as $supplier) { ?>
                                                                    <option value="<?php echo $supplier->supplier_id; ?>"><?php echo $supplier->supplier_name; ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-4">
                                                            <label>
                                                                <strong>* Date Received :</strong>
                                                            </label>
                                                            <input type="text" class="date-picker form-control" name="date_received" value="<?php echo date('m/d/Y'); ?>" data-error-msg="Date is required" required>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-4">
                                                            <label>
                                                                <strong>Remarks :</strong>
                                                            </label>
                                                            <textarea class="form-control" name="remarks"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="row">
                                                <div class="container-fluid">
                                                    <label>
                                                        <strong>SELECT INGREDIENT(S) :</strong>
                                                    </label><br>
                                                    <select class="form-control" id="cbo_ingredients" style="width: 100%;">
                                                        <?php foreach($ingredients as $ingredient) { ?>
                                                            <option value="<?php echo $ingredient->ingredient_id; ?>" data-ingredient-name="<?php echo $ingredient->ingredient_name; ?>" data-ingredient-unit="<?php echo $ingredient->unit_name; ?>" data-ingredient-cost="<?php echo number_format($ingredient->ingredient_cost,2);?>"><?php echo $ingredient->ingredient_name.' ('.$ingredient->unit_name.')'; ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="container-fluid" style="max-height:500px; overflow-y: auto;">
                                                    <form id="frm_items">
                                                        <table id="tbl_items" class="table table-striped table-bordered table-responsive">
                                                            <thead style="background: #2196f3; color: white;">
                                                                <th width="7%"><center>Qty</center></th>
                                                                <th class="hidden">Ingredient ID</th>
                                                                <th width="20%">Ingredient name</th>
                                                                <th width="5%">Unit</th>
                                                                <th width="10%">Cost</th>
                                                                <th width="10%">Discount</th>
                                                                <th width="10%">Tax Rate (%)</th>
                                                                <th width="10%">Total Discount</th>
                                                                <th width="10%">Non-Tax Amount</th>
                                                                <th width="10%">Tax Amount</th>
                                                                <th width="10%">Total</th>
                                                                <th width="5%"><center>Action</center></th>
                                                            </thead>
                                                            <tbody></tbody>
                                                        </table>
                                                    </form>
                                                </div> 
                                            </div>
                                            <div class="row" style="margin-top: -20px;">
                                                <div class="container-fluid">
                                                    <table class="table table-bordered table-responsive">
                                                        <tr>
                                                            <td width="20%"><b>Total Discount :</b></td>
                                                            <td id="td_total_discount" class="text-right">0.00</td>
                                                            <td width="20%"><b>Total After Tax :</b></td>
                                                            <td id="td_total_after_tax" class="text-right">0.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td width="20%"><b>Total Tax Amount :</b></td>
                                                            <td id="td_total_tax" class="text-right">0.00</td>
                                                            <td width="20%"><b>Total Before Tax :</b></td>
                                                            <td id="td_total_before_tax" class="text-right">0.00</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" id="btn_save" class="btn btn-primary">Save</button>
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $_def_js_files; ?>
    <script src="assets/plugins/spinner/dist/spin.min.js"></script>
    <script src="assets/plugins/spinner/dist/ladda.min.js"></script>

    <script type="text/javascript" src="assets/plugins/datatables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="assets/plugins/datatables/dataTables.bootstrap.js"></script>

    <!-- Date range use moment.js same as full calendar plugin -->
    <script src="assets/plugins/fullcalendar/moment.min.js"></script>
    <!-- Data picker -->

    <!-- Select2 -->
    <script src="assets/plugins/select2/select2.full.min.js"></script>

    <script src="assets/plugins/datapicker/bootstrap-datepicker.js"></script>

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


<script type="text/javascript">
    (function(){
        var dt;
        var _txnMode;
        var _cboSuppliers;
        var _cboIngredients;
        var _addedIngredientsID = [];
        var _selectRowObj;
        var _selectedID;

        var initializeControls = function() {
            dt = $('#tbl_delivery_invoice').DataTable({
                "dom": '<"toolbar">frtip',
                "bLengthChange":false,
                "ajax" : "Delivery_ingredients/getList/invoices",
                "columns": [
                    {
                        "targets": [0],
                        "class":          "details-control",
                        "orderable":      false,
                        "data":           null,
                        "defaultContent": ""
                    },
                    { targets:[1],data: "delivery_ingredients_info_no" },
                    { targets:[2],data: "delivery_ingredients_doc_no" },
                    { targets:[3],data: "supplier_name" },
                    { targets:[4],data: "date_received" },
                    { targets:[5],data: "user_fullname" },
                    {
                        targets:[6],
                        render: function (data, type, full, meta){
                            var btn_edit='<button class="btn btn-primary btn-sm" name="edit_info"  style="margin-left:-15px;" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i> </button>';
                            var btn_trash='<button class="btn btn-danger btn-sm" name="remove_info" style="margin-right:0px;" data-toggle="tooltip" data-placement="top" title="Move to trash"><i class="fa fa-trash-o"></i> </button>';

                            return '<center>'+btn_edit+' '+btn_trash+'</center>';
                        }
                    }
                ]
            }); 

            var createToolBarButton=function(){
                var _btnNew='<button class="btn btn-primary" id="btn_new" style="text-transform: capitalize; position: absolute;" data-toggle="modal" data-target="" data-placement="left" title="Record Purchase Invoice" >'+
                    '<i class="fa fa-file"></i> Record Delivery Invoice</button>';

                $("div.toolbar").html(_btnNew);
            }();

            $('.date-picker').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            _cboSuppliers=$("#cbo_supplier").select2({
                placeholder: "Please select supplier.",
                allowClear: true
            });

            _cboSuppliers.select2({ dropdownParent: "#modal_delivery" });

            _cboSuppliers.select2('val',null);

            _cboIngredients=$('#cbo_ingredients').select2({
                placeholder: "Please select Ingredient.",
                allowClear: true
            });

            _cboIngredients.select2({ dropdownParent: "#modal_delivery" });
            _cboIngredients.select2('val',null);
        }();

        var bindEventHandlers = function() {
            $('#btn_new').on('click', function(){
                _txnMode = "new";
                _addedIngredientsID = [];
                clearFields($('#frm_delivery'));
                $('#tbl_items tbody').html('');
                _cboSuppliers.select2('val',null);
                $('#btn_save').prop('disabled',false);
                $('#modal_delivery').modal('show');
            });

            $('#tbl_delivery_invoice tbody').on('click', 'tr td.details-control', function(){
                _selectRowObj=$(this).closest('tr');
                var data=dt.row(_selectRowObj).data();
                _selectedID=data.delivery_ingredients_info_id;

                $.ajax({
                    "dataType":"html",
                    "type":"POST",
                    "url":"Delivery_ingredients/getReport/invoice?id="+_selectedID
                }).done(function(response){
                    $('#report_content').html('');
                    $('#report_content').html(response);
                    $('#modal_report').modal('show');
                });
            });

            $('#tbl_delivery_invoice tbody').on('click', 'button[name="edit_info"]', function(){
                _txnMode="edit";
                _selectRowObj=$(this).closest('tr');
                var data=dt.row(_selectRowObj).data();
                _selectedID=data.delivery_ingredients_info_id;

                _addedIngredientsID = [];

                $('#btn_save').prop('disabled',false);

                $('input,textarea').each(function(){
                    var _elem=$(this);
                    $.each(data,function(name,value){
                        if(_elem.attr('name')==name&&_elem.attr('type')!='password'){
                            _elem.val(value);
                        }
                    });

                    _cboSuppliers.select2('val',data.supplier_id);
                });

                $.ajax({
                    "dataType":"json",
                    "type":"POST",
                    "url":"Delivery_ingredients/getList/items",
                    "data": {delivery_ingredients_info_id : _selectedID}
                }).done(function(response){
                    $('#tbl_items tbody').html('');
                    $.each(response.data, function(index, data){
                        $('#tbl_items tbody').append(
                            '<tr>' + 
                                '<td><input id="qty_'+data.ingredient_id+'" type="text" class="form-control text-center numeric" value="'+data.delivery_ingredients_items_qty+'" name="delivery_ingredients_items_qty[]"></td>' +
                                '<td class="hidden"><input type="text" class="form-control" value="'+data.ingredient_id+'" name="ingredient_id[]"></td>' +
                                '<td>'+data.ingredient_name+'</td>' +
                                '<td>'+data.unit_name+'</td>' +
                                '<td class="text-right"><input type="hidden" class="form-control text-right numeric" value="'+data.ingredient_cost+'" name="delivery_ingredients_items_price[]" readonly>'+data.ingredient_cost+'</td>' +
                                '<td><input type="text" class="form-control text-right numeric" value="'+data.delivery_ingredients_items_discount+'" name="delivery_ingredients_items_discount[]"></td>' +
                                '<td><input type="text" class="form-control text-right numeric" value="'+data.delivery_ingredients_items_tax_rate+'" name="delivery_ingredients_items_tax_rate[]"></td>' +
                                '<td><input type="text" class="form-control text-right numeric" value="'+data.delivery_ingredients_items_line_total_discount+'" name="delivery_ingredients_items_line_total_discount[]" readonly /></td>' +
                                '<td><input type="text" class="form-control text-right numeric" value="'+data.delivery_ingredients_items_non_tax_amount+'" name="delivery_ingredients_items_non_tax_amount[]" readonly /></td>' +
                                '<td><input type="text" class="form-control text-right numeric" value="'+data.delivery_ingredients_items_tax_amount+'" name="delivery_ingredients_items_tax_amount[]" readonly /></td>' +
                                '<td><input type="text" class="form-control text-right numeric" value="'+data.delivery_ingredients_items_line_total+'" name="delivery_ingredients_items_line_total[]" readonly /></td>' +
                                '<td><center><button id="btn_remove" class="btn btn-danger"><i class="fa fa-times"></i></button></center></td>' +
                            '</tr>'
                        );
                        _addedIngredientsID.push(data.ingredient_id);
                    });
                    reComputeRowTotal();
                    recomputeTotal();
                });

                $('#modal_delivery').modal('show');
            });

            $('#tbl_delivery_invoice tbody').on('click', 'button[name="remove_info"]', function(){
                _selectRowObj=$(this).closest('tr');
                var data=dt.row(_selectRowObj).data();
                _selectedID=data.delivery_ingredients_info_id;

                $('#modal_confirmation').modal('show');
            }); 

            $('#modal_confirmation').on('click','#btn_yes', function(){
                deleteDelivery().done(function(response){
                    showNotification(response);
                    dt.row(_selectRowObj).remove().draw();
                });
            });

            $('#tbl_items tbody').on('click','#btn_remove', function(){
                $(this).closest('tr').remove();
                recomputeTotal();
                reInitializeNumeric();
            });

            _cboIngredients.on('select2:select', function(){
                InsertRow();
                reComputeRowTotal();
                recomputeTotal();
                reInitializeNumeric();
                $(this).select2('val',null);
            });

            $('#modal_delivery').on('blur','.numeric', function(){
                if ($(this).val() == "") 
                    $(this).val('0.00'); 

                reComputeRowTotal();
                recomputeTotal();
                reInitializeNumeric();
            });

            $('#modal_delivery').on('click', '#btn_save', function(){
                if (validateRequiredFields($('#frm_delivery'))) {
                    if (_txnMode == "new") {
                        saveDelivery().done(function(response){
                            showNotification(response);
                            dt.row.add(response.row_added[0]).draw();
                            clearFields($('#frm_delivery'));
                            _cboSuppliers.select2('val',null);
                            $('#modal_delivery').modal('hide');
                        });
                    } else {
                        updateDelivery().done(function(response){
                            showNotification(response);
                            dt.row(_selectRowObj).data(response.row_updated[0]).draw();
                            clearFields($('#frm_delivery'));
                            _cboSuppliers.select2('val',null);
                            $('#modal_delivery').modal('hide');
                        });
                    }
                }
            });
        }();

        var saveDelivery = function() {
            var _data = $('#frm_items,#frm_delivery').serializeArray();

            _data.push({ name: "total_discount", value: parseFloat(accounting.unformat($('#td_total_discount').html())) });
            _data.push({ name: "total_tax_amount", value: parseFloat(accounting.unformat($('#td_total_tax').html())) });
            _data.push({ name: "total_before_tax", value: parseFloat(accounting.unformat($('#td_total_before_tax').html())) });
            _data.push({ name: "total_after_tax", value: parseFloat(accounting.unformat($('#td_total_after_tax').html())) });

            return $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Delivery_ingredients/save",
                "data":_data,
                "beforeSend": showSpinningProgress($('#btn_save'))
            });
        };

        var updateDelivery = function() {
            var _data = $('#frm_items,#frm_delivery').serializeArray();

            _data.push({ name: "delivery_ingredients_info_id", value: _selectedID });

            _data.push({ name: "total_discount", value: parseFloat(accounting.unformat($('#td_total_discount').html())) });
            _data.push({ name: "total_tax_amount", value: parseFloat(accounting.unformat($('#td_total_tax').html())) });
            _data.push({ name: "total_before_tax", value: parseFloat(accounting.unformat($('#td_total_before_tax').html())) });
            _data.push({ name: "total_after_tax", value: parseFloat(accounting.unformat($('#td_total_after_tax').html())) });

            return $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Delivery_ingredients/update",
                "data":_data,
                "beforeSend": showSpinningProgress($('#btn_save'))
            });
        };

        var deleteDelivery = function() {
            return $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Delivery_ingredients/remove",
                "data":{delivery_ingredients_info_id : _selectedID}
            });
        };

        var clearFields=function(f){
            $('input[required]:not(".date-picker"),textarea',f).val('');
            $('form').find('input:first').focus();
        };

        var showSpinningProgress=function(e){
            $(e).find('span').toggleClass('glyphicon glyphicon-refresh spinning');
            $(e).prop('disabled',true);
        };

        var InsertRow = function() {
            var index = $.inArray(_cboIngredients.val(), _addedIngredientsID);

            if (index >= 0) {
                $('#tbl_items tbody tr').find('td').find('#qty_' + _cboIngredients.val()).val(parseFloat($('#tbl_items tbody tr').find('td').find('#qty_' + _cboIngredients.val()).val()) + 1);
            } else {
                $('#tbl_items tbody').append(
                    '<tr>' + 
                        '<td><input id="qty_'+_cboIngredients.val()+'" type="text" class="form-control text-center numeric" value="1" name="delivery_ingredients_items_qty[]"></td>' +
                        '<td class="hidden"><input type="text" class="form-control" value="'+_cboIngredients.val()+'" name="ingredient_id[]"></td>' +
                        '<td>'+$("#cbo_ingredients option:selected").data("ingredient-name")+'</td>' +
                        '<td>'+$("#cbo_ingredients option:selected").data("ingredient-unit")+'</td>' +
                        '<td class="text-right"><input type="hidden" class="form-control text-right numeric" value="'+$("#cbo_ingredients option:selected").data("ingredient-cost")+'" name="delivery_ingredients_items_price[]" readonly>'+$("#cbo_ingredients option:selected").data("ingredient-cost")+'</td>' +
                        '<td><input type="text" class="form-control text-right numeric" value="0" name="delivery_ingredients_items_discount[]"></td>' +
                        '<td><input type="text" class="form-control text-right numeric" value="0" name="delivery_ingredients_items_tax_rate[]"></td>' +
                        '<td><input type="text" class="form-control text-right numeric" value="0" name="delivery_ingredients_items_line_total_discount[]" readonly /></td>' +
                        '<td><input type="text" class="form-control text-right numeric" value="0" name="delivery_ingredients_items_non_tax_amount[]" readonly /></td>' +
                        '<td><input type="text" class="form-control text-right numeric" value="0" name="delivery_ingredients_items_tax_amount[]" readonly /></td>' +
                        '<td><input type="text" class="form-control text-right numeric" value="0" name="delivery_ingredients_items_line_total[]" readonly /></td>' +
                        '<td><center><button id="btn_remove" class="btn btn-danger"><i class="fa fa-times"></i></button></center></td>' +
                    '</tr>'
                );
                _addedIngredientsID.push(_cboIngredients.val());
            }
        };

        var validateRequiredFields=function(f){
            var stat=true;
            $('div.form-group').removeClass('has-error');

            if ($('#tbl_items tbody tr').length < 1) {
                showNotification({title:"Error!",stat:"error",msg:"No items to save."});
                stat = false;
                return false;
            }

            $('input[required],textarea[required],select[required]',f).each(function(){
                if($(this).is('select')){
                    if($(this).val()==0 || $(this).val()==null || $(this).val()==undefined || $(this).val()==""){
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

        var showNotification=function(obj){
            PNotify.removeAll(); //remove all notifications
            new PNotify({
                title:  obj.title,
                text:  obj.msg,
                type:  obj.stat
            });
        };

        var reInitializeNumeric=function(){
            $('.numeric').autoNumeric('init');
        };

        var reComputeRowTotal = function() {
            $.each($('#tbl_items tbody tr'), function(){
                var rowQty = parseFloat(accounting.unformat($(this).find('td').find('input[name="delivery_ingredients_items_qty[]"]').val()));
                var rowSrp = parseFloat(accounting.unformat($(this).find('td').find('input[name="delivery_ingredients_items_price[]"]').val()));
                var rowDiscount = parseFloat(accounting.unformat($(this).find('td').find('input[name="delivery_ingredients_items_discount[]"]').val()));
                var rowTax = parseFloat(accounting.unformat($(this).find('td').find('input[name="delivery_ingredients_items_tax_rate[]"]').val()));

                if(rowDiscount>=rowSrp){
                    showNotification({title:"Invalid",stat:"error",msg:"Discount must not greater than unit price."});
                    $(this).find('td').find('input[name="delivery_ingredients_items_discount[]"]').val('0.00');
                } else {
                    var discounted_price = rowSrp - rowDiscount;
                    var line_total_discount = rowDiscount * rowQty;
                    var line_total = discounted_price * rowQty;
                    var net_vat = line_total * (rowTax / 100);
                    var vat_input = line_total + net_vat;

                    var rowTotal = (rowQty * rowSrp);

                    $(this).find('td').find('input[name="delivery_ingredients_items_line_total_discount[]"]').val(accounting.formatNumber(line_total_discount,2));

                    if (rowTax == 0.00) {
                        $(this).find('td').find('input[name="delivery_ingredients_items_tax_amount[]"]').val(accounting.formatNumber(0,2));
                    } else {
                        $(this).find('td').find('input[name="delivery_ingredients_items_tax_amount[]"]').val(accounting.formatNumber(net_vat,2));
                    }

                    $(this).find('td').find('input[name="delivery_ingredients_items_line_total[]"]').val(accounting.formatNumber(vat_input,2));
                    $(this).find('td').find('input[name="delivery_ingredients_items_non_tax_amount[]"]').val(accounting.formatNumber(line_total,2));
                }

            });
        };

        var recomputeTotal = function() {
            var totalAmount = 0;
            var totalDiscount = 0;
            var totalBeforeTax = 0;
            var totalAfterTax = 0;
            var totalTax = 0;

            $.each($('#tbl_items tbody tr'), function(){
                totalAmount += parseFloat(accounting.unformat($(this).find('td').find('input[name="delivery_ingredients_items_line_total[]"]').val()));
                totalDiscount += parseFloat(accounting.unformat($(this).find('td').find('input[name="delivery_ingredients_items_discount[]"]').val()));
                totalTax += parseFloat(accounting.unformat($(this).find('td').find('input[name="delivery_ingredients_items_tax_amount[]"]').val()));
                totalBeforeTax = totalAmount - totalTax;
            });

            $('#td_total_after_tax').html(accounting.formatNumber(totalAmount,2));
            $('#td_total_before_tax').html(accounting.formatNumber(totalBeforeTax,2));
            $('#td_total_tax').html(accounting.formatNumber(totalTax,2));
            $('#td_total_discount').html(accounting.formatNumber(totalDiscount,2));
            $('#td_amount_due').html(accounting.formatNumber(totalAmount,2));
        };
    })();
</script>
</body>
</html>