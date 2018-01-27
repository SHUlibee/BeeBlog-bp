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
        $blogs = $this->blogService->findList(array());
        $total = $this->blogService->count(array());

        $res = new DataGridResponse();
        $res->setResult('ok');
        $res->setData($blogs);
        $res->setPager([
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