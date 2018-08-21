<?php
/**
 * Created by PhpStorm.
 * User: bee
 * Date: 18-8-17
 */
namespace Common\Model;

use BeePHP\Mvc\Model;

class Category extends Model{

    protected $defaultProperties = [
        'id', 'name', //'create_time', 'update_time'
    ];

    protected $relationProperties = [];

    protected $primaryKey = 'id';

    protected $tableName = 'bb_category';

    public function init(){
        // TODO: Implement init() method.
    }
}