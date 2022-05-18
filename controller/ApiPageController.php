<?php
require_once "model/IndexModel.php";
require_once "view/ApiView.php";
require_once "helpers/PageHelper.php";

class ApiPageController{
    private $model;
    private $view;
    private $helper;
    function __construct(){
        $this->view = new ApiView();
        $this->model = new IndexModel();
        $this->helper = new PageHelper();
    }

    function getBandsPage($params = null){
        $id = $params[':ID'];
        $id--;
        if($id == 0){
            $until = 20;
        }else{
            $id = $id *2*10+1;
            $until = 19;
        }

        //$page = $this->helper->checkPage($id);

        $bandas = $this->model->getBandsPage($id, $until);
        return $this->view->response($bandas, 200);
    }

}
