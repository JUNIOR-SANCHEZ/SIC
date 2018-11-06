/*
<<<<<<< HEAD
SQLyog Ultimate v11.11 (32 bit)
=======
SQLyog Ultimate v9.02 
>>>>>>> 4df654b2b7cce2d32717b8ed0d0b13f83fc254fb
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
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `categorias` */

=======
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `categorias` */

insert  into `categorias`(`id_categoria`,`descripcion_categoria`,`estado_categoria`) values (1,'Categoria_1',1),(2,'categoria_2',1),(3,'categoria_3',1);

>>>>>>> 4df654b2b7cce2d32717b8ed0d0b13f83fc254fb
/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_marca` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_marca`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `marcas` */

=======
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `marcas` */

insert  into `marcas`(`id_marca`,`descripcion_marca`) values (1,'marcas1'),(3,'marcas_3'),(4,'marcas4'),(5,'marcas5'),(6,'marca_6'),(7,'marca_7'),(8,'marcp_8'),(9,'marca_9'),(10,'marca_10'),(11,'marca_11'),(12,'marca_12'),(13,'marca_13'),(14,'marca_14'),(15,'marca_15');

>>>>>>> 4df654b2b7cce2d32717b8ed0d0b13f83fc254fb
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
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `presentaciones` */

=======
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `presentaciones` */

insert  into `presentaciones`(`id_presentacion`,`descripcion_presentacion`) values (1,'presentacion_1'),(3,'ma'),(4,'presentacion_4'),(5,'presentacion_5'),(6,'presentacion_6'),(7,'presentacion_7'),(8,'presentacion_8'),(9,'presentacion_9'),(10,'presentacion_10'),(11,'presentacion_11'),(12,'presentacion_12'),(13,'presentacion_13'),(14,'presentacion_14'),(15,'presentacion_15'),(16,'presentacion_16'),(17,'presentacion_18'),(18,'hgtgg'),(19,'uyhg'),(20,'jyhtgrf');

>>>>>>> 4df654b2b7cce2d32717b8ed0d0b13f83fc254fb
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
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `productos` */

=======
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `productos` */

insert  into `productos`(`id_producto`,`id_categoria`,`id_presentacion`,`id_marca`,`descripcion_producto`,`min_producto`,`max_producto`,`stock_producto`) values (1,2,3,5,'producto_natural_si',9,5,9),(2,2,3,5,'producto_natural',9,5,9),(3,2,3,5,'producto_natural',9,5,9),(4,2,3,5,'producto_natural',9,5,9),(5,2,3,5,'producto_natural',9,5,9),(6,2,3,5,'producto_natural',9,5,9),(7,2,3,5,'producto_natural',9,5,9),(8,2,3,5,'producto_natural',9,5,9),(9,2,3,5,'producto_natural',9,5,9),(10,2,3,5,'producto_natural',9,5,9),(11,2,3,5,'producto_natural',9,5,9),(12,2,3,5,'producto_natural',9,5,9),(13,2,3,5,'producto_natural',9,5,9),(14,2,3,5,'producto_natural',9,5,9),(15,2,3,5,'producto_natural',9,5,9),(16,2,3,5,'producto_natural',9,5,9),(17,2,3,5,'producto_natural',9,5,9),(18,2,17,1,'producto_20',1,44,1);

>>>>>>> 4df654b2b7cce2d32717b8ed0d0b13f83fc254fb
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
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `proveedores` */

insert  into `proveedores`(`id_proveedores`,`ruc_proveedor`,`razon_social_proveedor`,`representante_proveedor`,`direccion_proveedor`,`email_proveedor`,`telefono_proveedor`,`celular_proveedor`,`estado_proveedor`,`tipo_contribuyente_proveedor`) values (5,'085555555-001','narc','dvks','scjn','nmxz,','(444) 444-4444','(444) 444-4444',1,1),(6,'555555555-001','5dd','dddddddd','sssssssss','sdddddddddd','(111) 111-1111','(111) 111-111_',0,1),(7,'444444444-001','5wwwwwwwwwww','wwwwwwwwww','eeeeeeeeeeee','dddddddddddd`d','(444) 444-44__','(444) 444-4444',0,1),(8,'777777777-001','xxxxxx','x','xx','xxxxxxxxxx','(555) 555-555_','(555) 555-5555',1,1);
=======
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `proveedores` */

insert  into `proveedores`(`id_proveedores`,`ruc_proveedor`,`razon_social_proveedor`,`representante_proveedor`,`direccion_proveedor`,`email_proveedor`,`telefono_proveedor`,`celular_proveedor`,`estado_proveedor`,`tipo_contribuyente_proveedor`) values (5,'0705597706001','sis','JG','tendales','josed1096@hotmail.co','0939806183','0939806183',1,1),(6,'555555555-001','5dd','dddddddd','sssssssss','sdddddddddd','(111) 111-1111','(111) 111-111_',1,1),(7,'444444444-001','5wwwwwwwwwww','wwwwwwwwww','eeeeeeeeeeee','dddddddddddd`d','(444) 444-44__','(444) 444-4444',1,1),(8,'777777777-001','xxxxxx','x','xx','xxxxxxxxxx','(555) 555-555_','(555) 555-5555',1,1),(9,'0705597706001','sis','JG','tendales','josed1096@hotmail.co','0939806183','0939806183',1,1),(10,'0705597706001','ninguna','jose_gallardo','tendales','josed1096@hotmail.co','2929745098','0939806183',1,1),(11,'070559770-001','jose sa','Jose','tendales','josed1096@hotmail.co','(093) 980-6183','(098) 765-4323',1,1),(12,'456789876-001','hjkl','njkm,l','oiuyt','hujik@hotmail.com','(876) 543-2456','(987) 654-3456',1,2);
>>>>>>> 4df654b2b7cce2d32717b8ed0d0b13f83fc254fb

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

<<<<<<< HEAD
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
=======
/* Procedure structure for procedure `categorias_consulta_x_contenido_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `categorias_consulta_x_contenido_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `categorias_consulta_x_contenido_proc`(descr varchar(50))
BEGIN
	select id_categoria as id, descripcion_categoria as description from categorias 
	where descripcion_categoria = descr and estado_categoria = 1;
    END */$$
DELIMITER ;

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

/* Procedure structure for procedure `marcas_consulta_x_contenido_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `marcas_consulta_x_contenido_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `marcas_consulta_x_contenido_proc`(descr varchar(50))
BEGIN
	select id_marca as id,descripcion_marca as description from marcas
	where descripcion_marca = descr;
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

/* Procedure structure for procedure `presentaciones_consulta_x_contenido_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `presentaciones_consulta_x_contenido_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `presentaciones_consulta_x_contenido_proc`(descr varchar(50))
BEGIN
	select id_presentacion as id,descripcion_presentacion as description from presentaciones
	where descripcion_presentacion = descr;
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
	
	IF accion = "consulta_simple" THEN
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
	
>>>>>>> 4df654b2b7cce2d32717b8ed0d0b13f83fc254fb
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

<<<<<<< HEAD
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

=======
>>>>>>> 4df654b2b7cce2d32717b8ed0d0b13f83fc254fb
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
