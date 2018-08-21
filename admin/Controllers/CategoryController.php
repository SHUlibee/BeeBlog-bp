<?php
namespace Admin\Controllers;

use Common\Service\CategoryService;
use BeePHP\Http\Response;
use BeePHP\Mvc\Controller;
use BeePHP\Mvc\View;

class CategoryController extends Controller{

    /**
     * @var CategoryService
     */
    private $categoryService;

    private $view;

    function __construct($di){
        parent::__construct($di);

        $view = new View();
        $view->setConfig('suffix', '.html');
        $view->setConfig('templateDir', 'View/templates/');
        $this->view = $view;

        $this->categoryService = new CategoryService();
    }

    public function listAction(){
        $categorys = $this->categoryService->findList(array());

        return new Response($categorys);
    }


}