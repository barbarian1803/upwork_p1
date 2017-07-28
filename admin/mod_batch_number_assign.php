<?php
/***** CREATED BY BHARATA KALBUAJI ****/
/***** assign which batch number will be used ****/
/**** batch number for GRN from purchase order/direct grn ***/
/**** batch number for GRN from item adjustment ***/
/**** batch number for GRN from work order finish product ***/

$page_security = 'SA_SETUPCOMPANY';
$path_to_root = "..";

include($path_to_root . "/includes/session.inc");

include_once($path_to_root . "/includes/ui.inc");
include_once($path_to_root . "/includes/ui/mod_ui_lists.inc");
include_once($path_to_root . "/admin/db/mod_batch_number_db.php");


$batch_number = get_batch_number_assign("from_po");

if(isset($_POST["from_po"])){
  batch_number_assign("from_po",$_POST["from_po"]);
}
if(isset($_POST["from_inventory_adjustment"])){
  batch_number_assign("from_inventory_adjustment",$_POST["from_inventory_adjustment"]);
}
if(isset($_POST["from_production"])){
  batch_number_assign("from_production",$_POST["from_production"]);
}

simple_page_mode(true);

page(_($help_context = "Batch number assign"));

start_form();

start_table(TABLESTYLE);
$th = array(_("No"), _("Inventory type"),_("Batch number type"));
table_header($th);

start_row();
label_cell("1");
batch_number_master_list_cells("Inventory from purchase order","from_po",get_batch_number_assign("from_po")["batch_id"],true);
end_row();

start_row();
label_cell("2");
batch_number_master_list_cells("Inventory from adjustment","from_inventory_adjustment",get_batch_number_assign("from_inventory_adjustment")["batch_id"],true);
end_row();

start_row();
label_cell("3");
batch_number_master_list_cells("Inventory from production","from_production",get_batch_number_assign("from_production")["batch_id"],true);
end_row();

end_form();

end_page();
