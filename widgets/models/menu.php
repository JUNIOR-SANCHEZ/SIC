<?php
class menuModelWidget extends Model
{
    private $_registry;
    private $_acl;
    public function __construct()
    {
        parent::__construct();
        $this->_registry = Registry::getInstancia();
        $this->_acl = $this->_registry->_acl;
    }
    public function getmenu($menu)
    {
        $menus["sidenav"] = array();
        $menus["sidenav"][] = array(
            "id" => "almacen",
            "title" => "Almacen",
            "icon" => "fa-home",
            "sub-menu" => array(
                array(
                    "id" => "categoria",
                    "title" => "Categoria",
                    "icon" => " fa-circle-o",
                    "link" => BASE_URL . "almacen/categoria",
                ),
                array(
                    "id" => "presentacion",
                    "title" => "Presentacion",
                    "icon" => " fa-circle-o",
                    "link" => BASE_URL . "almacen/presentacion",
                ),
                array(
                    "id" => "marcas",
                    "title" => "Marcas",
                    "icon" => " fa-circle-o",
                    "link" => BASE_URL . "almacen/marcas",
                ),
                array(
                    "id" => "producto",
                    "title" => "Productos",
                    "icon" => " fa-circle-o",
                    "link" => BASE_URL . "almacen/producto",
                ),
            ),
        );
        $menus["sidenav"][] = array(
            "id" => "compras",
            "title" => "Compras",
            "icon" => "fa-shopping-cart",
            "sub-menu" => array(
                array(
                    "id" => "proveedores",
                    "title" => "Proveedores",
                    "icon" => " fa-circle-o",
                    "link" => BASE_URL . "compras/proveedores",
                ),
                array(
                    "id" => "compra",
                    "title" => "Compras",
                    "icon" => " fa-circle-o",
                    "link" => BASE_URL . "compras",
                ),
            ),
        );
        $menus["sidenav"][] = array(
            "id" => "documento",
            "title" => "Tipo de documento",
            "icon" => "fa-file-archive-o",
            "link" => BASE_URL . "documento",
            "sub-menu" => array(),
        );
        $menus["sidenav"][] = array(
            "id" => "ventas",
            "title" => "Ventas",
            "icon" => "fa-shopping-cart",
            "sub-menu" => array(
                array(
                    "id" => "clientes",
                    "title" => "Clientes",
                    "icon" => " fa-circle-o",
                    "link" => BASE_URL . "ventas/clientes",
                ),
                array(
                    "id" => "index",
                    "title" => "Ventas",
                    "icon" => " fa-circle-o",
                    "link" => BASE_URL . "ventas",
                ),
               
            ),
        );

        if ($this->_acl->permiso("admin_access")) {
            $menus["sidenav"][] =
            array(
                "id" => "usuarios",
                "title" => "Permisos por usuario",
                "icon" => "fa-user",
                "link" => BASE_URL . "usuarios",
                "sub-menu" => array(),

            );
            $menus["sidenav"][] =
            array(
                "id" => "acl",
                "title" => "Control de acceso por rol",
                "icon" => "fa-group",
                "link" => BASE_URL . "acl",
                "sub-menu" => array(),

            );
            $menus["sidenav"][] =
            array(
                "id" => "registro",
                "title" => "Registrar nuevo usuario",
                "icon" => " fa-user-plus",
                "link" => BASE_URL . "usuarios/registro",
                "sub-menu" => array(),
            );
        }
        $menus["top"] = array();
        return $menus[$menu];
    }
}
