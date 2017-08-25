<?php

function inspection_plan_header($cart) {
    global $is_edit;
    start_outer_table(TABLESTYLE2, "width='80%'");

    table_section(1);
    start_row();
    text_row(_("Description"), "desc", $cart->desc, 30, 255);

    end_row();

    table_section(2);
    array_selector_row(_("Task type"), "task_list_type", $cart->type, array("wo" => "Work Order", "grn" => "GRN"));


    table_section(2);
    if($is_edit){
        label_row(_("Date created"), sql2date($cart->date_created));
        date_row(_("Date modified"), 'date_modified');
    }else{
            date_row(_("Date created"), 'date_created');
    }

    end_outer_table(1);
}

function inspection_plan_content($cart) {
    global $Ajax;

    display_heading(_("Question list"));

    div_start('content_table');

    start_table(TABLESTYLE, "width='90%'");

    $th = array(_("Question"), _("Is mandatory?"), _("Question type"), _("Options"), "", "");

    table_header($th);

    $k = 0;
    $id = find_submit('Edit');
    foreach ($cart->plan_contents as $line_no => $content) {
        ConsoleDebug($content);
        if ($id != $line_no) {
            alt_table_row_color($k);
            label_cell($content->question);
            label_cell($content->is_mandatory == 1 ? "Yes" : "No");
            $array = array(1 => "Text", 2 => "Yes/No", 3 => "Dropdown", 4 => "Multi values", 5 => "Image");
            label_cell($array[$content->type]);
            label_cell($content->options == "" ? $content->options : implode(" - ", $content->options));
            edit_button_cell("Edit$line_no", _("Edit"), _('Edit document line'));
            delete_button_cell("Delete$line_no", _("Delete"), _('Remove line from document'));
            end_row();
        } else {
            inspection_plan_control($cart, $line_no);
        }
    }
    if ($id == -1) {
        inspection_plan_control($cart);
    }

    end_table();

    div_end();
}

function inspection_plan_control($cart, $line_no = -1) {
    global $Ajax;
    if ($line_no != -1) {
        $_POST['question'] = $cart->plan_contents[$line_no]->question;
        $_POST['is_mandatory'] = $cart->plan_contents[$line_no]->is_mandatory;
        $_POST['question_type'] = $cart->plan_contents[$line_no]->type;
        $_POST['options'] = $cart->plan_contents[$line_no]->options == "" ? "" : implode(";", $cart->plan_contents[$line_no]->options);
        $Ajax->activate('content_table');
    } else {
        $_POST['question'] = "";
        $_POST['is_mandatory'] = "";
        $_POST['question_type'] = "";
        $_POST['options'] = "";
    }
    start_row();
    text_cells("", "question", $_POST['question']);
    check_cells("", "is_mandatory", $_POST['is_mandatory']);
    $array = array("1" => "Text", "2" => "Yes/No", "3" => "Dropdown", "4" => "Multi values", "5" => "Image");
    $opt = array_selector("question_type", $_POST['question_type'], $array);
    echo "<td>" . $opt . "</td>";
    textarea_cells("", "options", null, 20, 2);
    if ($line_no != -1) {
        button_cell('UpdateItem', _("Update"), _('Confirm changes'), ICON_UPDATE);
        button_cell('CancelItemChanges', _("Cancel"), _('Cancel changes'), ICON_CANCEL);
        hidden('LineNo', $line_no);
        set_focus('qty');
    } else {
        submit_cells('AddItem', _("Add Item"), "colspan=2", _('Add new item to document'), true);
    }
    end_row();
}

function UI_control() {
    global $Ajax;
    $id = find_submit('Delete');
    if ($id != -1) {
        handle_delete_item($id);
        $Ajax->activate('content_table');
    }

    if (isset($_POST['AddItem'])) {
        handle_new_item();
        $Ajax->activate('content_table');
    }

    if (isset($_POST['UpdateItem'])) {
        handle_update_item($_POST["LineNo"]);
        $Ajax->activate('content_table');
    }

    if (isset($_POST['CancelItemChanges'])) {
        line_start_focus();
    }
}

//-----------------------------
function handle_delete_item($id) {
    $_SESSION["inspection_plan"]->delete_content($id);
}

function handle_new_item() {
    $_SESSION["inspection_plan"]->add_content($_POST["question"], check_value("is_mandatory"), $_POST["question_type"], $_POST["options"]);
}

function handle_update_item($id) {
    $_SESSION["inspection_plan"]->update_content($id, $_POST["question"], check_value("is_mandatory"), $_POST["question_type"], $_POST["options"]);
}

function line_start_focus() {
    global $Ajax;

    $Ajax->activate('content_table');
    set_focus('question');
}

//-----------------------------

function UI_after_process() {
    global $path_to_root;
    if (isset($_GET['AddedID'])) {
        $trans_no = $_GET['AddedID'];
        display_notification_centered(_("Inspection plan has been processed"));
        hyperlink_params($path_to_root . "/mod_inspection_plan/inspection_plan_list.php", _("Back to inspection list"), "");

        display_footer_exit();
    }
    if (isset($_GET['EditedID'])) {
        $trans_no = $_GET['EditedID'];
        display_notification_centered(_("Inspection plan has been updated"));
        hyperlink_params($path_to_root . "/mod_inspection_plan/inspection_plan_list.php", _("Back to inspection list"), "");

        display_footer_exit();
    }
}
