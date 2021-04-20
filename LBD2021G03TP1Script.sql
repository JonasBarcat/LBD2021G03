
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- INFO lbd202103
-- -----------------------------------------------------
-- Año: 2021
-- Grupo: 03
-- Integrantes: Barcat Jonas Ezequiel, Coca Luis Rogelio
-- Tema: Sistema de Gestion de Tienda de Ropa
-- Nombre del Esquema: LBD202103
-- Plataforma (SO + Versión): Windows 10
-- Motor y Versión: MySQL Server 8.0.24 (Community Edition)
-- GitHub Repositorio: LBD2021G03
-- GitHub Usuario: JonasBarcat , LuisCoca97

-- -----------------------------------------------------
-- Schema lbd202103
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `lbd202103` ;

-- -----------------------------------------------------
-- Schema lbd202103
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lbd202103` DEFAULT CHARACTER SET utf8 ;
USE `lbd202103` ;

-- -----------------------------------------------------
-- Table `usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usuarios` ;

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuarios` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(20) NULL,
  `contraseña` VARCHAR(32) NULL,
  `tipoDoc` CHAR(3) NOT NULL,
  `documento` CHAR(8) NOT NULL,
  `email` VARCHAR(120) NOT NULL,
  `nombre` CHAR(20) NOT NULL,
  `apellido` CHAR(20) NULL,
  `fechaNacimiento` DATE NULL,
  `direccion` VARCHAR(120) NOT NULL,
  `telefono` CHAR(20) NOT NULL,
  PRIMARY KEY (`idusuarios`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idusuarios_UNIQUE` ON `usuarios` (`idusuarios` ASC) VISIBLE;
CREATE UNIQUE INDEX `documento_UNIQUE` ON `usuarios` (`documento` ASC) VISIBLE;
CREATE INDEX `AK_email` ON `usuarios` (`email` ASC) VISIBLE;
CREATE INDEX `AK_documentotipodoc` ON `usuarios` (`tipoDoc` ASC, `documento` ASC) VISIBLE;


INSERT INTO `lbd202103`.`usuarios` (`usuario`, `contraseña`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('coolmaster', '2585', 'DNI', '39854745', 'usuario2@gmail.com', 'Juan', 'Martel', '1996-02-14', 'Alberdi 785', '3815784512');
INSERT INTO `lbd202103`.`usuarios` (`usuario`, `contraseña`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('usuario3', '7845', 'DNI', '40457854', 'usuario3@gmail.com', 'Jack', 'Martin', '1997-05.14', 'Alberdi 501', '3816847562');
INSERT INTO `lbd202103`.`usuarios` (`usuario`, `contraseña`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('shadowmartin9', '458463', 'DNI', '38745845', 'usuario4@gmail.com', 'Pablo', 'Molina', '1994-05-25', 'Alberdi 890', '3815234574');
INSERT INTO `lbd202103`.`usuarios` (`usuario`, `contraseña`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('user98', 'holamundo', 'DNI', '39784521', 'usuario5@gmail.com', 'Pablo', 'Linares', '1996-01-25', 'La Rioja 73', '3815478565');
INSERT INTO `lbd202103`.`usuarios` (`usuario`, `contraseña`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('empleado4', 'ricardotuben', 'DNI', '42577455', 'usuario6@gmail.com', 'Ruben', 'Caceress', '2002-10-14', 'San Martin 543', '3815468456');
INSERT INTO `lbd202103`.`usuarios` (`usuario`, `contraseña`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('empleado5', 'darkfenix', 'DNI', '40965845', 'usuario7@gmail.com', 'Carlos', 'Lisos', '1997-05-25', '24 de Septiembre 784', '3815658588');
INSERT INTO `lbd202103`.`usuarios` (`usuario`, `contraseña`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('usuario8', '123456', 'DNI', '39845784', 'usuario8@gmail.com', 'Robert', 'Sales', '1996-05-15', 'Congreso 89', '3815485689');
INSERT INTO `lbd202103`.`usuarios` (`usuario`, `contraseña`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('usuario9', 'juanrobert', 'DNI', '40458784', 'usuario9@gmail.com', 'Climaco', 'Ruben', '1997-02-25', 'Las Heras 87', '3815548568');
INSERT INTO `lbd202103`.`usuarios` (`usuario`, `tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `direccion`, `telefono`) VALUES ('', 'DNI', '39874565', 'usuario10@gmail.com', 'Yisus', 'Sas', 'General Paz 98', '3815485965');
INSERT INTO `lbd202103`.`usuarios` (`tipoDoc`, `documento`, `email`, `nombre`, `direccion`, `telefono`) VALUES ('DNI', '40548784', 'usuario11@gmail.com', 'Carlos', 'Las Piedras 1025', '3815758588');
INSERT INTO `lbd202103`.`usuarios` (`tipoDoc`, `documento`, `email`, `nombre`, `direccion`, `telefono`) VALUES ('DNI', '39845787', 'usuario12@gmail.com', 'Jonas', 'Las Piedras 1054', '3874254888');
INSERT INTO `lbd202103`.`usuarios` (`tipoDoc`, `documento`, `email`, `nombre`, `direccion`, `telefono`) VALUES ('DNI', '40414688', 'usuario13@gmail.com', 'Luis', 'General Paz 1063', '3886864667');
INSERT INTO `lbd202103`.`usuarios` (`tipoDoc`, `documento`, `email`, `nombre`, `direccion`, `telefono`) VALUES ('DNI', '39845795', 'usuario14@gmail.com', 'Jose', 'General Paz 1054', '3816588458');
INSERT INTO `lbd202103`.`usuarios` (`tipoDoc`, `documento`, `email`, `nombre`, `direccion`, `telefono`) VALUES ('DNI', '40357845', 'usuario15@gmail.com', 'Rodrigo', 'Las Piedras 154', '3815457888');
INSERT INTO `lbd202103`.`usuarios` (`tipoDoc`, `documento`, `email`, `nombre`, `apellido`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('DNI', '30547785', 'usuario16@gmail.com', 'Gustavo', 'Juarez', '1965-05-14', '9 de Julio 432', '3815485789');
INSERT INTO `lbd202103`.`usuarios` (`tipoDoc`, `documento`, `email`, `nombre`, `direccion`, `telefono`) VALUES ('DNI', '40356975', 'usuario17@gmail.com', 'Rodrigo', 'Congreso 787', '3815488589');
INSERT INTO `lbd202103`.`usuarios` (`tipoDoc`, `documento`, `email`, `nombre`, `fechaNacimiento`, `direccion`, `telefono`) VALUES ('DNI', '39548785', 'usuario18@gmail.com', 'Carlos', '1997-01-01', '9 de Julio 78', '3815475974');

SELECT * FROM `usuarios`;

-- -----------------------------------------------------
-- Table `empleados`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `empleados` ;

CREATE TABLE IF NOT EXISTS `empleados` (
  `estadoEmpleado` CHAR(1) NOT NULL,
  `cargo` VARCHAR(30) NOT NULL,
  `sueldo` FLOAT(8,0) NOT NULL,
  `fechaInicio` DATE NOT NULL,
  `usuarios_idusuarios` INT NOT NULL,
  PRIMARY KEY (`usuarios_idusuarios`),
  CONSTRAINT `fk_empleados_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



INSERT INTO `lbd202103`.`empleados` (`estadoEmpleado`, `cargo`, `sueldo`, `fechaInicio`, `usuarios_idusuarios`) VALUES ('A', 'encargado', '21000', '2021-01-01', '1');
INSERT INTO `lbd202103`.`empleados` (`estadoEmpleado`, `cargo`, `sueldo`, `fechaInicio`, `usuarios_idusuarios`) VALUES ('I', 'cajero', '14000', '2020-12-12', '2');
INSERT INTO `lbd202103`.`empleados` (`estadoEmpleado`, `cargo`, `sueldo`, `fechaInicio`, `usuarios_idusuarios`) VALUES ('I', 'cajero', '9000', '2012-01-02', '3');
INSERT INTO `lbd202103`.`empleados` (`estadoEmpleado`, `cargo`, `sueldo`, `fechaInicio`, `usuarios_idusuarios`) VALUES ('A', 'dependiente', '15000', '2021-01-02', '4');
INSERT INTO `lbd202103`.`empleados` (`estadoEmpleado`, `cargo`, `sueldo`, `fechaInicio`, `usuarios_idusuarios`) VALUES ('A', 'repositor', '15000', '2021-01-02', '5');
INSERT INTO `lbd202103`.`empleados` (`estadoEmpleado`, `cargo`, `sueldo`, `fechaInicio`, `usuarios_idusuarios`) VALUES ('I', 'repositor', '14500', '2020-06-01', '6');
INSERT INTO `lbd202103`.`empleados` (`estadoEmpleado`, `cargo`, `sueldo`, `fechaInicio`, `usuarios_idusuarios`) VALUES ('A', 'dependiente', '14000', '2019-02-01', '7');
INSERT INTO `lbd202103`.`empleados` (`estadoEmpleado`, `cargo`, `sueldo`, `fechaInicio`, `usuarios_idusuarios`) VALUES ('I', 'repostiro', '15000', '2020-06-10', '8');

SELECT * FROM `empleados`;


-- -----------------------------------------------------
-- Table `clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `clientes` ;

CREATE TABLE IF NOT EXISTS `clientes` (
  `usuarios_idusuarios` INT NOT NULL,
  `estadoCliente` CHAR(1) NULL,
  PRIMARY KEY (`usuarios_idusuarios`),
  CONSTRAINT `fk_clientes_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('9', 'A');
INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('10', 'A');
INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('11', 'I');
INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('12', 'I');
INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('13', 'I');
INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('14', 'A');
INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('15', 'A');
INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('16', 'A');
INSERT INTO `lbd202103`.`clientes` (`usuarios_idusuarios`, `estadoCliente`) VALUES ('17', 'I');


SELECT * FROM `clientes`;




-- -----------------------------------------------------
-- Table `descuentos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `descuentos` ;

CREATE TABLE IF NOT EXISTS `descuentos` (
  `iddescuentos` INT NOT NULL AUTO_INCREMENT,
  `descuento` VARCHAR(60) NOT NULL,
  `estado` CHAR(1) NOT NULL,
  `montoParaAplicacion` DECIMAL(10,2) NULL,
  `observacion` VARCHAR(120) NULL,
  `porcentajeDescuento` TINYINT NOT NULL,
  PRIMARY KEY (`iddescuentos`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `iddescuentos_UNIQUE` ON `descuentos` (`iddescuentos` ASC) VISIBLE;
CREATE INDEX `AK_descuento` ON `descuentos` (`descuento` ASC) VISIBLE;

INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('1', 'Navidad', 'A', '2000.00', 'Descuento navideño', '15');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('2', 'Pascua', 'A', '1500.00', 'Descuento pascuas', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('3', 'AnoNuevo', 'A', '2000.00', 'Descuen de ano nuevo', '15');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('4', 'Liquidacion1', 'A', '1000.00', 'Por liquidacion 1', '15');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('5', 'Liquidacion2', 'I', '500.00', 'Por liquidacion 2', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('6', 'Verano2021', 'A', '1000.00', 'Descuento verano', '15');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('7', 'Invierno2021', 'A', '1500.00', 'Descuento invierno', '15');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('8', 'Descuento1', 'I', '500.00', 'Descuento1', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('9', 'Descuento2', 'I', '500.00', 'Descuento2', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('10', 'Descuento3', 'I', '500.00', 'Descuento3', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('11', 'Descuento4', 'I', '500.00', 'Descuento4', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('12', 'Descuento5', 'I', '500.00', 'Descuento5', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('13', 'Descuento6', 'I', '500.00', 'Descuento6', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('14', 'Descuento7', 'I', '500.00', 'Descuento7', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('15', 'Descuento8', 'I', '500.00', 'Descuento8', '10');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('16', 'Descuento9', 'I', '500.00', 'Descuento9', '5');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('17', 'Descuento10', 'I', '500.00', 'Descuento10', '5');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('18', 'Descuento11', 'I', '500.00', 'Descuento11', '5');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('19', 'Descuento12', 'I', '500.00', 'Descuento12', '5');
INSERT INTO `lbd202103`.`descuentos` (`iddescuentos`, `descuento`, `estado`, `montoParaAplicacion`, `observacion`, `porcentajeDescuento`) VALUES ('20', 'Descuento13', 'I', '500.00', 'Descuento13', '5');

SELECT * FROM `descuentos`;

-- -----------------------------------------------------
-- Table `ventas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ventas` ;

CREATE TABLE IF NOT EXISTS `ventas` (
  `idventas` INT NOT NULL,
  `estadoVenta` CHAR(2) NOT NULL,
  `fechaVenta` DATETIME NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `clientes_usuarios_idusuarios` INT NOT NULL,
  `empleados_usuarios_idusuarios` INT NOT NULL,
  `descuentos_iddescuentos` INT  NULL,
  PRIMARY KEY (`idventas`, `clientes_usuarios_idusuarios`),
  CONSTRAINT `fk_ventas_clientes1`
    FOREIGN KEY (`clientes_usuarios_idusuarios`)
    REFERENCES `clientes` (`usuarios_idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_empleados1`
    FOREIGN KEY (`empleados_usuarios_idusuarios`)
    REFERENCES `empleados` (`usuarios_idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_descuentos1`
    FOREIGN KEY (`descuentos_iddescuentos`)
    REFERENCES `descuentos` (`iddescuentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_ventas_clientes1_idx` ON `ventas` (`clientes_usuarios_idusuarios` ASC) VISIBLE;

CREATE INDEX `fk_ventas_empleados1_idx` ON `ventas` (`empleados_usuarios_idusuarios` ASC) VISIBLE;

CREATE INDEX `fk_ventas_descuentos1_idx` ON `ventas` (`descuentos_iddescuentos` ASC) VISIBLE;

CREATE UNIQUE INDEX `idventas_UNIQUE` ON `ventas` (`idventas` ASC) VISIBLE;




INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('1', 'F', '2020-01-17', '2020-01-17', '9', '4');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`, `descuentos_iddescuentos`) VALUES ('2', 'F', '2020-01-17', '2020-01-17', '10', '4', '1');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`, `descuentos_iddescuentos`) VALUES ('3', 'F', '2020-01-17', '2020-01-17', '14', '4', '1');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('4', 'F', '2020-01-18', '2020-01-18', '15', '7');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`, `descuentos_iddescuentos`) VALUES ('5', 'F', '2020-01-18', '2020-01-18', '9', '7', '1');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('6', 'F', '2020-01-18', '2020-01-18', '10', '7');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`, `descuentos_iddescuentos`) VALUES ('7', 'F', '2020-01-18', '2020-01-18', '16', '4', '1');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('8', 'F', '2020-01-18', '2020-01-18', '16', '7');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('9', 'F', '2020-01-18', '2020-01-18', '9', '4');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`, `descuentos_iddescuentos`) VALUES ('10', 'F', '2020-01-19', '2020-01-19', '9', '4', '1');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`, `descuentos_iddescuentos`) VALUES ('11', 'F', '2020-01-19', '2020-01-19', '15', '7', '4');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('12', 'F', '2020-01-19', '2020-01-19', '10', '7');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('13', 'F', '2020-01-19', '2020-01-19', '14', '7');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('14', 'F', '2020-01-19', '2020-01-19', '9', '4');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`, `descuentos_iddescuentos`) VALUES ('15', 'F', '2020-01-20', '2020-01-20', '10', '4', '4');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('16', 'F', '2020-01-20', '2020-01-20', '16', '7');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('17', 'F', '2020-01-20', '2020-01-20', '14', '4');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('18', 'F', '2020-01-20', '2020-01-20', '10', '7');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`, `descuentos_iddescuentos`) VALUES ('19', 'F', '2020-01-20', '2020-01-20', '9', '4', '1');
INSERT INTO `lbd202103`.`ventas` (`idventas`, `estadoVenta`, `fechaVenta`, `fechaCreacion`, `clientes_usuarios_idusuarios`, `empleados_usuarios_idusuarios`) VALUES ('20', 'F', '2020-01-20', '2020-01-20', '15', '7');

SELECT * FROM `ventas`;












-- -----------------------------------------------------
-- Table `rubros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rubros` ;

CREATE TABLE IF NOT EXISTS `rubros` (
  `idrubros` SMALLINT NOT NULL AUTO_INCREMENT,     
  `estado` CHAR(1) NULL,
  `rubro` VARCHAR(60) NULL,
  PRIMARY KEY (`idrubros`))
ENGINE = InnoDB;

CREATE INDEX `AK_rubro` ON `rubros` (`rubro` ASC) VISIBLE;


INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('1', 'A', 'Deportivo');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('2', 'A', 'Formal');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('3', 'A', 'Casual');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('4', 'A', 'Clasico');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('5', 'B', 'rubro1');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('6', 'B', 'rubro2');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('7', 'B', 'rubro3');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('8', 'B', 'rubro4');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('9', 'B', 'rubro5');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('10', 'B', 'rubro6');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('11', 'B', 'rubro7');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('12', 'B', 'rubro8');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('13', 'B', 'rubro9');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('14', 'B', 'rubro10');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('15', 'B', 'rubro11');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('16', 'B', 'rubro12');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('17', 'B', 'rubro13');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('18', 'B', 'rubro14');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('19', 'B', 'rubro15');
INSERT INTO `lbd202103`.`rubros` (`idrubros`, `estado`, `rubro`) VALUES ('20', 'B', 'rubro20');

SELECT * FROM `rubros`;










-- -----------------------------------------------------
-- Table `subrubro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `subrubro` ;

CREATE TABLE IF NOT EXISTS `subrubro` (
  `idsubrubro` INT NOT NULL AUTO_INCREMENT,
  `estado` CHAR(1) NOT NULL,
  `subrubro` VARCHAR(60) NOT NULL,
  `rubros_idrubros` SMALLINT NOT NULL,
  PRIMARY KEY (`idsubrubro`, `rubros_idrubros`),
  CONSTRAINT `fk_subrubro_rubros1`
    FOREIGN KEY (`rubros_idrubros`)
    REFERENCES `rubros` (`idrubros`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_subrubro_rubros1_idx` ON `subrubro` (`rubros_idrubros` ASC) INVISIBLE;
CREATE INDEX `AK_idrubro_subrubro` ON `subrubro` (`rubros_idrubros` ASC, `subrubro` ASC) VISIBLE;
CREATE UNIQUE INDEX `idsubrubro_UNIQUE` ON `subrubro` (`idsubrubro` ASC) VISIBLE;


INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('1','A', 'DeportivoInvierno', '1');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('2','A', 'DeportivoVerano', '1');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('3','A', 'FormalInvierno', '2');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('4','A', 'FormalVerano', '2');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('5','A', 'FormalVariado', '2');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('6','A', 'CasualInvierno', '3');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('7','A', 'CasualVerano', '3');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('8','A', 'CasualVariado', '3');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('9','A', 'ClasicoVerano', '4');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('10','A', 'ClasicoInvierno', '4');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('11','A', 'ClasicoVariado', '4');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('12','B', 'Subrubro1', '5');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('13','B', 'Subrubro2', '6');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('14','B', 'Subrubro3', '7');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('15','B', 'Subrubro4', '8');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('16','B', 'Subrubro5', '9');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('17','B', 'Subrubro6', '10');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('18','B', 'Subrubro7', '11');
INSERT INTO `lbd202103`.`subrubro` (`idsubrubro`,`estado`, `subrubro`, `rubros_idrubros`) VALUES ('19','B', 'Subrubro8', '12');

SELECT * FROM `subrubro`;



















-- -----------------------------------------------------
-- Table `articulos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `articulos` ;

CREATE TABLE IF NOT EXISTS `articulos` (
  `idarticulos` INT NOT NULL AUTO_INCREMENT,
  `articulo` VARCHAR(60) NOT NULL,
  `color` VARCHAR(30) NULL,
  `genero` CHAR(1) NOT NULL,
  `marca` VARCHAR(30) DEFAULT 'No_clothing_brand',
  `material` VARCHAR(60) NOT NULL,
  `talle` CHAR(2) NOT NULL,
  `temporada` CHAR(1) NOT NULL,
  `subrubro_idsubrubro` INT NOT NULL,
  `subrubro_rubros_idrubros` SMALLINT NOT NULL,
  PRIMARY KEY (`idarticulos`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`),
  CONSTRAINT `fk_articulos_subrubro1`
    FOREIGN KEY (`subrubro_idsubrubro` , `subrubro_rubros_idrubros`)
    REFERENCES `subrubro` (`idsubrubro` , `rubros_idrubros`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_articulos_subrubro1_idx` ON `articulos` (`subrubro_idsubrubro` ASC, `subrubro_rubros_idrubros` ASC) VISIBLE;
CREATE UNIQUE INDEX `idarticulos_UNIQUE` ON `articulos` (`idarticulos` ASC) VISIBLE;
CREATE INDEX `AK_Articulo` ON `articulos` (`articulo` ASC) VISIBLE;

INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('1', 'camisa', 'negro', 'M', 'hollister', 'algodon', 'S', 'V', '2', '1');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('2', 'camisa', 'negro', 'M', 'hollister', 'algodon', 'M', 'V', '2', '1');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('3', 'camisa', 'negro', 'M', 'hollister', 'algodon', 'L', 'V', '2', '1');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('4', 'remera', 'blanco', 'M', 'hollister', 'algodon', 'S', 'V', '2', '1');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('5', 'remera', 'blanco', 'M', 'algodon', 'M', 'V', '2', '1');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('6', 'remera', 'blanco', 'M', 'hollister', 'algodon', 'L', 'V', '2', '1');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('7', 'chaqueta', 'marron', 'F', 'levis', 'cuero', 'S', 'I', '6', '3');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('8', 'chaqueta', 'rojo', 'F', 'levis', 'cuero', 'S', 'I', '6', '3');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('9', 'chaqueta', 'gris', 'F', 'levis', 'cuero', 'M', 'I', '6', '3');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('10', 'sueter', 'gris', 'M', 'fila', 'poliester', 'S', 'I', '10', '4');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('11', 'sueter', 'blanco', 'M', 'poliester', 'M', 'I', '10', '4');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('12', 'sueter', 'negro', 'M', 'fila', 'poliester', 'L', 'I', '10', '4');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('13', 'sueter', 'rosa', 'F', 'nike', 'algodon', 'S', 'I', '10', '4');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('14', 'sueter', 'rojo', 'F', 'nike', 'algodon', 'S', 'I', '10', '4');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('15', 'jean', 'azul', 'M', 'taverniti', 'algodon', 'S', 'I', '8', '3');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('16', 'jean', 'negro', 'M', 'taverniti', 'algodon', 'S', 'I', '8', '3');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('17', 'jean', 'azul', 'M', 'taverniti', 'algodon', 'M', 'V', '8', '3');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('18', 'jean', 'negro', 'F', 'taverniti', 'algodon', 'S', 'V', '8', '3');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('19', 'jean', 'gris', 'F', 'adidas', 'algodon', 'S', 'V', '8', '3');
INSERT INTO `lbd202103`.`articulos` (`idarticulos`, `articulo`, `color`, `genero`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`) VALUES ('20', 'gorra', 'negro', 'M', 'algodon', 'M', 'V', '7', '3');

SELECT * FROM `articulos`;

-- -----------------------------------------------------
-- Table `lineasventa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lineasventa` ;

CREATE TABLE IF NOT EXISTS `lineasventa` (
  `ventas_idventas` INT NOT NULL,
  `ventas_clientes_usuarios_idusuarios` INT NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  `cantidad` INT NOT NULL,
  `articulos_idarticulos` INT NOT NULL,
  `articulos_subrubro_idsubrubro` INT NOT NULL,
  `articulos_subrubro_rubros_idrubros` SMALLINT NOT NULL,
  PRIMARY KEY (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`),
  CONSTRAINT `fk_lineasventa_ventas1`
    FOREIGN KEY (`ventas_idventas` , `ventas_clientes_usuarios_idusuarios`)
    REFERENCES `ventas` (`idventas` , `clientes_usuarios_idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lineasventa_articulos1`
    FOREIGN KEY (`articulos_idarticulos` , `articulos_subrubro_idsubrubro` , `articulos_subrubro_rubros_idrubros`)
    REFERENCES `articulos` (`idarticulos` , `subrubro_idsubrubro` , `subrubro_rubros_idrubros`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_lineasventa_articulos1_idx` ON `lineasventa` (`articulos_idarticulos` ASC, `articulos_subrubro_idsubrubro` ASC, `articulos_subrubro_rubros_idrubros` ASC) VISIBLE;

INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('1', '9', '3000.00', '1', '1', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('2', '10', '3000.00', '1', '1', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('3', '14', '15000.00', '4', '3', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('4', '15', '8500.00', '3', '13', '10', '4');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('5', '9', '1500.00', '1', '5', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('6', '10', '2500.00', '1', '2', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('7', '16', '6000.00', '1', '7', '6', '3');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('8', '16', '14000.00', '3', '9', '6', '3');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('9', '9', '12500.00', '4', '10', '10', '4');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('10', '9', '6500.00', '2', '14', '10', '4');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('11', '15', '4500.00', '1', '15', '10', '4');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('12', '10', '13500.00', '3', '15', '10', '4');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('13', '14', '7500.00', '2', '9', '6', '3');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('14', '9', '1200.00', '1', '6', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('15', '10', '1000.00', '1', '4', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('16', '16', '980.00', '1', '20', '7', '3');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('17', '14', '6750.00', '2', '11', '10', '4');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('18', '10', '1500.00', '1', '5', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('19', '9', '1500.00', '1', '5', '2', '1');
INSERT INTO `lbd202103`.`lineasventa` (`ventas_idventas`, `ventas_clientes_usuarios_idusuarios`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('20', '15', '1500.00', '1', '5', '2', '1');

SELECT * FROM `lineasventa`;
-- -----------------------------------------------------
-- Table `proveedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proveedores` ;

CREATE TABLE IF NOT EXISTS `proveedores` (
    `idproveedores` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `cuit` CHAR(11) NOT NULL,
  `direccion` VARCHAR(120) NOT NULL,
  `email` VARCHAR(120) NOT NULL,
  `estado` CHAR(1) NOT NULL,
  `telefono` CHAR(20) NOT NULL,
  `observaciones` VARCHAR(256) NULL,
  PRIMARY KEY (`idproveedores`))
ENGINE = InnoDB;

CREATE INDEX `AK_email` ON `proveedores` (`email` ASC) INVISIBLE;
CREATE INDEX `AK_cuit` ON `proveedores` (`cuit` ASC) VISIBLE;

INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Ricado', '20356547548', 'Alberdi 78', 'proveedor1@gmail.com', 'A', '3815845236');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Martin Ferrero', '20358785187', 'La Rioja 78', 'proveedor2@gmail.com', 'I', '3815448297');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Julio Ferreyra', '20348974587', 'San Martin 784', 'proveedor3@gmail.com', 'A', '3815185486');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Carlos', '20195548554', 'Alberdi 74', 'proveedor4@gmail.com', 'A', '3814558459');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Roberto Aguas', '20365874554', 'Alberdi 889', 'proveedor5@gmail.com', 'I', '3815458484');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Julio ', '20362854884', 'La Rioja 54', 'proveedor6@gmail.com', 'I', '3815458745');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`, `observaciones`) VALUES ('Martin Robert', '20405615785', 'General Paz 1096', 'proveedor7@gmail.com', 'A', '3815458569', 'Ropa Deportiva');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`, `observaciones`) VALUES ('Monica', '20329289548', '9 de Julio 96', 'proveedor8@gmail.com', 'A', '3812549458', 'Vestidos de Tela');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`, `observaciones`) VALUES ('Licha Lope', '20325586478', 'Cordoba 745', 'proveedor9@gmail.con', 'I', '3815485895', 'Ropa Deportiva y botines');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Guada', '20322151223', 'Cordoba 899', 'proveedor10@gmail.com', 'A', '3810464856');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Candela', '20315251847', 'Cordoba 784', 'proveedor11@gmail.com', 'A', '3815469249');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Marcos DIaz', '20316478568', 'San Juan 78', 'proveedor12@gmail.com', 'A', '3815452489');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Juan Diaz', '20316182489', 'San Juan 799', 'proveedor13@gmail.com', 'A', '3817454264');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`, `observaciones`) VALUES ('Yisus Diaz', '20155152156', 'Las Heras 78', 'proveedor14@gmail.com', 'I', '3815215255', 'Ropa de Invierno');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Leo Compera', '20320526256', 'Congreso 89', 'proveedor15@gmail.com', 'I', '3815425666');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Jonnhy Diaz', '20315165181', 'Congreso 250', 'proveedor16@gmail.com', 'I', '3813421515');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`, `observaciones`) VALUES ('Benjamin Boeri', '20315628556', 'Congreso 810', 'proveedor17@gmail.com', 'I', '3816452566', 'Vende ropa usada y rota no comprarle');
INSERT INTO `lbd202103`.`proveedores` (`nombre`, `cuit`, `direccion`, `email`, `estado`, `telefono`) VALUES ('Franco Soldano', '20324828518', '24 de Septiembre 784', 'proveedor18@gmail.com', 'A', '3815518181');

SELECT * FROM `proveedores`;


-- -----------------------------------------------------
-- Table `compras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `compras` ;

CREATE TABLE IF NOT EXISTS `compras` (
  `idcompras` INT NOT NULL AUTO_INCREMENT,
  `estadoCompra` CHAR(1) NOT NULL,
  `fechaCompra` DATETIME NOT NULL,
  `fechaEntrega` DATETIME NULL,
  `nroFactura` INT NOT NULL,
  `proveedores_idproveedores` INT NOT NULL,
  `empleados_usuarios_idusuarios` INT NOT NULL,
  PRIMARY KEY (`idcompras`, `proveedores_idproveedores`),
  CONSTRAINT `fk_compras_proveedores1`
    FOREIGN KEY (`proveedores_idproveedores`)
    REFERENCES `proveedores` (`idproveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_compras_empleados1`
    FOREIGN KEY (`empleados_usuarios_idusuarios`)
    REFERENCES `empleados` (`usuarios_idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_compras_proveedores1_idx` ON `compras` (`proveedores_idproveedores` ASC) VISIBLE;

CREATE INDEX `fk_compras_empleados1_idx` ON `compras` (`empleados_usuarios_idusuarios` ASC) VISIBLE;

INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('A', '2021-04-17', '153151', '1', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('R', '2021-04-10', '2021-04-20', '156156', '2', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2021-01-10', '2021-01-25', '161615', '3', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('A', '2021-04-01', '151884', '4', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('A', '2021-04-15', '215126', '5', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('A', '2021-04-17', '111561', '6', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('R', '2021-03-25', '2021-04-17', '151166', '7', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('R', '2021-03-30', '2021-04-17', '151516', '8', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2021-02-02', '2021-02-24', '115616', '9', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2020-02-02', '2021-03-01', '131553', '10', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2021-01-09', '2021-01-19', '1531515', '11', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2021-02-02', '2021-02-20', '1515133', '12', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2020-09-18', '2020-09-28', '131313', '13', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2020-10-02', '2020-10-20', '153155', '14', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2020-12-12', '2020-12-25', '151313', '15', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2020-10-10', '2020-10-25', '158133', '16', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2020-11-01', '2020-11-15', '181513', '17', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2020-12-01', '2020-12-15', '185613', '18', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2020-05-03', '2020-05-20', '186156', '1', '1');
INSERT INTO `lbd202103`.`compras` (`estadoCompra`, `fechaCompra`, `fechaEntrega`, `nroFactura`, `proveedores_idproveedores`, `empleados_usuarios_idusuarios`) VALUES ('F', '2019-02-10', '2019-02-25', '181616', '1', '1');

SELECT * FROM `compras`;

-- -----------------------------------------------------
-- Table `lineascompra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lineascompra` ;

CREATE TABLE IF NOT EXISTS `lineascompra` (
  `compras_idcompras` INT NOT NULL,
  `compras_proveedores_idproveedores` INT NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  `cantidad` INT NOT NULL,
  `articulos_idarticulos` INT NOT NULL,
  `articulos_subrubro_idsubrubro` INT NOT NULL,
  `articulos_subrubro_rubros_idrubros` SMALLINT NOT NULL,
  PRIMARY KEY (`compras_idcompras`, `compras_proveedores_idproveedores`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`),
  CONSTRAINT `fk_lineascompra_compras1`
    FOREIGN KEY (`compras_idcompras` , `compras_proveedores_idproveedores`)
    REFERENCES `compras` (`idcompras` , `proveedores_idproveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lineascompra_articulos1`
    FOREIGN KEY (`articulos_idarticulos` , `articulos_subrubro_idsubrubro` , `articulos_subrubro_rubros_idrubros`)
    REFERENCES `articulos` (`idarticulos` , `subrubro_idsubrubro` , `subrubro_rubros_idrubros`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT control_precio CHECK (precio>0 AND cantidad>0))
ENGINE = InnoDB;

CREATE INDEX `fk_lineascompra_articulos1_idx` ON `lineascompra` (`articulos_idarticulos` ASC, `articulos_subrubro_idsubrubro` ASC, `articulos_subrubro_rubros_idrubros` ASC) VISIBLE;

INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('1', '1', '12000.00', '10', '1', '2', '1');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('2', '1', '24000.00', '12', '2', '2', '1');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('3', '1', '5000.00', '2', '3', '2', '1');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('4', '1', '10000.00', '9', '4', '2', '1');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('5', '1', '7500.00', '4', '5', '2', '1');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('6', '1', '20000.00', '7', '6', '2', '1');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('7', '1', '4000.00', '3', '7', '6', '3');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('8', '1', '14000.00', '20', '8', '6', '3');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('9', '1', '18000.00', '14', '9', '6', '3');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('10', '1', '7500.00', '7', '10', '10', '4');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('11', '1', '3000.00', '3', '11', '10', '4');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('12', '1', '14000.00', '9', '12', '10', '4');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('13', '1', '17000.00', '5', '13', '10', '4');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('14', '1', '19000.00', '10', '14', '10', '4');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('15', '1', '14500.00', '20', '15', '8', '3');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('16', '1', '16000.00', '13', '16', '8', '3');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('17', '1', '17000.00', '18', '17', '8', '3');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('18', '1', '20000.00', '22', '18', '8', '3');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('19', '1', '22000.00', '24', '19', '8', '3');
INSERT INTO `lbd202103`.`lineascompra` (`compras_idcompras`, `compras_proveedores_idproveedores`, `precio`, `cantidad`, `articulos_idarticulos`, `articulos_subrubro_idsubrubro`, `articulos_subrubro_rubros_idrubros`) VALUES ('20', '1', '24000.00', '28', '20', '7', '3');

SELECT * FROM `lineascompra`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
