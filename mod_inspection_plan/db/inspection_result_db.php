<?php

function insert_inspect_item_header($obj){
    $sql = "INSERT INTO `z_inspect_item_header` "
            . "("
                . "`inspection_plan_id`, "
                . "`stock_id`, "
                . "`batch_no`, "
                . "`inspection_type`, "
                . "`document_no`, "
                . "`document_item`,"
                . "`grn_batch_id`,"
                . "`grn_item_id`,"
                . "`supplier`,"
                . "`qty_received`,"
                . "`qty_accepted`,"
                . "`created_by`,"
                . "`date_created`,"
                . "`modified_by`,"
                . "`date_modified`,"
                . "`reject_reason`,"
                . "`signature`"
            . ") "
            . "VALUES "
            . "("
                . db_escape($obj->id) .","
                . db_escape($obj->stock_id) .","
                . db_escape($obj->batch_no) .","
                . db_escape($obj->inspection_type) .","
                . db_escape($obj->document_no) .","
                . db_escape($obj->document_item) .","
                . db_escape($obj->grn_batch_id) .","
                . db_escape($obj->grn_item_id) .","
                . db_escape($obj->supplier) .","
                . db_escape($obj->qty_received) .","
                . db_escape($obj->qty_accepted) .","
                . db_escape($obj->created_by) .","
                . db_escape($obj->date_created) .","
                . db_escape($obj->modified_by) .","
                . db_escape($obj->date_modified) .","
                . db_escape($obj->reject_reason) .","
                . db_escape($obj->signature)
            . ")";
    $plan_id = db_insert_id(db_query($sql));
    return $plan_id;
}

function insert_inspect_item_content($header_id,$obj){
    $sql = "INSERT INTO `z_inspect_item_content` "
        . "("
            . "`inspection_plan_id`,"
            . "`question`,"
            . "`is_mandatory`,"
            . "`answer_type`,"
            . "`option_list`,"
            . "`answer`"
        . ") "
        . "VALUES "
        . "("
        . db_escape($header_id) .","
        . db_escape($obj->question) .","
        . db_escape($obj->is_mandatory) .","
        . db_escape($obj->type) .","
        . db_escape(implode(",", $obj->options)) .","
        . db_escape($obj->answer)
        . ")";
    $item_id = db_insert_id(db_query($sql));
    return $item_id;
}
