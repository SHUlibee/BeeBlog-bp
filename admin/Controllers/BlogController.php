<?php
namespace Admin\Controllers;

use Common\Model\Blog;
use BeePHP\Http\Response;
use BeePHP\Mvc\Controller;
use BeePHP\Mvc\Model\ModelFactory;
use BeePHP\Mvc\View;
use Common\Service\BlogService;
use Common\Http\BootstrapTableResponse;

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

        $this->blogService = new BlogService();
    }

    public function getByIdAction(){
        $id = $this->request->getParams('id');
        if(!isset($id) || empty($id)){
            return null;
        }
        $blog = $this->blogService->find($id);
        return new Response($blog);
    }

    public function indexAction(){
        $this->view->render("blog/index");
        return $this->view;
	}

    public function listAction(){
        $blogs = $this->blogService->findList(array());
        $total = $this->blogService->count(array());

        $res = new BootstrapTableResponse();
        $res->setRows($blogs);
        $res->setTotal($total);
        return $res;
    }

    public function saveAction(){
        $blog = ModelFactory::convert($this->request->getPost(), Blog::class);
        $res = $this->blogService->create($blog);
        return new Response(['code' => 1, 'message' => $res]);
    }

    public function addAction(){
        $this->view->render("blog/save");
        return $this->view;
    }

    public function updateAction(){
        $id = $this->request->getParams('id');

        $this->view->render("blog/save");
        $this->view->assign('id', $id);
        return $this->view;
    }


}