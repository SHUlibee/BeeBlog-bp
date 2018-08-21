<?php
/**
 * Created by PhpStorm.
 * User: bee
 * Date: 18-8-20
 * Time: 下午4:05
 */
namespace Common\Model;

use BeePHP\Mvc\Model;

class Blog extends Model{

    protected $defaultProperties = [
        'id', 'title', 'author_id', 'category_id', 'tags', 'content', 'status', //'create_time', 'update_time'
    ];

    protected $relationProperties = [];

    protected $primaryKey = 'id';

    protected $tableName = 'bb_blog';

    public function init(){
        // TODO: Implement init() method.
    }
}