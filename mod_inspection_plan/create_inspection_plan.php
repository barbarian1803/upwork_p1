<?php
/* * ********************************************************************
  Copyright (C) FrontAccounting, LLC.
  Released under the terms of the GNU General Public License, GPL,
  as published by the Free Software Foundation, either version 3
  of the License, or (at your option) any later version.
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the License here <http://www.gnu.org/licenses/gpl-3.0.html>.
 * ********************************************************************* */
$page_security = 'SA_SETUPCOMPANY';
$path_to_root = "..";

include_once($path_to_root . "/mod_inspection_plan/includes/inspection_plan_class.inc");
include_once($path_to_root . "/includes/session.inc");

include_once($path_to_root . "/includes/date_functions.inc");
include_once($path_to_root . "/includes/data_checks.inc");
include_once($path_to_root . "/includes/ui.inc");

include_once($path_to_root . "/mod_inspection_plan/db/inspection_plan_db.php");
include_once($path_to_root . "/mod_inspection_plan/includes/inspection_plan_ui.php");


$js = "";
if ($SysPrefs->use_popup_windows)
    $js .= get_js_open_window(800, 500);
if (user_use_date_picker())
    $js .= get_js_date_picker();

page(_("Create inspection plan"), false, false, "", $js);

if (isset($_GET['AddedID'])) {
    $trans_no = $_GET['AddedID'];
    display_notification_centered(_("Inspection plan has been processed"));

//    if (is_fixed_asset($itm['mb_flag']))
//        hyperlink_params($_SERVER['PHP_SELF'], _("Enter &Another Fixed Assets Transfer"), "NewTransfer=1&FixedAsset=1");
//    else
//        hyperlink_params($_SERVER['PHP_SELF'], _("Enter &Another Inventory Transfer"), "NewTransfer=1");

    display_footer_exit();
}


//-----------------------------

function handle_new_inspection_plan() {
    unset($_SESSION["inspection_plan"]);
    $_SESSION["inspection_plan"] = new Inspection_plan($_SESSION["wa_current_user"]->user);
}

function handle_edit_inspection_plan($id) {
    
}

//-----------------------------
function handle_delete_item($id){
    $_SESSION["inspection_plan"]->delete_content($id);
}

function handle_new_item(){
    $_SESSION["inspection_plan"]->add_content($_POST["question"], check_value("is_mandatory"),$_POST["question_type"],$_POST["options"]);
    ConsoleDebug($_SESSION["inspection_plan"]);
}

function handle_update_item($id){
    $_SESSION["inspection_plan"]->update_content($id,$_POST["question"], check_value("is_mandatory"),$_POST["task_list_type"],$_POST["options"]);
}

$id = find_submit('Delete');
if ($id != -1){
    handle_delete_item($id);
    $Ajax->activate('content_table');
}

if (isset($_POST['AddItem'])){
    handle_new_item();
    $Ajax->activate('content_table');
}

if (isset($_POST['UpdateItem'])){
    handle_update_item($_POST["LineNo"]);
    $Ajax->activate('content_table');
}

if (isset($_POST['CancelItemChanges'])) {
    line_start_focus();
}

if (isset($_GET["NewPlan"])){
    handle_new_inspection_plan();
}

if (isset($_GET["EditPlan"])){
    handle_edit_inspection_plan($_GET["EditPlan"]);
}

function line_start_focus() {
    global $Ajax;

    $Ajax->activate('content_table');
    set_focus('question');
}



//-----------------------------

if(isset($_POST["Process"])){
    ConsoleDebug($_POST);
    $_SESSION["inspection_plan"]->desc = $_POST["desc"];
    $_SESSION["inspection_plan"]->type = $_POST["task_list_type"];
    $_SESSION["inspection_plan"]->date_created = date2sql($_POST["date_created"]);
    $_SESSION["inspection_plan"]->date_modified = date2sql($_POST["date_created"]);
    $plan_id=insert_inspection_plan($_SESSION["inspection_plan"]);
    ConsoleDebug($_SESSION["inspection_plan"]);
    unset($_SESSION["inspection_plan"]);
    meta_forward($_SERVER['PHP_SELF'], "AddedID=".$plan_id);
}


//-----------------------------

start_form();
inspection_plan_header();

start_table(TABLESTYLE, "width='80%'", 10);
echo "<tr><td>";
inspection_plan_content($_SESSION["inspection_plan"]);
echo "</td></tr>";
end_table(1);
submit_center_first('Process', _("Process"), '', 'default');
end_form();
end_page();

