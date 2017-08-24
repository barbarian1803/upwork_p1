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

UI_after_process();

//-----------------------------
$is_edit = "";

if (isset($_GET["NewPlan"])){
    New_inspection_plan();
    $is_edit = false;
}

if (isset($_GET["EditPlan"])){
    Edit_inspection_plan($_GET["EditPlan"]);
    $is_edit = true;
}

if($is_edit==""){
    $is_edit = $_POST["is_edit"];
}

function New_inspection_plan() {
    unset($_SESSION["inspection_plan"]);
    $_SESSION["inspection_plan"] = new Inspection_plan($_SESSION["wa_current_user"]->user);
}

function Edit_inspection_plan($id) {
    $plan = db_fetch_assoc(get_inspection_plan($id));
    unset($_SESSION["inspection_plan"]);
    $_SESSION["inspection_plan"] = new Inspection_plan($_SESSION["wa_current_user"]->user);
    $_SESSION["inspection_plan"]->id = $id;
    $_SESSION["inspection_plan"]->desc = $plan["description"];
    $_SESSION["inspection_plan"]->type = $plan["task_list_type"];
    $_SESSION["inspection_plan"]->date_created = $plan["created_date"];
    
    $result = get_inspection_plan_item($id);
    while($content = db_fetch_assoc($result)){
        $_SESSION["inspection_plan"]->add_content($content["question"], $content["is_mandatory"], $content["answer_type"], $content["option_list"]);
    }
    
}

UI_control();

//-----------------------------

if(isset($_POST["Process"])){
    $_SESSION["inspection_plan"]->desc = $_POST["desc"];
    $_SESSION["inspection_plan"]->type = $_POST["task_list_type"];
    $_SESSION["inspection_plan"]->date_created = date2sql($_POST["date_created"]);
    $_SESSION["inspection_plan"]->date_modified = date2sql($_POST["date_created"]);
    $plan_id=insert_inspection_plan($_SESSION["inspection_plan"]);
    unset($_SESSION["inspection_plan"]);
    meta_forward($_SERVER['PHP_SELF'], "AddedID=".$plan_id);
}

if(isset($_POST["UpdateProcess"])){
    $_SESSION["inspection_plan"]->desc = $_POST["desc"];
    $_SESSION["inspection_plan"]->type = $_POST["task_list_type"];
    $_SESSION["inspection_plan"]->date_modified = $_POST["date_modified"];
    update_inspection_plan($_SESSION["inspection_plan"]);
    $plan_id = $_SESSION["inspection_plan"]->id;
    unset($_SESSION["inspection_plan"]);
    meta_forward($_SERVER['PHP_SELF'], "EditedID=".$plan_id);
}

//-----------------------------

start_form();
inspection_plan_header($_SESSION["inspection_plan"]);
start_table(TABLESTYLE, "width='80%'", 10);
echo "<tr><td>";
inspection_plan_content($_SESSION["inspection_plan"]);
echo "</td></tr>";
end_table(1);
if($is_edit){
    submit_center_first('UpdateProcess', _("Process"), '', 'default');
}else{
    submit_center_first('Process', _("Process"), '', 'default');
}
hidden("is_edit",$is_edit);
end_form();
end_page();

