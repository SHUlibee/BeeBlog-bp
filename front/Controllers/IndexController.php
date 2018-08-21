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
use Common\Model\Blog;
use Common\Service\BlogService;

class IndexController extends Controller{



    public function indexAction(){

        $service = new BlogService();
        $blog = $service->findList(array());

        $view = new View();
        $view->assign('blogs', $blog);
        $view->render("home/index");

        return $view;
    }

    public function vueAction(){
        $view = new View(['suffix' => '.html']);
        $service = new BlogService();
        $blog = $service->find(1, Blog::class);
        $view->render("home/vue");
        $view->assign('blogs', [$blog]);

        return $view;
    }
}