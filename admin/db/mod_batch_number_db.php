<?php

/* * ** Batch number database function file ** */
/* * *** CREATED BY BHARATA KALBUAJI *** */

function get_batch($selected_id) {
    $sql = "SELECT * FROM z_batch_number_master WHERE id=" . $selected_id;
    return(db_fetch(db_query($sql, "could not query batch number list")));
}

function add_batch_number($string_format) {
    $sql = "INSERT INTO z_batch_number_master (string_format,serial_no) VALUES (" . db_escape($string_format) . ",1)";
    return(db_query($sql, "could not insert batch number"));
}

function update_batch_number($id, $string_format) {
    $sql = "UPDATE z_batch_number_master SET string_format=" . db_escape($string_format) . " WHERE id=" . $id;
    return db_query($sql, "could not update batch number");
}

function get_all_batch() {
    $sql = "SELECT * FROM z_batch_number_master";
    return db_query($sql, "could not query batch number list");
}

function delete_batch_number($selected_id) {
    $sql = "DELETE FROM z_batch_number_master WHERE id=" . $selected_id;
    db_query($sql, "could not delete bacth number");
    return(true);
}

function is_batch_number_used($selected_id) {
    $sql = "SELECT * FROM z_batch_number_assign WHERE batch_id=" . $selected_id;
    return(db_num_rows(db_query($sql, "could not query batch number list")) > 0);
}

function get_batch_number_assign($type) {
    $sql = "SELECT * FROM z_batch_number_assign WHERE type=" . db_escape($type);
    return(db_fetch_assoc(db_query($sql, "could not query batch number list")));
}

function batch_number_assign($type, $value) {
    $sql = "UPDATE z_batch_number_assign SET batch_id=" . db_escape($value) . " WHERE type=" . db_escape($type);
    db_query($sql, "could not query batch number list");
}

function add_batch_number_in_stock_moves($cart, $id) {
    $sql = "UPDATE " . TB_PREF . "stock_moves SET z_batch_number=" . db_escape($cart->batch_number) . " WHERE trans_id=" . db_escape($id);
    db_query($sql, "could not query batch number list");
}

function set_batch_number_in_stock_moves($batch_number, $id) {
    $sql = "UPDATE " . TB_PREF . "stock_moves SET z_batch_number=" . db_escape($batch_number) . " WHERE trans_id=" . db_escape($id);
    db_query($sql, "could not query batch number list");
}

function is_stock_batch_controlled($stock_id){
    $sql = "SELECT z_is_batch_controlled FROM ". TB_PREF . "stock_master WHERE stock_id=".db_escape($stock_id);
    $result = db_fetch_row(db_query($sql, "could not query batch number list"));
    return ($result[0]==1);
}