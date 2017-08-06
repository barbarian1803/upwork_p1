<?php

class BatchNumberHolder{
    var $all_batch_number;
    function __construct() {
        $sql = "SELECT category_id FROM ".TB_PREF."stock_category";
        $result = db_query($sql);
        while($id = db_fetch_row($result)){
            $this->all_batch_number["cat_".$id[0]] = new CategoryBatchNumberGenerator($id[0]);
        }
    }
    
    function get_batch_obj_by_stock_id($id){
        global $firephp;
        $sql = "SELECT category_id FROM ".TB_PREF."stock_master WHERE stock_id=".  db_escape($id);
        $output = db_fetch_row(db_query($sql));
        $category_id = "cat_".$output[0];
        $firephp->fb($this->all_batch_number);
        return $this->all_batch_number[$category_id];
    }
    
    function save_current_no(){
        foreach($this->all_batch_number as $batch_no){
            $batch_no->save_cur_no();
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
        $sql = "SELECT *,batch_no.id as batch_no_id FROM ".TB_PREF."stock_category as cat INNER JOIN ".TB_PREF."mod_batch_number_master as batch_no ON cat.batch_number_id=batch_no.id WHERE cat.category_id=".  db_escape($category_id);
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
        $sql = "UPDATE ".TB_PREF."mod_batch_number_master SET serial_no=".db_escape($this->cur_number)." WHERE id=".db_escape($this->batch_no_id);
        db_query($sql);
    }
}