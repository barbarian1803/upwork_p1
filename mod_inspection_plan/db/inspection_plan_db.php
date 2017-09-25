<?php


function get_all_inspection_plan(){
    $sql = "SELECT * FROM z_inspection_plan_header";
    return db_query($sql, _("Can not get inspection plan header"));
}

function get_inspection_plan($id){
    $sql = "SELECT * FROM z_inspection_plan_header WHERE id=".db_escape($id);
    return db_query($sql, _("Can not get inspection plan header"));
}

function get_inspection_plan_item($id){
    $sql = "SELECT * FROM z_inspection_plan_content WHERE inspection_plan_id=".$id;
    return db_query($sql, _("Can not get inspection plan header"));
}

function insert_inspection_plan($cart){
    $sql = "INSERT INTO `z_inspection_plan_header` "
            . "(`description`, `task_list_type`, `created_by`, `created_date`, `modified_by`, `modified_date`) "
            . "VALUES (". db_escape($cart->desc).",". db_escape($cart->type).",". db_escape($cart->created_by)
            .", ". db_escape($cart->date_created).", ". db_escape($cart->modified_by).", ". db_escape($cart->date_modified).")";
    $plan_id = db_insert_id(db_query($sql));
    
    foreach ($cart->plan_contents as $line_no=>$content) {
        insert_inspection_plan_content($plan_id,$content);
    }
    
    return $plan_id;
    
}

function update_inspection_plan($cart){
    $sql = "UPDATE `z_inspection_plan_header` "
            . "SET description=". db_escape($cart->desc).",task_list_type=". db_escape($cart->type)
            .",modified_by=".db_escape($cart->modified_by).", modified_date=". date2sql(db_escape($cart->date_modified))
            ." WHERE id=".db_escape($cart->id);
    db_query($sql);
    delete_inspection_plan_content($cart->id);
    foreach ($cart->plan_contents as $line_no=>$content) {
        insert_inspection_plan_content($cart->id,$content);
    }
}

function delete_inspection_plan($id){
    $sql = "DELETE FROM `z_inspection_plan_header` WHERE id=".db_escape($id);
    db_query($sql);
}

function delete_inspection_plan_content($id){
    $sql = "DELETE FROM `z_inspection_plan_content` WHERE inspection_plan_id=".db_escape($id);
    db_query($sql);
}

function insert_inspection_plan_content($plan_id,$content){
    $sql = "INSERT INTO `z_inspection_plan_content` "
            . "(`inspection_plan_id`, `question`, `is_mandatory`, `answer_type`, `option_list`) "
            . "VALUES (". db_escape($plan_id).",". db_escape($content->question).",". db_escape($content->is_mandatory)
            .", ". db_escape($content->type).", ". db_escape($content->options==""?$content->options:implode(",", $content->options)).")";
    db_query($sql);
}