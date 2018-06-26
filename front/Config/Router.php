<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/17
 * Time: 10:41
 */

$router = new \BeePHP\Mvc\Router();
$router->add('/http/index', [
    'Controller' => 'Test\Controllers\HttpController',
    'Action' => 'viewAction'
]);
$router->add('/', [
    'Controller' => 'Front\Controllers\IndexController',
    'Action' => 'indexAction'
]);
$router->add('/vue', [
    'Controller' => 'Front\Controllers\IndexController',
    'Action' => 'vueAction'
]);

return $router;