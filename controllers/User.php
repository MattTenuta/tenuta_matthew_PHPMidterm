<?php
require_once('./models/UserModel.php');

// A controller class. Handles the linkage between the specific
// URL passed by the user and DB fetch/put methods in the model class.

class User {

private $model;

public function __construct() {
	$this->model = new UserModel();
}

// This file combines specific URL 'routes' with model methods
// we dont have actual routing, but each URL with parameters
// acts as a unique 'pointer' to a resource
// e.g., localhost:8888/pdo_employees/ is unique compared to
// localhost:8888/pdo_employees/index.php?task=delete&id=1

public function loadViews() {
	//get content through the model
	//load views that match the content
	require_once('views/head.php');
	require_once('views/nav.php');


	
	// what content should be passed back based on URL parameters?


	//route: localhost:8888/employees/index.php?id=1

	if(isset($_GET['id']) && !isset($_GET['task'])) {
		//run query method A on the model
		//load view(s) to match the model data
		$users = $this->model->getOne($_GET['id']);
		require_once('views/user_detail.php');

	}else if(isset($_GET['str'])) {
		//run query method B on the model
		//load view(s) to match THAT model data
		$users = $this->model->search('user_lname',$_GET['str']);
		$rows = $this->model->rows;
		require_once('views/user_list.php');


	}else if(isset($_GET['task'])) {
		if($_GET['task'] == 'create') {
			//POST values from a form
			$formvalues = ['Griffin','Peter','PeterGriffin','peter.jpg','1'];
			$users = $this->model->newUser($formvalues);
			header("location:index.php");
		}else if($_GET['task'] == 'delete') {
			$users = $this->model->deleteUser($_GET['id']);
			header("location:index.php");
		}else if($_GET['task'] == 'update') {
			//POST values from a form, could also be hidden field for id value
	$formvalues = ['Griffin','Lois','LoisGriffin','lois.jpg','2',$_GET['id']];
			$users = $this->model->updateUser($formvalues);
			header("location:index.php");
		}

		
// default route:localhost:8888/employees

	}else{ 
		$users = $this->model->getAll();
		$rows = $this->model->rows;
		require_once('views/user_list.php');
	}

	require_once('views/footer.php');

}

}