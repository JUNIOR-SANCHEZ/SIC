<?php
class indexController extends comprasController {
    public function __construct()
    {
        parent::__construct();
    }
    public function index() 
    {
         $this->_view->assign("title", "Compras");
         $this->_view->renderizar("index", "compras", "index");
    }
}