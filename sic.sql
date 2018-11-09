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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `proveedores` */

insert  into `proveedores`(`id_proveedores`,`ruc_proveedor`,`razon_social_proveedor`,`representante_proveedor`,`direccion_proveedor`,`email_proveedor`,`telefono_proveedor`,`celular_proveedor`,`estado_proveedor`,`tipo_contribuyente_proveedor`) values (1,'0706674819-001','Electronic','Javier Mendoza','Av. Arizaga entre 10','electronic@email.com','(02) 937-333','(593) 096-768-7882',1,2);

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

insert  into `tipo_contribuyente`(`id_t_contribuyente`,`descripcion_t_contribuyente`,`estado_t_contribuyente`) values (1,'Persona Juridica',1);
insert  into `tipo_contribuyente`(`id_t_contribuyente`,`descripcion_t_contribuyente`,`estado_t_contribuyente`) values (2,'Persona Regular',1);

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

/* Procedure structure for procedure `categorias_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `categorias_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `categorias_proc`(accion VARCHAR(50),
							      id INT,
							      descripcion VARCHAR(20),
							      estado TINYINT)
BEGIN
	IF accion = "consulta" THEN
	SELECT id_categoria AS id, 
	descripcion_categoria AS description
	 FROM categorias WHERE estado_categoria = 1;
	END IF;
	
	IF accion = "consulta_desc" THEN
	SELECT descripcion_categoria AS description
	 FROM categorias WHERE descripcion_categoria
	 LIKE CONCAT("%",descripcion,"%");
	END IF;
	IF accion = "estado" THEN
	UPDATE categorias SET estado_categoria = estado WHERE id_categoria = id;
	END IF;
	
	IF accion = "eliminar" THEN
	DELETE FROM categorias WHERE id_categoria = id;
	END IF;
	
	IF accion = "consulta_simple" THEN
	SELECT id_categoria AS id,
	descripcion_categoria AS description,
	estado_categoria AS state
	FROM categorias;
	END IF; 
	
	IF accion = "consulta_id" THEN
	SELECT id_categoria AS id,
	descripcion_categoria AS description,
	estado_categoria AS state
	FROM categorias WHERE id_categoria = id;
	end if;
	
	IF accion ="modificar" THEN
	UPDATE categorias SET 
	descripcion_categoria = descripcion,
	estado_categoria = estado
	WHERE id_categoria= id;
	END IF;
	
	IF accion = "insertar" THEN
	INSERT INTO categorias
	(
	descripcion_categoria,
	estado_categoria
	) VALUES 
	(
	descripcion,
	1
	);
	END IF;
	
    END */$$
DELIMITER ;

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

/* Procedure structure for procedure `marcas_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `marcas_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `marcas_proc`(accion VARCHAR(50),
				  id INT,
				  descripcion VARCHAR(20))
BEGIN
	IF accion = "consulta" THEN
	SELECT id_marca AS id, 
	descripcion_marca AS description
	 FROM marcas;
	END IF;
	
	IF accion = "consulta_desc" THEN
	SELECT descripcion_marca AS description
	 FROM marcas WHERE descripcion_marca
	 LIKE CONCAT("%",descripcion,"%");
	END IF;
	
	IF accion = "eliminar" THEN
	DELETE FROM marcas WHERE id_marca = id;
	END IF;
	
	IF accion = "consulta_simple" THEN
	SELECT id_marca AS id,
	descripcion_marca AS description
	FROM marcas;
	END IF; 
	
	IF accion = "consulta_id" THEN
	SELECT id_marca AS id,
	descripcion_marca AS description
	FROM marcas WHERE id_marca = id;
	END IF;
	
	IF accion ="modificar" THEN
	UPDATE marcas SET 
	descripcion_marca = descripcion
	WHERE id_marca= id;
	END IF;
	
	IF accion = "insertar" THEN
	INSERT INTO marcas
	(
	descripcion_marca
	) VALUES 
	(
	descripcion
	);
	END IF;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `presentaciones_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `presentaciones_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `presentaciones_proc`(accion VARCHAR(50),
				  id INT,
				  descripcion VARCHAR(20))
BEGIN
	IF accion = "consulta" THEN
	SELECT id_presentacion AS id, 
	descripcion_presentacion AS description
	 FROM presentaciones;
	END IF;
	
	IF accion = "consulta_desc" THEN
	SELECT descripcion_presentacion AS description
	 FROM presentaciones WHERE descripcion_presentacion
	 LIKE CONCAT("%",descripcion,"%");
	 END IF;
	
	IF accion = "eliminar" THEN
	DELETE FROM presentaciones WHERE id_presentacion = id;
	END IF;
	
	IF accion = "consulta_simple" THEN
	SELECT id_presentacion AS id,
	descripcion_presentacion AS description
	FROM presentaciones;
	END IF; 
	
	IF accion = "consulta_id" THEN
	SELECT id_presentacion AS id,
	descripcion_presentacion AS description
	FROM presentaciones WHERE id_presentacion = id;
	END IF;
	
	IF accion ="modificar" THEN
	UPDATE presentaciones SET 
	descripcion_presentacion = descripcion
	WHERE id_presentacion= id;
	END IF;
	
	IF accion = "insertar" THEN
	INSERT INTO presentaciones
	(
	descripcion_presentacion
	) VALUES 
	(
	descripcion
	);
	END IF;
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

/* Procedure structure for procedure `productos_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `productos_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `productos_proc`(  
    accion VARCHAR(50),
    id_prod INT,
    id_cate INT,
    id_pres INT,
    id_marc INT,
    desc_prod VARCHAR(20),
    min_prod INT,
    max_prod INT,
    stock INT)
BEGIN
	IF accion = "eliminar" THEN
	DELETE FROM productos WHERE id_producto = id_prod;
	END IF;
	
	IF accion = "consultas" THEN
	SELECT 
	id_producto AS id,
	id_categoria AS id_cate,
	id_presentacion AS id_pres,
	id_marca AS id_marc,
	descripcion_producto AS description,
	min_producto AS minProd,
	max_producto AS maxProd,
	stock_producto AS stock
	FROM productos;
	END IF; 
	
	IF accion = "consulta_id" THEN
	SELECT 
	id_producto AS id,id_categoria AS id_cate,
	id_presentacion AS id_pres,id_marca AS id_marc,
	descripcion_producto AS description,min_producto AS minProd,
	max_producto AS maxProd,stock_producto AS stock
	FROM productos WHERE id_producto = id_prod;
	END IF;
	
	IF accion ="modificar" THEN
	UPDATE productos SET 
	id_categoria = id_cate,
	id_presentacion = id_pres,
	id_marca = id_marc ,
	descripcion_producto = desc_prod ,
	min_producto = min_prod,
	max_producto = max_prod ,
	stock_producto = stock
	WHERE id_producto = id_prod;
	END IF;
	
	IF accion = "insertar" THEN
	INSERT INTO productos
	(
	id_categoria,id_presentacion,
	id_marca,descripcion_producto,
	min_producto,max_producto,
	stock_producto
	) VALUES 
	(
	 id_cate,id_pres,
	 id_marc,desc_prod,
	 min_prod,max_prod,
	 stock 
	);
	END IF;
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
