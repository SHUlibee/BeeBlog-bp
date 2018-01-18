<?php
namespace Admin\Controllers;

use BeePHP\Mvc\Controller;
use BeePHP\Mvc\View;

class HomeController extends Controller{

	public function indexAction(){
        $view = new View();
        $view->render("home/view");

        return $view;
	}

    public function test(){
        $this->load->helper('structure');
    }
	
}