<?php

class BatchNumberHolder{
    var $all_batch_number;
    var $all_category;
    function __construct() {
        $sql = "SELECT * FROM z_batch_number_master";
        $result = db_query($sql);
        $this->all_batch_number["id_1"] = new BatchNumber(1,"None",0);
        while($row = db_fetch_assoc($result)){
            $this->all_batch_number["id_".$row["id"]] = new BatchNumber($row["id"],$row["string_format"],$row["serial_no"]);
        }
        
        $sql = "SELECT * FROM ".TB_PREF."stock_category";
        $result = db_query($sql);
        while($row = db_fetch_assoc($result)){
            
            if(array_key_exists("id_".$row["z_batch_number_id"], $this->all_batch_number))
                $this->all_category["cat_".$row["category_id"]] = &$this->all_batch_number["id_".$row["z_batch_number_id"]];
            else
                $this->all_category["cat_".$row["category_id"]] = &$this->all_batch_number["id_1"];
        }
    }
    
    function get_batch_obj_by_stock_id($id){
        $sql = "SELECT category_id,z_is_batch_controlled FROM ".TB_PREF."stock_master WHERE stock_id=".db_escape($id);
        $output = db_fetch_row(db_query($sql));
        
        if($output[1]==1){
            $category_id = "cat_".$output[0];
            return $this->all_category[$category_id];
        }else{
            return $this->all_batch_number["id_1"];
        }
    }
    
    function save_current_no(){
        foreach($this->all_batch_number as $batch_no){
            $batch_no->save_cur_no();
        }
    }
}

class BatchNumber{
    var $cur_number;
    var $string_number;
    var $batch_no_id;
    
    function __construct($id,$string_number,$cur_number) {
        $this->batch_no_id = $id;
        $this->string_number = $string_number;
        $this->cur_number = $cur_number;
    }
    
    function get_next_number(){
        $number = $this->string_number;
        $number = str_replace("%Y", date("Y"), $number);
        $number = str_replace("%m", date("m"), $number);
        $number = str_replace("%d", date("d"), $number);
        $number = str_replace("%no", $this->cur_number, $number);
        
        return $number;
    }
    
    function increase_no(){
        $this->cur_number++;
    }
    
    function save_cur_no(){
        if($this->string_number!="None"){
            $sql = "UPDATE z_batch_number_master SET serial_no=".db_escape($this->cur_number)." WHERE id=".db_escape($this->batch_no_id);
            db_query($sql);
        }
    }
}

class CategoryBatchNumberGenerator{
    var $category_id;
    var $cur_number;
    var $string_number;
    var $batch_no_id;
    
    function __construct($category_id){
        $this->category_id = $category_id;
        $sql = "SELECT *,batch_no.id as batch_no_id FROM ".TB_PREF."stock_category as cat INNER JOIN z_batch_number_master as batch_no ON cat.batch_number_id=batch_no.id WHERE cat.category_id=".  db_escape($category_id);
        $result = db_fetch_assoc(db_query($sql, "could not query batch number list"));
        $this->cur_number = $result["serial_no"];
        $this->string_number = $result["string_format"];
        $this->batch_no_id = $result["batch_no_id"];
        $this->saved = false;
    }
    
    function dump_obj(){
        return $this->string_number;
    }
    
    function get_next_number(){
        $number = $this->string_number;
        $number = str_replace("%Y", date("Y"), $number);
        $number = str_replace("%m", date("M"), $number);
        $number = str_replace("%d", date("d"), $number);
        $number = str_replace("%no", $this->cur_number, $number);
        
        return $number;
    }
    
    function increase_no(){
        $this->cur_number++;
    }
    
    function save_cur_no(){
        $sql = "UPDATE z_batch_number_master SET serial_no=".db_escape($this->cur_number)." WHERE id=".db_escape($this->batch_no_id);
        db_query($sql);
    }
}