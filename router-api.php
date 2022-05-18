<?php

require_once 'libs/Router.php';
require_once 'controller/ApiBandsController.php';
require_once 'controller/ApiPageController.php';
// crea el router
$router = new Router();

$router->addRoute('page/:ID', 'GET', 'ApiPageController', 'getBandsPage');
$router->addRoute('search/:ID', 'GET', 'ApiBandsController', 'getBandsLike');


$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);