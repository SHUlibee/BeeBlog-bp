<?php

//开启错误提示
ini_set('display_errors', 1);
//设置报错级别
error_reporting(E_ALL);

require '../vendor/autoload.php';

//定义常量
define('SERVER_ROOT', dirname(__FILE__));//应用根目录

//注册本应用的命名空间
$loader = new \BeePHP\ClassLoader();
$loader->registerDirs([
//    __DIR__ . "/Controllers",
])->registerNamespaces([
    'Admin' => __DIR__,
    'Common' => __DIR__ . '/../common'
])->register();

//路由控制
include 'Config/Route.php';

//依赖注入
$di = new \BeePHP\Di\Di();
$di->set('router', $router);
$di->setDynamic('dbAdapter', \BeePHP\Db\Adapter\Mysql::class, \BeePHP\Config\Config::create(array(
    'host' => '127.0.0.1',
    'dbname' => 'beeblog',
    'username' => 'root',
    'password' => '',
)));

$app = new \BeePHP\Mvc\Application($di);
$app->run();