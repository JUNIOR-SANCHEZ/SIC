<?php
class clientesController extends ventasController {
    public function __construct()
    {
        parent::__construct();
    }
    public function index() 
    {
         $this->_view->assign("title", "Clientes");
         $this->_view->renderizar("index", "ventas", "clientes");
    }
}