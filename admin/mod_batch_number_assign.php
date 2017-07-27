<?php
/***** CREATED BY BHARATA KALBUAJI ****/
/***** assign which batch number will be used ****/
/**** batch number for GRN from purchase order/direct grn ***/
/**** batch number for GRN from item adjustment ***/
/**** batch number for GRN from work order finish product ***/

$page_security = 'SA_SETUPCOMPANY';
$path_to_root = "..";

include($path_to_root . "/includes/session.inc");

include_once($path_to_root . "/includes/ui.inc");
include_once($path_to_root . "/includes/ui/mod_ui_lists.inc");
include_once($path_to_root . "/admin/db/mod_batch_number_db.php");

simple_page_mode(true);

page(_($help_context = "Batch number assign"));


end_page();
