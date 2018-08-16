<?php
/**
 * Created by PhpStorm.
 * User: libiying
 * Date: 2018/1/17
 * Time: 10:40
 */

//路由控制
$router = new \BeePHP\Mvc\Router();
$router->add('/', [
    'Controller' => 'Admin\Controllers\LoginController',
    'Action' => 'indexAction'
]);
$router->add('/login', [
    'Controller' => 'Admin\Controllers\LoginController',
    'Action' => 'loginAction'
], 'post');

$router->add('/home', [
    'Controller' => 'Admin\Controllers\HomeController',
    'Action' => 'indexAction'
]);
$router->add('/blog', [
    'Controller' => 'Admin\Controllers\BlogController',
    'Action' => 'indexAction'
]);
$router->add('/blog/list', [
    'Controller' => 'Admin\Controllers\BlogController',
    'Action' => 'listAction'
], 'get');
$router->add('/blog/list2', [
    'Controller' => 'Admin\Controllers\BlogController',
    'Action' => 'list2Action'
], 'get');
$router->addGet('/blog/add', [
    'Controller' => 'Admin\Controllers\BlogController',
    'Action' => 'addAction']);
$router->add('/blog/add', [
    'Controller' => 'Admin\Controllers\BlogController',
    'Action' => 'addAction'
], 'post');

return $router;