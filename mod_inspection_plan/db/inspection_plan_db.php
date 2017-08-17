<?php


function get_all_inspection_plan(){
    $sql = "SELECT * FROM Z_inspection_plan_header";
    return db_query($sql, _("Can not get inspection plan header"));
}



function get_inspection_plan($id){
    
}

function get_inspection_plan_item($id){
    
}