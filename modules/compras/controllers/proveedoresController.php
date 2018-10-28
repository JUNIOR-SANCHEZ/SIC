<?php
class proveedoresController extends comprasController {
    public function __construct()
    {
        parent::__construct();
    }
    public function index() 
    {
         $this->_view->assign("title", "Proveedores");
         $this->_view->renderizar("index", "compras", "proveedores");
    }
}