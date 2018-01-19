<?php
namespace Admin\Service;

use BeePHP\Di\Di;
use BeePHP\Mvc\Service;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/16
 * Time: 14:34
 */
class UserService extends Service{

    function __construct(){
        $this->setDbAdapter(Di::getDynamic('dbAdapter'));
    }
}