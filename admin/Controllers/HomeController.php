<?php
namespace Admin\Controllers;

use BeePHP\Mvc\Controller;
use BeePHP\Mvc\View;
use Common\Service\BlogService;

class HomeController extends Controller{

    /**
     * @var BlogService
     */
    private $blogService;

	public function indexAction(){
        $view = new View();
        $view->render("index");
        return $view;
	}

    public function blogAction(){
        $view = new View();
        $view->render("home/index");
        return $view;
    }

    public function test(){
        $this->load->helper('structure');
    }
	
}