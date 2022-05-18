<?php
require_once "controller/IndexController.php";
require_once "controller/CategoriesController.php";

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] .
    dirname($_SERVER['PHP_SELF']));


// lee la acción
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home'; // acción por defecto si no envían
}

$params = explode('/', $action);

$indexController = new IndexController();
$CategoriesController = new CategoriesController();

// determina que camino seguir según la acción
switch ($params[0]) {

        //INDEX
    case 'home':
        $indexController->showHome();
        break;
    case 'index.html':
        $indexController->showHome();
        break;

    case '':
        $indexController->showHome();
        break;

    case 'categories.html':
        $CategoriesController->showCategories();
        break;

    case 'blog.html':
        $indexController->showBlog();
        break;

    case 'login.html': 
        $indexController->showLogin(); 
        break;

    case 'signup.html': 
        $indexController->showSignup(); 
        break;
    default:
        echo ('404 Page not found');
        break;
}
