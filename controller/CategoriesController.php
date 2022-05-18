<?php

require_once "./view/CategoriesView.php";
require_once "./model/CategoriesModel.php";

class CategoriesController{
    private $view;
    private $model;

    function __construct(){
        $this->view = new CategoriesView();
        $this->model = new CategoriesModel();
    }

    function showCategories(){   
        //cuenta la cantidad de bandas de la dtb para dividirlas en determinadas paginas
        $countBandas = $this->model->countBandas();

        //si no existe la pagina actual, se pone 1ra, se dividen las bandas por pagina
        if(isset($_GET['page'])){
            $page = $_GET['page'];
        }else{
            $page = 1;
        }

        if($page == 1){
            $start = 0;
            $until = 20;
        }else{

            $nPages = floor($countBandas->suma/20);
            $nBands = $countBandas->suma;
            $start = floor($nBands/$nPages)*$page;
            $until = 20;
        }

        //obtiene las bandas de la dtb
        $bandasDTB = $this->model->getBandsAZ($start, $until, "z");

        //funcion privada que imprime la paginación
        $printPagination = $this->printPagination($page, $countBandas);

        //se mandan a la view todos los datos obtenidos anteriormente
        $this->view->showCategories($bandasDTB, $countBandas, $page, $printPagination);
    }

    private function printPagination($page, $countBandas){
        if($page == 1){
            $print =
            ' <li class="page-item disabled">
                <span class="page-link">Previous</span>
            </li>';
        }else{
            $print = 
            '<li class="page-item">
                <a href="?page=' . $page-1 . '" class="page-link">Previous</a>
            </li>';
        }

        for($i = 1; $i <= floor($countBandas->suma/20); $i++){
            $print = $print .  
            '<li class="page-item">
                <a  href="?page=' . $i . '" class="page-link">' . $i . '</a>
            </li>';
        }

        if($page == floor($countBandas->suma/20)){
            $print = $print .
            '<li class="page-item disabled">
                <span class="page-link">Next</span>
            </li>';
        }else{
            $print = $print .
            '<li class="page-item">
                <a href="?page=' . $page+1 . '" class="page-link">Next</a>
            </li>';
        }

        return $print;
    }
    
}