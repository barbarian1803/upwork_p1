<?php
/***** CREATED BY BHARATA KALBUAJI ****/

$page_security = 'SA_SETUPCOMPANY';
$path_to_root = "..";

include($path_to_root . "/includes/session.inc");

page(_($help_context = "Batch number setup"));

include_once($path_to_root . "/includes/ui.inc");
include_once($path_to_root . "/admin/db/mod_batch_number_db.php")
