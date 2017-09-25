<?php
$page_security = 'SA_ITEMSSTATVIEW';
$path_to_root = "../..";
include_once($path_to_root . "/includes/session.inc");
include_once($path_to_root . "/includes/ui.inc");

$stock_id = $_GET["stock_id"];
$stock = get_item($stock_id);

$loc_code = $_GET["loc_code"];
$location = get_item_location($loc_code);


$js = "";
page(_($help_context = "Stock status per batch"), true, false, "", $js);
include_once($path_to_root . "/includes/date_functions.inc");
include_once($path_to_root . "/includes/ui.inc");
include_once($path_to_root . "/includes/data_checks.inc");

include_once($path_to_root . "/inventory/includes/inventory_db.inc");
include_once($path_to_root . "/includes/db/manufacturing_db.inc");

echo "<center><h3>Inventory status report per batch number</h3></center>";
echo "<center>";
echo "<span>Item: ".$stock["description"]."</span>&nbsp&nbsp&nbsp";
echo "<span>Location: ".$location["location_name"]."</span>";
echo "</center>";

start_table(TABLESTYLE2);
$th = array(_("Batch number"), _("Quantity On Hand"));
table_header($th);
$result = get_qoh_on_date_per_batch($stock_id,$loc_code);
$total = 0;
while($myrow = db_fetch_assoc($result)){
    start_row();
    label_cell($myrow["z_batch_number"]);
    qty_cell($myrow["total_per_batch"]);
    end_row();
    $total += $myrow["total_per_batch"];
}
start_row();
label_cell("<b>"._("Total")."</b>");
qty_cell($total);
end_row();
end_table();

end_page();
