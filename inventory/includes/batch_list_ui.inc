<?php
function js_get_data_in_parent($parent,$target){
    $ret = "
        function get_data_in_parent(parent,target){
            var oDom = opener.document;
            var elem = oDom.getElementsByName(parent)[0];
            if (elem) {
                var val = elem.value;
                if(val==''){
                    val = 0;
                }
                document.getElementsByName(target)[0].value = val;
            }
        }
        get_data_in_parent('".$parent."','".$target."');
        ";
    
    return $ret;  
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
    return "
        qty = document.getElementsByName('".$target."')[0].value;
        document.getElementById('amount').innerHTML= 'Entered value: '+qty;
    ";
}

function show_location($output,$target,$text){
    return "
        val = document.getElementsByName('".$target."')[0].value;
        document.getElementById('".$output."').innerHTML= '".$text.": '+val;
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
