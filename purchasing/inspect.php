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

if(isset($_GET["stock_id"]))
    $stock_id = $_GET["stock_id"];
else
    $stock_id = $_POST["stock_id"];

if(isset($_GET["name"]))
    $name = $_GET["name"];
else
    $name = $_POST["name"];
    
$stock = get_item($stock_id);

$inspection_plan = db_fetch_assoc(get_inspection_plan($stock["Z_inspection_plan_id"]));
$inspection_plan_item = get_inspection_plan_item($inspection_plan["id"]);

function js_set_data_in_parent($parent,$value){
    $ret = "
        <script type='text/javascript'>
        function set_data_in_parent(parent,value){
            var oDom = opener.document;
            var elem = oDom.getElementsByName(parent)[0];
            if (elem) {
                elem.value=value;
            }
        }
        set_data_in_parent('".$parent."','".$value."');
        </script>    
        ";
    return $ret;
}


$js = "";

if ($SysPrefs->use_popup_windows)
    $js .= get_js_open_window(800, 500);
if (user_use_date_picker())
    $js .= get_js_date_picker();
$_SESSION['page_title'] = _($help_context = "Inspection");
 


page($_SESSION['page_title'], true, false, "", $js);


if (isset($_POST["Submit"])){
    echo js_set_data_in_parent($_POST["name"],$_POST["qty_accepted"]);
}


start_form();
hidden("stock_id",$stock_id);
hidden("name",$name);
start_table();
start_row();
label_cells(_("Item name"),$stock["description"]);
end_row();
start_row();
qty_cells(_("Quantity received"),"qty_received");
end_row();
start_row();
echo "<td></td>";
end_row();
$no = 0;
while(($plan_item=db_fetch($inspection_plan_item))!=null){
    $plan_ctn_obj = new Plan_content($plan_item["question"],$plan_item["is_mandatory"],$plan_item["answer_type"],$plan_item["option_list"]);
    start_row();
    $question = $plan_ctn_obj->is_mandatory?$plan_ctn_obj->question."*":$plan_ctn_obj->question;
    label_cells(_("Question"),$question);
    end_row();
    start_row();
    $name = "question_".$no;
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
        case 4: //dropdown
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
start_row();
qty_cells(_("Quantity accpeted"),"qty_accepted");
end_row();
end_table();
submit_center_first('Submit', _("Submit"), '', true);
end_form();
end_page();

