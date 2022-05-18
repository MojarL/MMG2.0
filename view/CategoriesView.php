<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class CategoriesView {
    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function showCategories($bandas, $countBandas, $page, $printPagination, $bandsLike = ''){
        $this->smarty->assign('titulo', 'Inicio');  
        $this->smarty->assign('pagina', 'home');
        $this->smarty->assign('bandas', $bandas);
        $this->smarty->assign('countBandas', $countBandas);
        $this->smarty->assign('page', $page);
        $this->smarty->assign('print', $printPagination);
        $this->smarty->assign('bandsLike', $bandsLike);
        $this->smarty->display('templates/categories.tpl');
    } 
  
    function showHomeLocation(){
        header("Location: ".BASE_URL."home");
   }
}