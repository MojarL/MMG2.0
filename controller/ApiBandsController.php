<?php
require_once "model/IndexModel.php";
require_once "view/ApiView.php";

class ApiBandsController{
    private $model;
    private $view;

    function __construct(){
        $this->view = new ApiView();
        $this->model = new IndexModel();
    }

    function getBandsLike($params = null){
        $text = $params[':ID'];

        $bandsLike = $this->model->getBandsLike($text);
        return $this->view->response($bandsLike, 200);
    }

}