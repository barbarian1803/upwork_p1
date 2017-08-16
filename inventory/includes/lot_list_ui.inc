<?php
function js_get_data_in_parent($parent,$target){
    echo "
    <script type='text/javascript'>

    var oDom = opener.document;
    var elem = oDom.getElementsByName('".$parent."')[0];
    if (elem) {
        var val = elem.value;
        if(val==''){
            val = 0;
        }
        document.getElementById('".$target."').innerHTML = 'Number adjusted: '+val;
    }   
    </script>
";
}

function js_submit_data_in_parent($parent){
    echo "
    <script type='text/javascript'>

    var oDom = opener.document;
    var elem = oDom.getElementsByName('".$parent."')[0];
    elem.click();  
    </script>
";
}

function close_window(){
    echo "
    <script type='text/javascript'>
        window.close();
    </script>
";
}

function show_quantity($target){
    echo "
    <script type='text/javascript'>
        qty = document.getElementsByName('".$target."')[0].value;
        document.getElementById('parent_qty_entered_view').innerHTML=qty;   
    </script>
";
}

function process_lot_to_parent($data){
    echo "
    <script type='text/javascript'>
        var oDom = opener.document;
        var elem = oDom.getElementsByName('AddItem')[0];
        if (elem) {
            var val = elem.click();
        }
        var elem = oDom.getElementsByName('UpdateItem')[0];
        if (elem) {
            var val = elem.click();
        }
        window.close();
    </script>    
    ";
}
