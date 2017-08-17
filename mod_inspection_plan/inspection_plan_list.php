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

include_once($path_to_root . "/includes/session.inc");

include_once($path_to_root . "/includes/date_functions.inc");
include_once($path_to_root . "/includes/data_checks.inc");
include_once($path_to_root . "/includes/ui.inc");

include_once($path_to_root . "/mod_inspection_plan/db/inspection_plan_db.php");

$js = "";
if ($SysPrefs->use_popup_windows)
    $js .= get_js_open_window(800, 500);
if (user_use_date_picker())
    $js .= get_js_date_picker();

page(_("Inspection plan list"), false, false, "", $js);

echo "<center><a href='".$path_to_root."/mod_inspection_plan/create_inspection_plan.php'>Create inspection list</a></center><br/>";

//-----------------------------------------------------------------------------------------------
start_table(TABLESTYLE, "width='70%'", 2);

$th = array(_("No"), _("Description"),
	_("Task list type"), "", "");
inactive_control_column($th);
table_header($th);

$result = get_all_inspection_plan();
$k=0;
while($row = db_fetch($result)){
    alt_table_row_color($k);
    $link = viewer_link($k,"mod_inspection_plan/inspection_list_view.php?id=".$row["id"]);
    label_cell($link);
    label_cell($row["description"]);
    label_cell($row["task_list_type"]);
    edit_button_cell("Edit".$row["id"], _("Edit"));
    delete_button_cell("Delete".$row["id"], _("Delete"));
}


end_table(1);

end_page();

