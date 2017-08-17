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
include_once($path_to_root . "/inventory/includes/batch_list_ui.inc");

if(isset($_GET["stock_id"]))
    $stock_id = $_GET["stock_id"];
else
    $stock_id = $_POST["stock_id"];

if(isset($_GET["from_loc"]))
    $from_loc = $_GET["from_loc"];
else
    $from_loc = $_POST["from_loc"];

if(isset($_GET["to_loc"]))
    $to_loc = $_GET["to_loc"];
else
    $to_loc = $_POST["to_loc"];


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

$js .= js_get_data_in_parent("qty","parent_value");
$js .= js_get_data_in_parent("FromStockLocation","from_loc");
$js .= js_get_data_in_parent("ToStockLocation","to_loc");
$js .= show_quantity("parent_value");
$js .= show_location("FromLoc","from_loc","From location");
$js .= show_location("ToLoc","to_loc","To location");

function process_batch_selector(){
    $stock_id = $_POST["stock_id"];
    $entered_qty = $_POST["qty_input"];
    $batch_number = $_POST["batch_number"];
    
    $_SESSION["batch"][$stock_id]["entered_qty"] = $entered_qty;
    $_SESSION["batch"][$stock_id]["batch_number"] = $batch_number;
}

function can_process(){
    $entered_qty = $_POST["qty_input"];
    $qoh_qty = $_POST["qoh"];
    $batch_number = $_POST["batch_number"];
    $parent_value = $_POST["parent_value"];
    
    if(array_sum($entered_qty)!=$parent_value){
        display_error(_("The quantity values entered don't match with the parent values"));
        return false;
    }
    
    for($i=0;$i<count($entered_qty);$i++){
        if($entered_qty[$i]>$qoh_qty[$i]){
            display_error(_("The quantity value entered exceeded the stock quantity on hand"));
            return false;
        }
    }
    
    return true;
}

if(isset($_POST["save"]) && can_process()){
    process_batch_selector();    
    js_submit_data_in_parent("AddItem");
    js_submit_data_in_parent("UpdateItem");
    close_window();
}

page($_SESSION['page_title'], true, false, "", $js);

echo "<center><h3>Item adjustment per batch</h3></center>";
echo "<center>";
echo "<span>Item: ".$stock["description"]."</span>&nbsp&nbsp&nbsp";
echo "<span id='amount'></span>";
echo "<br/>";
echo "<span id='FromLoc'></span>&nbsp;&nbsp;<span id='ToLoc'></span>";
echo "</center>";

start_form();
start_table(TABLESTYLE2);
$th = array(_("Batch number"), _("QoH from location"),_("Adjusted quantity"));
table_header($th);
$result_from_loc = get_qoh_on_date_per_batch($stock_id,$from_loc);
$total = 0;
$count = 0;
while($myrow = db_fetch_assoc($result_from_loc)){
    if($myrow["total_per_batch"]<1){
        continue;
    }
    start_row();
    label_cell($myrow["Z_batch_number"]);
    qty_cell($myrow["total_per_batch"]);
    amount_cells("", "qty_input[".$count."]",isset($_POST["qty_input"])?$_POST["qty_input"][$count]:"");
    hidden("batch_number[".$count."]",$myrow["Z_batch_number"]);
    hidden("qoh[".$count."]",$myrow["total_per_batch"]);
    end_row();
    $count++;
    $total += $myrow["total_per_batch"];
}
start_row();
label_cell("<b>"._("Total")."</b>");
qty_cell($total);
qty_cell("");
end_row();
end_table();
hidden("parent_value");
hidden("from_loc");
hidden("to_loc");
hidden("stock_id",$stock_id);
submit_center_first("save", "Save");
end_form();
end_page();