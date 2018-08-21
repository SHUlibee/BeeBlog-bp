<?php
/**
 * Created by PhpStorm.
 * User: bee
 * Date: 2018/8/17
 * Time: 11:09
 */

namespace Common\Service;


use Common\Model\Category;
use BeePHP\Di\Di;
use BeePHP\Mvc\Service;

class CategoryService extends Service{

    protected $modelClass = Category::class;

    function __construct(){
        $this->setDbAdapter(Di::getDynamic('dbAdapter'));
    }

}