<?php

include_once($path_to_root."/includes/ui/ui_lists.inc");

function batch_number_master_list($name, $selected_id=null,$submit_on_change=false){
  $sql = "SELECT id,string_format FROM z_batch_number_master";

	return combo_input($name, $selected_id, $sql, 'id', 'string_format',
		array(
			'select_submit'=> $submit_on_change,
                        'async' => false,
                        'spec_id' => "-1",
                        'spec_option' => "None"
		));
}

function batch_number_master_list_cells($label, $name, $selected_id=null, $submit_on_change=false){
	if ($label != null)
		echo "<td>$label</td>\n";
	echo "<td>";
	echo batch_number_master_list($name, $selected_id, $submit_on_change);
	echo "</td>\n";
}

function batch_number_master_list_row($label, $name, $selected_id=null, $submit_on_change=false){
	echo "<tr><td class='label'>$label</td>";
	batch_number_master_list_cells(null, $name, $selected_id, $submit_on_change);
	echo "</tr>\n";
}

//----------------------------------

function inspection_plan_list($name, $selected_id=null,$submit_on_change=false){
  $sql = "SELECT id,description FROM `z_inspection_plan_header`";
	return combo_input($name, $selected_id, $sql, 'id', 'description',
		array(
			'select_submit'=> $submit_on_change,
			'async' => false,
                        'spec_id' => "-1",
                        'spec_option' => "none"
		));
}

function inspection_plan_list_cells($label, $name, $selected_id=null, $submit_on_change=false){
	if ($label != null)
		echo "<td>$label</td>\n";
	echo "<td>";
	echo inspection_plan_list($name, $selected_id, $submit_on_change);
	echo "</td>\n";
}

function inspection_plan_list_row($label, $name, $selected_id=null, $submit_on_change=false){
	echo "<tr><td class='label'>$label</td>";
	inspection_plan_list_cells(null, $name, $selected_id, $submit_on_change);
	echo "</tr>\n";
}