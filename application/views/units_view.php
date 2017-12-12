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
    <link href="assets/plugins/select2/select2.min.css" rel="stylesheet">

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

        @keyframes spin {
            from { transform: scale(1) rotate(0deg); }
            to { transform: scale(1) rotate(360deg); }
        }

        @-webkit-keyframes spin2 {
            from { -webkit-transform: rotate(0deg); }
            to { -webkit-transform: rotate(360deg); }
        }

        textarea {
            resize: none;
        }

    </style>

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
                        <div data-widget-group="group1">
                            <div class="row">
                                <div class="col-md-12">

                                    <div id="div_unit_list">
                                        <div class="panel panel-default">
                                            <div class="panel-body table-responsive" style="border-top: 5px solid #2196f3;">
                                            <h1>Unit of measurement</h1>
                                                <table id="tbl_units" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>Unit Name</th>
                                                        <th>Unit Description</th>
                                                        <th>Unit Type</th>
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

                                    <!-- <div id="div_unit_fields" style="display: none;">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h2>Unit Information</h2>
                                                <div class="panel-ctrls" data-actions-container="" data-action-collapse='{"target": ".panel-body"}'></div>
                                            </div>

                                            <div class="panel-body">
                                                <form id="frm_unit" role="form" class="form-horizontal row-border">
                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-2 control-label">* Unit Name :</label>
                                                        <div class="col-md-4">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-users"></i>
                                                                </span>
                                                                <input type="text" name="unit_name" class="form-control" placeholder="Unit Name" data-error-msg="Unit name is required!" required>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-md-2 col-md-offset-2 control-label">* Unit Description :</label>
                                                        <div class="col-md-4">
                                                            <textarea name="unit_desc" class="form-control" data-error-msg="Unit Description is required!" placeholder="Description" required></textarea>
                                                        </div>
                                                    </div><br/>
                                                </form>
                                            </div>

                                            <div class="panel-footer">
                                                <div class="row">
                                                    <div class="col-sm-6 col-sm-offset-4">
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

            <!-- Modal -->
            <div id="modal_child_unit" class="modal fade" role="dialog">
              <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Conversion Details</h4>
                  </div>
                  <div class="modal-body">
                    
                  </div>
                  <div class="modal-footer">
                    <button id="btn_save_conversion" type="button" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>

            <div id="modal_units" class="modal fade" tabindex="-1" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                                <button type="button" class="close"   data-dismiss="modal" aria-hidden="true">X</button>
                                <h4 id="category_title" class="modal-title"><span id="modal_mode">Unit Information</span></h4>
                            </div>
                        <div class="modal-body">
                            <form id="frm_unit" role="form" class="form-horizontal row-border">
                                <div class="form-group">
                                    <label class="col-md-3 col-md-offset-1 control-label"><strong>* Unit Name :</strong></label>
                                    <div class="col-md-7">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-tag"></i>
                                            </span>
                                            <input type="text" name="unit_name" class="form-control" placeholder="Unit Name" data-error-msg="Unit name is required!" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 col-md-offset-1 control-label"><strong>* Unit Description :</strong></label>
                                    <div class="col-md-7">
                                        <textarea name="unit_desc" class="form-control" data-error-msg="Unit Description is required!" placeholder="Description" required></textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button id="btn_save" class="btn btn-primary">Save</button>
                            <button id="btn_cancel" class="btn btn-default">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div id="modal_new_child" class="modal fade" role="dialog">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title"><i class="fa fa-plus"></i>&nbsp;Add new child unit</h4>
                  </div>
                  <div class="modal-body">
                    <form id="frm_child">
                        <label><strong>* Child unit Name :</strong></label>
                        <input type="text" id="txt_unit_name" name="unit_name" class="form-control" data-error-msg="Unit name is required" required>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button id="btn_save_child" type="button" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
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

<script src="assets/plugins/spinner/dist/spin.min.js"></script>
<script src="assets/plugins/spinner/dist/ladda.min.js"></script>

<!-- Select2 -->
<script src="assets/plugins/select2/select2.full.min.js"></script>
<script type="text/javascript" src="assets/plugins/datatables/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/plugins/datatables/dataTables.bootstrap.js"></script>

<script>

$(document).ready(function(){
    var dt; var _txnMode; var _selectedID; var _selectRowObj; var unitIDs = [];

    var initializeControls=function(){
        dt=$('#tbl_units').DataTable({
            "dom": '<"toolbar">frtip',
            "bLengthChange":false,
            "ajax" : "Units/transaction/list-primary",
            "columns": [
                {
                    "targets": [0],
                    "class":          "details-control",
                    "orderable":      false,
                    "data":           null,
                    "defaultContent": ""
                },
                { targets:[1],data: "unit_name" },
                { targets:[2],data: "unit_desc" },
                { 
                    targets:[3],data: "unit_type",
                    render: function(data, type, full, meta) {
                        if (data === "0") 
                            return "No Type";
                        else if (data === "1")
                            return "Primary";
                        else
                            return "Sub-unit";
                    }
                },
                {
                    targets:[4],
                    render: function (data, type, full, meta){
                        var btn_edit='<button class="btn btn-primary btn-sm" name="edit_info"  style="margin-left:-15px;" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i> </button>';
                        var btn_trash='<button class="btn btn-danger btn-sm" name="remove_info" style="margin-right:0px;" data-toggle="tooltip" data-placement="top" title="Move to trash"><i class="fa fa-trash-o"></i> </button>';

                        return '<center>'+btn_edit+' '+btn_trash+'</center>';
                    }
                }
            ]
        });

        var createToolBarButton=function(){
            var _btnNew='<button class="btn btn-primary"  id="btn_new" style="text-transform: capitalize;font-family: Tahoma, Georgia, Serif;" data-toggle="modal" data-target="" data-placement="left" title="New unit" >'+
                '<i class="fa fa-users"></i> New Unit</button>';
            $("div.toolbar").html(_btnNew);
        }();
    }();

    var bindEventHandlers=(function(){
        var detailRows = [];

        $('#tbl_units tbody').on( 'click', 'tr td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = dt.row( tr );
            var idx = $.inArray( tr.attr('id'), detailRows );
            _selectedID = row.data().unit_id;

            if ( row.child.isShown() ) {
                tr.removeClass( 'details' );
                row.child.hide();

                detailRows.splice( idx, 1 );
            }
            else {

                $.ajax({
                    "type":"html",
                    "url":"Units/transaction/child?uid="+row.data().unit_id
                }).done(function(response) {
                    unitIDs = [];
                    $('#modal_child_unit .modal-body').html('');
                    $('#modal_child_unit .modal-body').html(response);
                    reinitializeSelect2($('.cbo_child_unit'));
                    $('#modal_child_unit').modal('show');
                    
                });
            }
        } );

        $('#modal_child_unit').on('click', '#btn_create_child', function(){
            $('#txt_unit_name').val('');
            $('#modal_new_child').modal('show');
        });

        $('#modal_new_child').on('click', '#btn_save_child', function(){
            if ($('#txt_unit_name').val() !== "")  {
                createUnitSecondary().done(function(response){
                    showNotification(response);
                    $('.cbo_child_unit').append('<option value="'+response.row_added[0].unit_id+'">'+response.row_added[0].unit_name+'</option>');
                    $('#modal_new_child').modal('hide');
                });
            } else {
                showNotification({title:"Error!",stat:"error",msg:$('#txt_unit_name').data('error-msg')});
                stat=false;
                return false;
            }
        });

        $('#modal_child_unit').on('click','#btn_remove_child', function(){
            $(this).closest('tr').remove();
            unitIDs.splice($.inArray($(this).closest('tr').find('input[name="unit_id[]"]').val(), unitIDs),1);
        });

        $('#modal_child_unit').on('select2:select', '.cbo_child_unit' , function(event){
            var index = $.inArray($('#modal_child_unit .cbo_child_unit option:selected').val(), unitIDs);

            if (index >= 0) {
                event.preventDefault();
                $(this).select2('val',null);
            } else {

                $('#tbl_unit_child tbody').append('<tr>' + 
                    '<td class="hidden"><input type="hidden" name="sub_unit_id[]" value="' + $('#modal_child_unit .cbo_child_unit option:selected').val() + '"></td>' +
                    '<td>'+ $('#modal_child_unit .cbo_child_unit option:selected').text() +'</td>' +
                    '<td><input class="form-control text-center" type="number" name="equivalent_qty[]" value="0.00"></td>' +
                    '<td><center><button id="btn_remove_child" class="btn btn-danger"><i class="fa fa-times"></i></button></center></td>' +
                '<tr>');

                unitIDs.push($('#modal_child_unit .cbo_child_unit option:selected').val());
                $(this).select2('val',null);
            }
        });

        $('#modal_child_unit').on('click', '#btn_save_conversion', function(){
            var _dataChild = $('#frm_child_items').serializeArray();
            _dataChild.push({ name: "unit_id", value: _selectedID });

            $.ajax({
                "dataType":"json",
                "type":"POST",
                "url":"Units/transaction/create-conversion",
                "data":_dataChild
            }).done(function(response){
                showNotification(response);
                $('#modal_child_unit').modal('hide');
            });
        });

        $('#btn_new').click(function(){
            _txnMode="new";
            $('#modal_units').modal('show');
            clearFields('#frm_unit');
            showList(true);
        });

        $('#tbl_units tbody').on('click','button[name="edit_info"]',function(){
            _txnMode="edit";
            $('#modal_units').modal('show');
            _selectRowObj=$(this).closest('tr');
            var data=dt.row(_selectRowObj).data();
            _selectedID=data.unit_id;

            $('input,textarea,select').each(function(){
                var _elem=$(this);
                $.each(data,function(name,value){
                    if(_elem.attr('name')==name){
                        _elem.val(value);
                    }
                });
            });
            showList(true);
        });

        $('#tbl_units tbody').on('click','button[name="remove_info"]',function(){
            _selectRowObj=$(this).closest('tr');
            var data=dt.row(_selectRowObj).data();
            _selectedID=data.unit_id;

            $('#modal_confirmation').modal('show');
        });

        $('#btn_yes').click(function(){
            removeUnit().done(function(response){
                showNotification(response);
                dt.row(_selectRowObj).remove().draw();
            });
        });

        $('input[name="file_upload[]"]').change(function(event){
            var _files=event.target.files;

            $('#div_img_unit').hide();
            $('#div_img_loader').show();

            var data=new FormData();
            $.each(_files,function(key,value){
                data.append(key,value);
            });

            console.log(_files);

            $.ajax({
                url : 'Units/transaction/upload',
                type : "POST",
                data : data,
                cache : false,
                dataType : 'json',
                processData : false,
                contentType : false,
                success : function(response){
                    $('#div_img_loader').hide();
                    $('#div_img_unit').show();
                }
            });
        });

        $('#btn_cancel').click(function(){
            $('#modal_units').modal('toggle');
        });

        $('#btn_save').click(function(){
            if(validateRequiredFields()){
                if(_txnMode=="new"){
                    createUnit().done(function(response){
                        showNotification(response);
                        dt.row.add(response.row_added[0]).draw();
                    }).always(function(){
                        $('#modal_units').modal('toggle');
                        showSpinningProgress($('#btn_save'));
                    });
                }else{
                    updateUnit().done(function(response){
                        showNotification(response);
                        dt.row(_selectRowObj).data(response.row_updated[0]).draw();
                    }).always(function(){
                        $('#modal_units').modal('toggle');
                        showSpinningProgress($('#btn_save'));
                    });
                }
            }
        });
    })();

    var validateRequiredFields=function(){
        var stat=true;

        $('div.form-group').removeClass('has-error');
        $('input[required],textarea','#frm_unit').each(function(){
            if($(this).val()==""){
                showNotification({title:"Error!",stat:"error",msg:$(this).data('error-msg')});
                $(this).closest('div.form-group').addClass('has-error');
                stat=false;
                return false;
            }
        });
        return stat;
    };

    var reinitializeSelect2 = function(combobox) {
        combobox.select2({
            "placeholder":"Select Child Unit",
            "allowClear":true
        });

        combobox.select2('val',null);
    };

    var createUnit=function(){
        var _data=$('#frm_unit').serializeArray();
        _data.push({name : "unit_type",value: 1});

        return $.ajax({
            "dataType":"json",
            "type":"POST",
            "url":"Units/transaction/create",
            "data":_data,
            "beforeSend": showSpinningProgress($('#btn_save'))
        });
    };

    var createUnitSecondary=function(){
        var _data=$('#frm_child').serializeArray();
        _data.push({name : "unit_type",value: 2});

        return $.ajax({
            "dataType":"json",
            "type":"POST",
            "url":"Units/transaction/create",
            "data":_data,
            "beforeSend": showSpinningProgress($('#btn_save_child'))
        });
    };

    var updateUnit=function(){
        var _data=$('#frm_unit').serializeArray();
        _data.push({name : "unit_id" ,value : _selectedID});
        _data.push({name : "unit_type",value: 1});

        return $.ajax({
            "dataType":"json",
            "type":"POST",
            "url":"Units/transaction/update",
            "data":_data,
            "beforeSend": showSpinningProgress($('#btn_save'))
        });
    };

    var removeUnit=function(){
        return $.ajax({
            "dataType":"json",
            "type":"POST",
            "url":"Units/transaction/delete",
            "data":{unit_id : _selectedID}
        });
    };

    var showList=function(b){
        if(b){
            $('#div_unit_list').show();
            $('#div_unit_fields').hide();
        }else{
            $('#div_unit_list').hide();
            $('#div_unit_fields').show();
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

    var showSpinningProgress=function(e){
        $(e).find('span').toggleClass('glyphicon glyphicon-refresh spinning');
    };

    var clearFields=function(){
        $('input[required],textarea','#frm_unit').val('');
        $('form').find('input:first').focus();
    };
});

</script>

</body>

</html>