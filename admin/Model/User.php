<?php
namespace Admin\Model;

use BeePHP\Mvc\Model;

class User extends Model{

	protected $defaultProperties = [
		'id', 'account', 'password', 'create_time', 'update_time'
	];

	protected $relationProperties = [];

	protected $primaryKey = 'id';

	protected $tableName = 'bb_user';

	public function init(){
		// TODO: Implement init() method.

	}
	
}