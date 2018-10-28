<?php
class productoController extends almacenController {
    public function __construct()
    {
        parent::__construct();
    }
    public function index() 
    {
         $this->_view->assign("title", "Producto");
         $this->_view->renderizar("index", "almacen", "producto");
    }
}