<?php


function get_all_inspection_plan(){
    $sql = "SELECT * FROM Z_inspection_plan_header";
    return db_query($sql, _("Can not get inspection plan header"));
}



function get_inspection_plan($id){
    
}

function get_inspection_plan_item($id){
    
}

function insert_inspection_plan($cart){
    $sql = "INSERT INTO `Z_inspection_plan_header` "
            . "(`description`, `task_list_type`, `created_by`, `created_date`, `modified_by`, `modified_date`) "
            . "VALUES (". db_escape($cart->desc).",". db_escape($cart->type).",". db_escape($cart->created_by)
            .", ". db_escape($cart->date_created).", ". db_escape($cart->modified_by).", ". db_escape($cart->date_modified).")";
    $plan_id = db_query($sql);
    
    foreach ($cart->plan_contents as $line_no=>$content) {
        insert_inspection_plan_content($plan_id,$content);
    }
    
    return $plan_id;
    
}

function insert_inspection_plan_content($plan_id,$content){
    $sql = "INSERT INTO `Z_inspection_plan_content` "
            . "(`inspection_plan_id`, `question`, `is_mandatory`, `answer_type`, `option_list`) "
            . "VALUES (". db_escape($plan_id).",". db_escape($content->question).",". db_escape($content->is_mandatory)
            .", ". db_escape($content->type).", ". db_escape($content->options==""?$content->options:implode(",", $content->options)).")";
    db_query($sql);
}