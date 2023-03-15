<?php

require_once('Database.php');

class UserModel extends Database {

public function __construct() {
	parent::__construct();
	$this->table = 'tbl_users';
	$this->fields = "user_lname,user_fname,user_username,user_photo,user_role";
}

public function newUser($formvalues) {
	$statement = "(" . $this->fields . ") VALUES (?,?,?,?,?)";
	$this->create($statement,$formvalues);
}

public function updateUser($formvalues) {
	$statement = " SET user_lname=?,user_fname=?,user_username=?,user_photo=?,user_role=? WHERE id=?";
	$this->update($statement,$formvalues);
}

//checkRole function for checking what role the user has
public function checkRole($formvalues) {
	$statement = " SET user_role=?";
	$this->update($statement,$formvalues);
}

// this function sets user_role to 2 making them an admin
public function checkAdmin($formvalues) {
	$statement = " SET user_role=2";
	$this->update($statement,$formvalues);
}

// this function sets user_role to 1 making them unregistered
public function checkAdmin($formvalues) {
	$statement = " SET user_role=1";
	$this->update($statement,$formvalues);
}

// this function sets user_role to 3 making them a guest
public function checkAdmin($formvalues) {
	$statement = " SET user_role=3";
	$this->update($statement,$formvalues);
}

public function deleteUser($id) {
	$this->delete($id);
}


}

?>