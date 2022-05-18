<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class IndexView {
    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function showIndex(){
        $this->smarty->display('templates/index.tpl');
    } 

    function showLogin(){
        $this->smarty->display('templates/login.tpl');
    }
    function showSignup(){
        $this->smarty->display('templates/signup.tpl');
    }

    function showBlog(){
        $this->smarty->display('templates/blog.tpl');
    }

    
    function showHomeLocation(){
        header("Location: ".BASE_URL."home");
   }
}