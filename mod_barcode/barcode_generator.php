<?php

$path_to_root = "..";



include($path_to_root.'/mod_barcode/lib/BarcodeGenerator.php');
include($path_to_root.'/mod_barcode/lib/BarcodeGeneratorPNG.php');
include_once($path_to_root . "/includes/session.inc");
include_once($path_to_root . "/includes/db/inventory_db.inc");


$trans_type = $_GET["trans_type"];
$trans_id = $_GET["trans_id"];

$stock_moves = get_stock_moves($trans_type,$trans_id);

$generatorPNG = new Picqer\Barcode\BarcodeGeneratorPNG();
while(($data=db_fetch($stock_moves))!=null){
    $file_name = company_path().'/images/'.$data["Z_batch_number"].".png";
    file_put_contents($file_name, $generatorPNG->getBarcode($data["Z_batch_number"], $generatorPNG::TYPE_CODE_128));
    echo "<img src='".$file_name."'/>";
    echo "<br/>";
    echo $data["Z_batch_number"];
    echo "<br/>";
    echo "<br/>";
    echo "<br/>";
}

