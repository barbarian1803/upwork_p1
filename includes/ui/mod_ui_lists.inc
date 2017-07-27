<?php

include_once($path_to_root."/includes/ui/ui_lists.inc");

function batch_number_master_list($name, $selected_id=null,$submit_on_change=false){
  $sql = "SELECT id,string_format FROM ".TB_PREF."mod_batch_number_master";

	// default to the company currency
	return combo_input($name, $selected_id, $sql, 'id', 'string_format',
		array(
			'select_submit'=> $submit_on_change,
			'async' => false
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
