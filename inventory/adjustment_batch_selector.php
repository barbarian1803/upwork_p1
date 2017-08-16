<?php

$page_security = 'SA_INVENTORYADJUSTMENT';
$path_to_root = "..";

$page_security = 'SA_INVENTORYADJUSTMENT';
$path_to_root = "..";
include_once($path_to_root . "/includes/ui/items_cart.inc");

include_once($path_to_root . "/includes/session.inc");

include_once($path_to_root . "/includes/date_functions.inc");
include_once($path_to_root . "/includes/data_checks.inc");

include_once($path_to_root . "/fixed_assets/includes/fixed_assets_db.inc");
include_once($path_to_root . "/inventory/includes/item_adjustments_ui.inc");
include_once($path_to_root . "/inventory/includes/inventory_db.inc");
include_once($path_to_root . "/inventory/includes/lot_list_ui.inc");

$stock_id = $_GET["stock_id"];
$stock = get_item($stock_id);


$js = "";

if ($SysPrefs->use_popup_windows)
    $js .= get_js_open_window(800, 500);
if (user_use_date_picker())
    $js .= get_js_date_picker();
if (isset($_GET['NewAdjustment'])) {
    if (isset($_GET['FixedAsset'])) {
        $page_security = 'SA_ASSETDISPOSAL';
        $_SESSION['page_title'] = _($help_context = "Fixed Assets Disposal");
    } else {
        $_SESSION['page_title'] = _($help_context = "Item Adjustments Note");
    }
}

if(isset($_POST["save"])){
    js_submit_data_in_parent("AddItem");
    js_submit_data_in_parent("UpdateItem");
    close_window();
}

page($_SESSION['page_title'], true, false, "", $js);
echo "<center><h3>Item adjustment per batch</h3></center>";
echo "<center>";
echo "<span>Item: ".$stock["description"]."</span>&nbsp&nbsp&nbsp";
echo "<span id='amount'></span>";
echo "</center>";

start_form();
start_table(TABLESTYLE2);
$th = array(_("Batch number"), _("Quantity On Hand"),_("Adjusted quantity"));
table_header($th);
$result = get_qoh_on_date_per_batch($stock_id);
$total = 0;
$count = 0;
while($myrow = db_fetch_assoc($result)){
    if($myrow["total_per_batch"]<1){
        continue;
    }
    start_row();
    label_cell($myrow["Z_batch_number"]);
    qty_cell($myrow["total_per_batch"]);
    amount_cells("", "qty_input[".$count++."]");
    hidden("batch_number[".$count++."]",$myrow["Z_batch_number"]);
    end_row();
    $total += $myrow["total_per_batch"];
}
start_row();
label_cell("<b>"._("Total")."</b>");
qty_cell($total);
qty_cell("");
end_row();
end_table();
submit_center_first("save", "Save");
end_form();
end_page();
js_get_data_in_parent("qty","amount");
