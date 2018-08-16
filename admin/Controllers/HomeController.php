<?php
namespace Admin\Controllers;

use Admin\Model\Blog;
use BeePHP\Http\Response;
use BeePHP\Mvc\Controller;
use BeePHP\Mvc\View;
use Admin\Service\BlogService;
use Common\Http\DataGridResponse;

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