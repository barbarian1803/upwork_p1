<?php
/**** Batch number database function file ***/
/***** CREATED BY BHARATA KALBUAJI ****/
function get_batch($selected_id){
  $sql =  "SELECT * FROM ".TB_PREF."mod_batch_number_master WHERE id=".$selected_id;
  return(db_fetch(db_query($sql,"could not query batch number list")));
}

function add_batch_number($string_format){
  $sql =  "INSERT INTO ".TB_PREF."mod_batch_number_master (string_format,serial_no) VALUES (".db_escape($string_format).",1)";
  return(db_query($sql,"could not insert batch number"));
}

function update_batch_number($id,$string_format){
$sql = "UPDATE ".TB_PREF."mod_batch_number_master SET string_format=".db_escape($string_format)." WHERE id=".$id;
  return db_query($sql,"could not update batch number");
}

function get_all_batch(){
  $sql =  "SELECT * FROM ".TB_PREF."mod_batch_number_master";
  return db_query($sql,"could not query batch number list");
}

function delete_batch_number($selected_id){
  $sql =  "DELETE FROM ".TB_PREF."mod_batch_number_master WHERE id=".$selected_id;
  db_query($sql,"could not delete bacth number");
  return(true);
}

function is_batch_number_used($selected_id){
  $sql =  "SELECT * FROM ".TB_PREF."mod_batch_number_assign WHERE batch_id=".$selected_id;
  return(db_num_rows(db_query($sql,"could not query batch number list"))>0);
}
