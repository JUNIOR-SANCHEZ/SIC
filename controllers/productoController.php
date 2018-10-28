<?php
class productoController extends Controller{
    public function __construct() {
        parent::__construct();
    }
    public function index()
    {
        $this->_view->assign("title","Productos");
        $this->_view->renderizar("nuevo","producto");
    }
}