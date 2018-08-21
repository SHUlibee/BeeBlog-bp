<?php
namespace Common\Service;

use Common\Model\User;
use BeePHP\Di\Di;
use BeePHP\Mvc\Service;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/16
 * Time: 14:34
 */
class UserService extends Service{

    protected $modelClass = User::class;

    function __construct(){
        $this->setDbAdapter(Di::getDynamic('dbAdapter'));
    }
}