<?php
namespace Admin\Controllers;

use Admin\Model\Blog;
use BeePHP\Http\Response;
use BeePHP\Mvc\Controller;
use BeePHP\Mvc\View;
use Admin\Service\BlogService;
use Common\Http\BootstrapTableResponse;
use Common\Http\DataGridResponse;

class BlogController extends Controller{

    /**
     * @var BlogService
     */
    private $blogService;

    private $view;

    function __construct($di){
        parent::__construct($di);

        $view = new View();
        $view->setConfig('suffix', '.html');
        $view->setConfig('templateDir', 'View/templates/');
        $this->view = $view;
    }

    public function indexAction(){
        $this->view->render("blog/index");
        return $this->view;
	}

    public function listAction(){
        $this->blogService = new BlogService();
        $blogs = $this->blogService->findList(array());
        $total = $this->blogService->count(array());

        $res = new BootstrapTableResponse();
        $res->setRows($blogs);
        $res->setTotal($total);
        return $res;
    }

    public function addAction(){

        if($this->request->isPost()){
            $blog = new Blog();
            $res = $this->blogService->create($this->request->getPost());
            return new Response(['code' => 1, 'message' => $res]);
        }
        
        $this->view->render("blog/add");
        return $this->view;
    }

}