<?php

$page_security = 'SA_GRN';
$path_to_root = "..";

include_once($path_to_root . "/purchasing/includes/po_class.inc");
include_once($path_to_root . "/mod_inspection_plan/includes/inspection_plan_class.inc");
include_once($path_to_root . "/admin/includes/batch_number_class.php");
include_once($path_to_root . "/includes/session.inc");
include_once($path_to_root . "/purchasing/includes/purchasing_db.inc");
include_once($path_to_root . "/purchasing/includes/purchasing_ui.inc");
include_once($path_to_root . "/admin/db/mod_batch_number_db.php");
include_once($path_to_root . "/mod_inspection_plan/db/inspection_plan_db.php");
include_once($path_to_root . "/inventory/includes/batch_list_ui.inc");

if(isset($_GET["stock_id"]))
    $stock_id = $_GET["stock_id"];
else
    $stock_id = $_POST["stock_id"];

if(isset($_GET["name"]))
    $name = $_GET["name"];
else
    $name = $_POST["name"];

if(isset($_GET["inspect_type"]))
    $inspect_type = $_GET["inspect_type"];
else
    $inspect_type = $_POST["inspect_type"];
    
$stock = get_item($stock_id);

$inspection_plan = db_fetch_assoc(get_inspection_plan($stock["Z_inspection_plan_id"]));
$inspection_plan_item = get_inspection_plan_item($inspection_plan["id"]);

if (!isset($_POST["Submit"])){
    $_SESSION["inspect_".$stock_id] = new Inspection_result($_SESSION["wa_current_user"]->user);
    $_SESSION["inspect_".$stock_id]->id = $inspection_plan["id"];
    $_SESSION["inspect_".$stock_id]->inspection_type = $inspect_type;
}

$js = "";

if ($SysPrefs->use_popup_windows)
    $js .= get_js_open_window(800, 500);
if (user_use_date_picker())
    $js .= get_js_date_picker();
$_SESSION['page_title'] = _($help_context = "Inspection");
 
page($_SESSION['page_title'], true, false, "", $js);

function can_process(){
    $stock_id = $_POST["stock_id"];
    for($i=0;$i<$_POST["no"];$i++){
        $type = $_SESSION["inspect_".$stock_id]->contents[$i]->type;
        
        if(!isset($_POST["answer_".$i])&$type!=2){
            display_warning(_("Question marked by * is mandatory, pelase answer all mandatory questions"));
            return false;
        }
    }
    return true;
}

function submit_process(){
    $parent_name = $_POST["name"];
    $qty_received = $_POST["qty_received"];
    $qty_accepted = $_POST["qty_accepted"];
    $stock_id = $_POST["stock_id"];
    $no = $_POST["no"];
    
    $_SESSION["inspect_".$stock_id]->stock_id = $stock_id;
    
    $_SESSION["inspect_".$stock_id]->reject_reason = $_POST["reason"];
    $_SESSION["inspect_".$stock_id]->signature = $_POST["signature"];
    
    $_SESSION["inspect_".$stock_id]->qty_received = $qty_received;
    $_SESSION["inspect_".$stock_id]->qty_accepted = $qty_accepted;
    
    for($i=0;$i<$_POST["no"];$i++){
        if(isset($_POST["answer_".$i]))
            $_SESSION["inspect_".$stock_id]->contents[$i]->answer = $_POST["answer_".$i];
        else
            $_SESSION["inspect_".$stock_id]->contents[$i]->answer = null;
    }
    
    $_SESSION["inspection_result"]["inspect_".$stock_id] = $_SESSION["inspect_".$stock_id];
    unset($_SESSION["inspect_".$stock_id]);
            
    echo js_set_data_in_parent($_POST["name"],$_POST["qty_accepted"]);
    close_window();
}

if (isset($_POST["Submit"]) && can_process()){
    submit_process();
}


start_form();

hidden("stock_id",$stock_id);
hidden("name",$name);
hidden("inspect_type",$inspect_type);

start_table();
start_row();
label_cells(_("Item name"),$stock["description"]);
end_row();
start_row();
qty_cells(_("Quantity received"),"qty_received");
end_row();
end_table(2);

start_table();
$no = 0;
while(($plan_item=db_fetch($inspection_plan_item))!=null){
    
    $plan_ctn_obj = new Plan_content($plan_item["question"],$plan_item["is_mandatory"],$plan_item["answer_type"],$plan_item["option_list"]);
    $_SESSION["inspect_".$stock_id]->contents[$no] = $plan_ctn_obj;
    start_row();
    $question = $plan_ctn_obj->is_mandatory?$plan_ctn_obj->question."*":$plan_ctn_obj->question;
    label_cells(_("Question"),$question,"");
    end_row();
    start_row();
    $name = "answer_".$no;
    label_cell(_("Answer"),"class='label'");
    switch ($plan_ctn_obj->type) {
        case 1: //text field
            text_cells(null,$name);
            break;
        case 2: //yes/no
            check_cells(null, $name);
            break;
        case 3: //dropdown
            echo "<td>".array_selector($name, 0,$plan_ctn_obj->options)."</td>";
            break;
        case 4: //multi select
            echo "<td>".array_selector($name, 0,$plan_ctn_obj->options,array("multi"=>true))."</td>";
            break;
        case 5: //uploader
            echo file_cells(null, $name);
            break;
        default:
            break;
    }
    end_row();
    $no++;
}
end_table(1);

start_table();
hidden("no",$no);
start_row();
qty_cells(_("Quantity accepted"),"qty_accepted");
end_row();
start_row();
text_cells(_("Rejection reason"),"reason");
end_row();
start_row();
text_cells(_("Driver signature"),"signature");
end_row();
end_table();

submit_center_first('Submit', _("Submit"), '', true);
end_form();
end_page();

