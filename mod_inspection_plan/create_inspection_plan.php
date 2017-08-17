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
include_once($path_to_root . "/mod_inspection_plan/includes/inspection_plan_ui.php");

$js = "";
if ($SysPrefs->use_popup_windows)
    $js .= get_js_open_window(800, 500);
if (user_use_date_picker())
    $js .= get_js_date_picker();

page(_("Create inspection plan"), false, false, "", $js);


inspection_plan_header();

start_table(TABLESTYLE, "width='80%'", 10);
echo "<tr><td>";
inspection_plan_content();
echo "</td></tr>";
end_page();

