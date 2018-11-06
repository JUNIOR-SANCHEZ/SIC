/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.1.36-MariaDB : Database - sic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sic` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sic`;

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_categoria` varchar(20) CHARACTER SET latin1 NOT NULL,
  `estado_categoria` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `categorias` */

/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_marca` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `marcas` */

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(20) CHARACTER SET latin1 NOT NULL,
  `key` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `permisos` */

/*Table structure for table `permisos_role` */

DROP TABLE IF EXISTS `permisos_role`;

CREATE TABLE `permisos_role` (
  `role` int(11) NOT NULL,
  `permiso` int(11) NOT NULL,
  `valor` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `permisos_role` */

/*Table structure for table `permisos_usuario` */

DROP TABLE IF EXISTS `permisos_usuario`;

CREATE TABLE `permisos_usuario` (
  `usuario` int(11) NOT NULL,
  `permiso` int(11) NOT NULL,
  `valor` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `permisos_usuario` */

/*Table structure for table `presentaciones` */

DROP TABLE IF EXISTS `presentaciones`;

CREATE TABLE `presentaciones` (
  `id_presentacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_presentacion` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_presentacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `presentaciones` */

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `descripcion_producto` varchar(20) CHARACTER SET utf8 NOT NULL,
  `min_producto` int(11) NOT NULL,
  `max_producto` int(11) NOT NULL,
  `stock_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `productos` */

/*Table structure for table `proveedores` */

DROP TABLE IF EXISTS `proveedores`;

CREATE TABLE `proveedores` (
  `id_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `ruc_proveedor` varchar(20) CHARACTER SET utf8 NOT NULL,
  `razon_social_proveedor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `representante_proveedor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `direccion_proveedor` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email_proveedor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `telefono_proveedor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `celular_proveedor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `estado_proveedor` tinyint(4) NOT NULL,
  `tipo_contribuyente_proveedor` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `proveedores` */

insert  into `proveedores`(`id_proveedores`,`ruc_proveedor`,`razon_social_proveedor`,`representante_proveedor`,`direccion_proveedor`,`email_proveedor`,`telefono_proveedor`,`celular_proveedor`,`estado_proveedor`,`tipo_contribuyente_proveedor`) values (5,'085555555-001','narc','dvks','scjn','nmxz,','(444) 444-4444','(444) 444-4444',1,1),(6,'555555555-001','5dd','dddddddd','sssssssss','sdddddddddd','(111) 111-1111','(111) 111-111_',0,1),(7,'444444444-001','5wwwwwwwwwww','wwwwwwwwww','eeeeeeeeeeee','dddddddddddd`d','(444) 444-44__','(444) 444-4444',0,1),(8,'777777777-001','xxxxxx','x','xx','xxxxxxxxxx','(555) 555-555_','(555) 555-5555',1,1);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

/*Table structure for table `tipo_contribuyente` */

DROP TABLE IF EXISTS `tipo_contribuyente`;

CREATE TABLE `tipo_contribuyente` (
  `id_t_contribuyente` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_t_contribuyente` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_t_contribuyente` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_t_contribuyente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `tipo_contribuyente` */

insert  into `tipo_contribuyente`(`id_t_contribuyente`,`descripcion_t_contribuyente`,`estado_t_contribuyente`) values (1,'Persona Juridica',1),(2,'Persona Regular',1);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cedula` varchar(10) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `img` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `estado` tinyint(4) NOT NULL,
  `codigo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `usuarios` */

/* Procedure structure for procedure `insertar` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar`()
BEGIN
	DECLARE i INT DEFAULT 0;
	 
	WHILE i<99 DO
	      CALL insertar_proveedores_proc("1","0706674819001","Abasist Distribuidores de Cómputo","Julio Sanchez Gaona","Tlaxco 314 Col. La Paz - México","gerenciasd@abasist.com"," 01 (222) 409 79 35","");
	      SET i=i+1;
	END WHILE;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `proveedores_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `proveedores_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `proveedores_proc`(
	accion varchar(50),
	id int,
	ruc varchar(50),
	empr varchar(50),
	rep varchar(50),
	dir varchar(50),
	ema varchar(50),
	tel varchar(20),
	cel varchar(20),
	estado tinyint,
	cont int
    )
BEGIN
	
	if accion = "estado" then
	update proveedores set estado_proveedor = estado where id_proveedores = id;
	end if;
	
	if accion = "eliminar" then
	DELETE FROM proveedores WHERE id_proveedores = id;
	end if;
	
	if accion = "consulta_simple" then
	SELECT 
	id_proveedores AS id,
	ruc_proveedor AS ruc,
	razon_social_proveedor AS business_name,
	representante_proveedor AS representative,
	direccion_proveedor AS address,
	email_proveedor AS email,
	telefono_proveedor AS phone,
	celular_proveedor AS mobile,
	estado_proveedor AS state,
	tipo_contribuyente_proveedor AS taxpayer_type
	FROM proveedores;
	end if; 
	
	if accion = "consulta_id" then
	select 
	id_proveedores as id, ruc_proveedor as ruc,
	razon_social_proveedor as business_name, representante_proveedor as representative,
	direccion_proveedor as address, email_proveedor as email,
	telefono_proveedor as phone, celular_proveedor as mobile,
	estado_proveedor as state, tipo_contribuyente_proveedor as taxpayer_type
	from proveedores where id_proveedores = id;
	end if;
	
	if accion ="modificar" then
	UPDATE proveedores SET 
	tipo_contribuyente_proveedor = cont,
	ruc_proveedor = ruc,
	razon_social_proveedor = empr,
	representante_proveedor = rep,
	direccion_proveedor = dir,
	email_proveedor = ema,
	telefono_proveedor = tel,
	celular_proveedor = cel,
	estado_proveedor = estado
	WHERE id_proveedores = id;
	end if;
	
	if accion = "insertar" then
	INSERT INTO proveedores 
	(
	tipo_contribuyente_proveedor,ruc_proveedor,
	razon_social_proveedor,representante_proveedor,
	direccion_proveedor,email_proveedor,
	telefono_proveedor,celular_proveedor,
	estado_proveedor
	) VALUES 
	(
	cont,ruc,
	empr,rep,
	dir,ema,
	tel,cel,
	1
	);
	end if;
	 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipo_contribuyente_consulta_x_contenido_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipo_contribuyente_consulta_x_contenido_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipo_contribuyente_consulta_x_contenido_proc`(descr varchar(50))
BEGIN
	select id_t_contribuyente as id, descripcion_t_contribuyente as description from tipo_contribuyente 
	where descripcion_t_contribuyente = descr and estado_t_contribuyente = 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipo_contribuyente_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipo_contribuyente_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipo_contribuyente_proc`( 
accion varchar(50),
id int,
descripsion varchar(50),
estado tinyint
)
BEGIN
	if accion = "consulta" then
	select id_t_contribuyente as id, descripcion_t_contribuyente as description from tipo_contribuyente where estado_t_contribuyente = 1;
	end if;
	
	if accion = "consulta_desc" then
	SELECT descripcion_t_contribuyente AS description FROM tipo_contribuyente WHERE descripcion_t_contribuyente LIKE CONCAT("%",descripsion,"%");
	end if;
	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
