<?php
/**
 * Created by PhpStorm.
 * User: bee
 * Date: 2017/11/10
 * Time: 16:41
 */

namespace Front\Controllers;


use BeePHP\Mvc\Controller;
use BeePHP\Mvc\View;
use Front\Model\Blog;
use Front\Service\BlogService;

class IndexController extends Controller{

    public function indexAction(){

        $dbAdapter = $this->di->getDynamic('dbAdapter');
        $service = new BlogService($dbAdapter);

        $blog = $service->find(1, Blog::class);

        $view = new View(array(
            'suffix' => '.bs.php'
        ));
        $view->assign('blogs', [$blog]);
        $view->render("home/index");
    }

}