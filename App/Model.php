<?php

class Model
{

    private $_registry;
    protected $_db;
    /**
     * __construct
     *
     * @return void
     */
    public function __construct()
    {
        $this->_registry = Registry::getInstancia();
        $this->_db = $this->_registry->_db;
        $this->_db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    }
}
