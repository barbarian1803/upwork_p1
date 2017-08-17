<?php

function inspection_plan_header(){
    start_outer_table(TABLESTYLE2, "width='80%'");

    table_section(1);
    start_row();
    text_row(_("Description"),"desc",null,30,255);
    
    end_row();
    
    table_section(2);
    array_selector_row(_("Task type"),"task_list_type", null, array("wo"=>"Work Order","grn"=>"GRN"), $options=null);
    
    
    table_section(2);
    date_row(_("Date created"), 'date_created');
    
    end_outer_table(1);
}

function inspection_plan_content(){
    global $Ajax;
    
    display_heading(_("Question list"));
    
    div_start('content_table');
    
    start_table(TABLESTYLE2, "width='90%'");

    $th = array(_("Question"), _("Is mandatory?"), _("Question type"),_("Options"),"","");
    
    table_header($th);
    
    
    end_table();
    
    div_end();
}