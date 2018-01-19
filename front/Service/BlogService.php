<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/10
 * Time: 16:56
 */

namespace Front\Service;


use BeePHP\Di\Di;
use BeePHP\Mvc\Service;

class BlogService extends Service{
    function __construct(){
        $this->setDbAdapter(Di::getDynamic('dbAdapter'));
    }
}