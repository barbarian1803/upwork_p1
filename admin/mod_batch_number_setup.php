<?php
/***** CREATED BY BHARATA KALBUAJI ****/
/***** CRUD page for batch number ****/

$page_security = 'SA_SETUPCOMPANY';
$path_to_root = "..";

include($path_to_root . "/includes/session.inc");



include_once($path_to_root . "/includes/ui.inc");
include_once($path_to_root . "/admin/db/mod_batch_number_db.php");

simple_page_mode(true);

function can_process(){
  return true;
}

function can_delete($selected_id){
  if(is_batch_number_used($selected_id)){
    display_error(_("Error, can not delete!"));
    return false;
  }
  return true;
}

if ($Mode=='ADD_ITEM' && can_process())
{

	add_batch_number($_POST['string_format']);
	display_notification(_('New batch number format has been added'));
	$Mode = 'RESET';
}

//-----------------------------------------------------------------------------------

if ($Mode=='UPDATE_ITEM' && can_process())
{

	update_batch_number($selected_id, $_POST['string_format']);
	display_notification(_('Selected batch number format has been updated'));
	$Mode = 'RESET';
}

if ($Mode == 'Delete' && can_delete($selected_id)){
		delete_batch_number($selected_id);
    $Mode="RESET";
}

if ($Mode == 'RESET'){
	$selected_id = -1;
  unset($_POST);
}


page(_($help_context = "Batch number setup"));

start_form();
$all_batch = get_all_batch();

start_table(TABLESTYLE);
$th = array(_("No"), _("Format"),_("Current serial no"),"","");
table_header($th);

$k=0;
$no=1;

while($row = db_fetch($all_batch)){
  alt_table_row_color($k);

  label_cell($no++);
  label_cell($row["string_format"]);
  label_cell($row["serial_no"]);
  if($row["id"]>1){
    edit_button_cell("Edit".$row["id"], _("Edit"));
    delete_button_cell("Delete".$row["id"], _("Delete"));
  }else{
    echo "<td></td>";
    echo "<td></td>";
  }
  end_row();
}
end_table(1);


start_table(TABLESTYLE2);

if ($selected_id != -1)
{
 	if ($Mode == 'Edit') {
		//editing an existing status code
		$row = get_batch($selected_id);

		$_POST['string_format']  = $row["string_format"];
	}
	hidden('selected_id', $selected_id);
}
text_row_ex(_("Batch number format: "), 'string_format', 50);
end_table(1);

submit_add_or_update_center($selected_id == -1, '', 'both');


end_form();
end_page();
