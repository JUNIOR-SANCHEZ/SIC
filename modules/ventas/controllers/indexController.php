<?php
class indexController extends ventasController {
    public function __construct()
    {
        parent::__construct();
    }
    public function index() 
    {
         $this->_view->assign("title", "Ventas");
         $this->_view->renderizar("index", "ventas", "index");
    }
}