<?php

require_once "./view/IndexView.php";
require_once "./model/IndexModel.php";

class IndexController{
    private $view;
    private $model;

    function __construct(){
        $this->view = new IndexView();
        $this->model = new IndexModel;
    }

    function showHome(){   
        $this->view->showIndex();
    }
    function showBlog(){   
        $this->view->showBlog();
    }
    function showLogin(){   
        $this->view->showLogin();
    }
    function showSignup(){   
        $this->view->showSignup();
    }

}