<?php
class Inspection_plan {
    var $id;
    var $desc;
    var $type;
    var $date_created;
    var $created_by;
    var $date_modified;
    var $modified_by;
    
    var $plan_contents;
    
    function __construct($user){
        $this->created_by = $user;
        $this->modified_by = $user;
        $this->id = -1;
        $this->clear_content();
    }
    
    function clear_content(){
        unset($this->plan_contents);
        $this->plan_contents = array();
    }
    
    function add_content($question,$is_mandatory,$type,$options){
        $this->plan_contents[] = new Plan_content($question, $is_mandatory, $type, $options);
    }
    
    function update_content($line_no,$question,$is_mandatory,$type,$options){
        $this->plan_contents[$line_no] = new Plan_content($question, $is_mandatory, $type, $options);
    }
    
    function delete_content($line_no){
        array_splice($this->plan_contents, $line_no, 1);
    }
}

class Inspection_result {
    var $id;
    var $stock_id;
    var $desc;
    var $type;
    var $date_created;
    var $created_by;
    var $date_modified;
    var $modified_by;
    var $qty_received;
    var $qty_accepted;
    var $inspection_type;
    var $document_no;
    var $document_item;
    var $grn_batch_id;
    var $grn_item_id;
    var $supplier;

    var $contents;
    
    function __construct($user){
        $this->created_by = $user;
        $this->modified_by = $user;
        $this->id = -1;
        $this->clear_content();
    }
    
    function clear_content(){
        unset($this->contents);
        $this->contents = array();
    }
    
    function add_content($question,$is_mandatory,$type,$options){
        $this->contents[] = new Plan_content($question, $is_mandatory, $type, $options);
    }
    
    function update_content($line_no,$question,$is_mandatory,$type,$options){
        $this->contents[$line_no] = new Plan_content($question, $is_mandatory, $type, $options);
    }
    
    function delete_content($line_no){
        array_splice($this->contents, $line_no, 1);
    }
}

class Plan_content{
    var $question;
    var $is_mandatory;
    var $type;
    var $options;
    var $answer;
    
    function __construct($question, $is_mandatory,$type,$options){
        $this->question = $question;
        $this->is_mandatory = $is_mandatory;
        $this->type = $type;
        $this->options = $this->extract_option($options);
    }
    
    function extract_option($opt){
        return $this->options = $this->multiexplode(array(";",",",PHP_EOL,"\r"), $opt);
    }
    
    function multiexplode ($delimiters,$string) {

        $ready = str_replace($delimiters, $delimiters[0], $string);
        $launch = explode($delimiters[0], $ready);
        return  $launch;
    }
    
}
