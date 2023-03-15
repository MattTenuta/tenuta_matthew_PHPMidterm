<?php
require_once('./models/UserModel.php');

class User {

private $model;

public function __construct() {
	$this->model = new UserModel();
}

public function loadViews() {
	require_once('views/head.php');
	require_once('views/nav.php');

	if(isset($_GET['id']) && !isset($_GET['task'])) {
		$users = $this->model->getOne($_GET['id']);
		require_once('views/user_detail.php');

	}else if(isset($_GET['str'])) {
		$users = $this->model->search('user_lname',$_GET['str']);
		$rows = $this->model->rows;
		require_once('views/user_list.php');


	}else if(isset($_GET['task'])) {
		if($_GET['task'] == 'create') {
			$formvalues = ['Griffin','Peter','PeterGriffin','peter.jpg','1'];
			$users = $this->model->newUser($formvalues);
			header("location:index.php");
		}else if($_GET['task'] == 'delete') {
			$users = $this->model->deleteUser($_GET['id']);
			header("location:index.php");
		}else if($_GET['task'] == 'update') {
	$formvalues = ['Griffin','Lois','LoisGriffin','lois.jpg','2',$_GET['id']];
			$users = $this->model->updateUser($formvalues);
			header("location:index.php");

// Looks & checks for role to allow access to certain people
		}else if($_GET['task'] == 'role') {
			$formvalues = [$_GET['user_role']];
					$users = $this->model->checkRole($formvalues);
					header("location:index.php");

	}else{ 
		$users = $this->model->getAll();
		$rows = $this->model->rows;
		require_once('views/user_list.php');

		// requiring in here the user form view so it will get loaded onto the page
		require_once('views/user_form.php');
	}

	require_once('views/footer.php');

}

}

?>