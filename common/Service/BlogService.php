<?php
namespace Common\Service;

use Common\Model\Blog;
use BeePHP\Di\Di;
use BeePHP\Mvc\Service;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/16
 * Time: 14:34
 */
class BlogService extends Service{

    protected $modelClass = Blog::class;
    
    function __construct(){
        $this->setDbAdapter(Di::getDynamic('dbAdapter'));
    }

}