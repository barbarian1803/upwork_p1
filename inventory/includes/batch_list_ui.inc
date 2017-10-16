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

function js_set_data_in_parent($parent,$value){
    $ret = "
        <script type='text/javascript'>
        function set_data_in_parent(parent,value){
            var oDom = opener.document;
            var elem = oDom.getElementsByName(parent)[0];
            if (elem) {
                elem.value=value;
            }
        }
        set_data_in_parent('".$parent."','".$value."');
        </script>    
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

function js_calculate_rejected(){
    return "
        
        var received = document.getElementsByName('qty_received')[0];
        var accepted = document.getElementsByName('qty_accepted')[0];
        var rejected = document.getElementsByName('qty_rejected')[0];
        received.addEventListener('change',function(){
            min = received.value - accepted.value;
            if(min>=0){
                rejected.value = min;
            }else{
                rejected.value = 0;
                received.value = 0;
                accepted.value = 0;
            }
        });
        accepted.addEventListener('change',function(){
            min = received.value - accepted.value;
            if(min>=0){
                rejected.value = min;
            }else{
                rejected.value = 0;
                received.value = 0;
                accepted.value = 0;
            }
        });
        
    ";
}