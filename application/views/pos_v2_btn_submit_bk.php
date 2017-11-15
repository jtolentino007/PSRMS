<script type="text/javascript">
if (_isEdit == 1) {
                        $.ajax({
                            "dataType":"json",
                            "type":"POST",
                            "url":"Pos_v2/updateInvoice",
                            "data":_data,
                            "beforeSend": showSpinningProgress($('#btn_enter_order'))
                        }).done(function(response){
                            showNotification(response);
                            toggleControls(true);
                            $('#btn_tables').prop('disabled',true);
                            $('#btn_unpaid').prop('disabled',false);
                            $('#tbl_sales tbody').html('');
                            resetSummary();
                            btnTableClickCounter = 0;
                            $('#order_title').html('PLEASE SELECT CUSTOMER...');
                            _isEdit = 0;
                            _isAdditional = 0;
                            $('#btn_customers').prop('disabled',false);
                            addedProductCodes = [];
                            serversList = [];
                            serversListArray = [];
                            window.onbeforeunload = null;
                            _voidData = [];
                            //window.location.replace('Templates/layout/pospr-kitchen-bar/'+response.pos_invoice_id+'/print?vendorid=1&lastid='+response.response_rows[0].is_last);
                            //pos_invoice_id/print_layout/vendor_id
                        });
                    } else if (_isAdditional == 1) {
                        $.ajax({
                            "dataType":"json",
                            "type":"POST",
                            "url":"Pos_v2/addProductToInvoice",
                            "data":_data,
                            "beforeSend": showSpinningProgress($('#btn_enter_order'))
                        }).done(function(response){
                            showNotification(response);
                            toggleControls(true);
                            $('#tbl_sales tbody').html('');
                            resetSummary();
                            btnTableClickCounter = 0;
                            $('#order_title').html('PLEASE SELECT CUSTOMER...');
                            _isEdit = 0;
                            _isAdditional = 0;
                            $('#btn_customers').prop('disabled',false);
                            $('#btn_tables').prop('disabled',false);
                            addedProductCodes = [];
                            serversList = [];
                            serversListArray = [];
                            window.onbeforeunload = null;
                            window.location.replace('Templates/layout/pospr-kitchen-bar-add/'+response.pos_invoice_id+'/print?vendorid=2');
                            _voidData = [];
                            //pos_invoice_id/print_layout/vendor_id
                        });
                    } else {
                        $.ajax({
                            "dataType":"json",
                            "type":"POST",
                            "url":"Pos_v2/createInvoice",
                            "data":_data,
                            "beforeSend": showSpinningProgress($('#btn_enter_order'))
                        }).done(function(response){
                            showNotification(response);
                            toggleControls(true);
                            $('#tbl_sales tbody').html('');
                            resetSummary();
                            btnTableClickCounter = 0;
                            $('#order_title').html('PLEASE SELECT CUSTOMER...');
                            _isEdit = 0;
                            _isAdditional = 0;
                            $('#btn_customers').prop('disabled',false);
                            $('#btn_tables').prop('disabled',false);
                            addedProductCodes = [];
                            window.onbeforeunload = null;
                            window.location.replace('Templates/layout/pospr-kitchen-bar/'+response.pos_invoice_id+'/print?vendorid=2');
                            _voidData = [];
                            //pos_invoice_id/print_layout/vendor_id
                        });
                    }

</script>