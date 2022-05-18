<?php

class PageHelper{

    function __construct(){
    }

    function checkPage(){
        session_start();
        if(!isset($_SESSION["page"])){
          return false;

        }else{
            return true;
        }
    }
}