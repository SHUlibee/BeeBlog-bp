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
        $view->render("home/view");

        return $view;
	}
    
    public function blogListAction(){
        $this->blogService = new BlogService();
        $blogs = $this->blogService->findList(array(), Blog::class);
        $total = $this->blogService->count(array(), Blog::class);

        $res = new DataGridResponse();
        $res->setResult('success');
        $res->setData($blogs);
        $res->setPaper([
            'page' => 1,
            'recTotal' => $total,
            'recPerPage' => 10,
        ]);

        return $res;
    }

    public function test(){
        $this->load->helper('structure');
    }
	
}