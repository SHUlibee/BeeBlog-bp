<?php

namespace Admin\Controllers;


use Admin\Model\User;
use Admin\Service\UserService;
use BeePHP\Mvc\Controller;
use BeePHP\Mvc\View;

class LoginController extends Controller{

    const P_ERROR = 1;

	public function indexAction(){
        $view = new View(array(
            'suffix' => '.bs.php'
        ));
        $view->render("login/index");
	}
	
	public function loginAction(){

        $acc = $_POST['log'];
        $pwd = $_POST['pwd'];

        $dbAdapter = $this->di->getDynamic('dbAdapter');
        $service = new UserService($dbAdapter);

        $user = $service->find(1, User::class);

        if($pwd && isset($user) && $pwd == $user->password){
            $_SESSION['account'] = $acc;

            $this->redirect('home');
        }else{
            $data = array('pattern' => self::P_ERROR, 'log' => $acc);
            $this->redirect('login', $data);
        }
		
	}
	
	public function logoutAction(){
        if(isset($_SESSION['account'])){
            unset($_SESSION['account']);
        }
        $this->redirect('login', null);
	}

}