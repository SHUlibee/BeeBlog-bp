<?php
/**
 * Created by PhpStorm.
 * User: libiying
 * Date: 2018/8/10
 * Time: 16:56
 */
namespace Common\Http;

use BeePHP\Http\Response;

class BootstrapTableResponse extends Response{
    public $rows;
    public $total;

    /**
     * @return mixed
     */
    public function getRows()
    {
        return $this->rows;
    }

    /**
     * @param mixed $result
     */
    public function setRows($rows)
    {
        $this->rows = $rows;
    }

    /**
     * @return mixed
     */
    public function getTotal()
    {
        return $this->total;
    }

    /**
     * @param mixed $data
     */
    public function setTotal($total)
    {
        $this->total = $total;
    }
    
}