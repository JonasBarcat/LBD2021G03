
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


USE lbd202103;

# 1. Dado un cliente, listar todas sus compras dadas de alta entre un rango de fechas;

SELECT clientes_usuarios_idusuarios, idventas, estadoVenta, fechaVenta FROM ventas
WHERE clientes_usuarios_idusuarios=9 AND estadoVenta='F' AND (fechaVenta BETWEEN '2020-01-17 00:00:00' AND '2020-01-18 00:00:00')
ORDER BY fechaVenta;


# 2. Realizar un listado de artículos agrupados por rubros.

SELECT idarticulos, articulo, color, genero, marca, talle, rubros.rubro AS 'Rubro' 
FROM articulos
JOIN rubros ON articulos.subrubro_rubros_idrubros=rubros.idrubros
ORDER BY rubros.rubro;

# 3. Mostrar la diferencia entre el total de artículos de entradas y el total artículos de ventas para una fecha en particular.

SELECT fechaEntrega AS 'Fecha',lineascompra.cantidad AS 'Entrada',sum(lineasventa.cantidad) AS 'Salida', lineascompra.cantidad - sum(lineasventa.cantidad)  AS 'Direrencia entrada/salida'
FROM compras JOIN lineascompra
ON compras.idcompras=lineascompra.compras_idcompras
JOIN ventas JOIN lineasventa
ON ventas.idventas = lineasventa.ventas_idventas
WHERE ventas.fechaventa = '2020-01-17 00:00:00' and compras.fechaEntrega='2021-02-24 00:00:00';



# 4. Dado un rango de fechas, mostrar mes a mes el total de compras y el total de ventas. 
# El formato deberá ser: més, total de compras, total de ventas.

drop table IF EXISTS punto4;
create temporary table punto4(
        mes VARCHAR(20) NULL,
        CantidadCompras INT NULL DEFAULT '0',
        CantidadVentas INT NULL DEFAULT '0')
ENGINE = InnoDB;

insert into punto4(mes,cantidadCompras) 
(SELECT monthname(fechaEntrega) as 'mes', count(estadoCompra) as 'TotalCompras'
FROM compras JOIN lineascompra
ON compras.idcompras=lineascompra.compras_idcompras
WHERE compras.estadoCompra='F' AND (fechaEntrega BETWEEN '2020-01-17 00:00:00' AND '2020-12-12 00:00:00')
GROUP BY mes
ORDER BY TotalCompras);

insert into punto4(mes,cantidadVentas) 
(SELECT monthname(fechaVenta) as 'mes', count(estadoVenta) as 'TotalVentas'
FROM ventas JOIN lineasventa
ON ventas.idventas=lineasventa.ventas_idventas
WHERE ventas.estadoVenta='F' AND (fechaVenta BETWEEN '2020-01-17 00:00:00' AND '2020-01-19 00:00:00')
GROUP BY mes);

SELECT * FROM punto4
order by mes;


#---------------------------------------------------------------------------------------------
# 5. Hacer un ranking con las categorías de artículos que más se venden (por cantidad) entre un rango de fechas.
SELECT  fechaVenta, rubro as 'Categoria', sum(cantidad) as RankVendidos 
FROM lineasventa 
JOIN articulos ON lineasventa.articulos_idarticulos=articulos.idarticulos
JOIN ventas ON ventas.idventas=lineasventa.ventas_idventas
JOIN rubros ON lineasventa.articulos_subrubro_rubros_idrubros=rubros.idrubros
WHERE fechaVenta BETWEEN '2020-01-17 00:00:00' AND '2020-01-20 00:00:00'
GROUP BY rubro 
ORDER BY RankVendidos DESC;


#---------------------------------------------------------------------------------------------
# 6. Hacer un ranking con los artículos más vendidos (por importe) entre un rango de fechas.

SELECT idventas as 'Cod. Venta', precio as 'Importe', fechaVenta, articulos_idarticulos as 'Cod. Art', articulo, marca, talle
FROM lineasventa JOIN ventas
ON lineasventa.ventas_idventas=ventas.idventas
JOIN articulos
ON articulos.idarticulos=lineasventa.articulos_idarticulos
WHERE fechaVenta BETWEEN '2020-01-17 00:00:00' AND '2020-01-19 00:00:00'
ORDER BY importe DESC;

#---------------------------------------------------------------------------------------------
#7. Hacer un ranking con los artículos más vendidos (por cantidad) entre un rango de fechas.
SELECT idventas as 'Cod. Venta', fechaVenta, idarticulos as 'Cod. Art.', articulo, marca, talle, cantidad as 'Ranking Unidades Vendidas'
FROM lineasventa JOIN articulos 
ON lineasventa.articulos_idarticulos=articulos.idarticulos
JOIN ventas
ON ventas.idventas=lineasventa.ventas_idventas
WHERE fechaVenta BETWEEN '2020-01-17 00:00:00' AND '2020-01-20 00:00:00'
ORDER BY cantidad DESC;

#---------------------------------------------------------------------------------------------
# 8. Crear una vista con la funcionalidad del apartado 2: Realizar un listado de artículos agrupados por rubros.
CREATE VIEW VistaPunto2 AS
SELECT idarticulos, articulo, color, genero, marca, talle, rubros.rubro AS 'Rubro' 
FROM articulos
JOIN rubros ON articulos.subrubro_rubros_idrubros=rubros.idrubros
ORDER BY rubros.rubro;
SELECT * FROM VistaPunto2; #vista resultante

#---------------------------------------------------------------------------------------------
# 9. Crear una copia de la tabla Artículos, que además tenga una columna del tipo JSON para
# guardar el detalle de las compras. Llenar esta tabla con los mismos datos del TP1 y resolver
# la consulta del apartado 4.


CREATE TABLE copiaArticulos LIKE articulos; #Creamos una copia de tabla articulos
ALTER TABLE copiaarticulos ADD DetalleJSON JSON NULL; #Agregamos una columna del tipo JSON y rellenamos

INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('1', 'camisa', 'negro', 'M', 'hollister', 'algodon', 'S', 'V', '2', '1', '{"Detalles":"detalleejemplo1"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('2', 'camisa', 'negro', 'M', 'hollister', 'algodon', 'M', 'V', '2', '1','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('3', 'camisa', 'negro', 'M', 'hollister', 'algodon', 'L', 'V', '2', '1','{"Detalles":"detallsdasdvPrueba3"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('4', 'remera', 'blanco', 'M', 'hollister', 'algodon', 'S', 'V', '2', '1','{"Detalles":"detalndyrmdytPrueba0"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('5', 'remera', 'blanco', 'M', 'algodon', 'M', 'V', '2', '1','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('6', 'remera', 'blanco', 'M', 'hollister', 'algodon', 'L', 'V', '2', '1','{"Detalles":"detallePara ejemplo8"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('7', 'chaqueta', 'marron', 'F', 'levis', 'cuero', 'S', 'I', '6', '3','{"Detalles":"detalrueba98"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('8', 'chaqueta', 'rojo', 'F', 'levis', 'cuero', 'S', 'I', '6', '3','{"Detalles":"detall rueba243"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('9', 'chaqueta', 'gris', 'F', 'levis', 'cuero', 'M', 'I', '6', '3','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('10', 'sueter', 'gris', 'M', 'fila', 'poliester', 'S', 'I', '10', '4','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('11', 'sueter', 'blanco', 'M', 'poliester', 'M', 'I', '10', '4','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('12', 'sueter', 'negro', 'M', 'fila', 'poliester', 'L', 'I', '10', '4','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('13', 'sueter', 'rosa', 'F', 'nike', 'algodon', 'S', 'I', '10', '4','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('14', 'sueter', 'rojo', 'F', 'nike', 'algodon', 'S', 'I', '10', '4','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('15', 'jean', 'azul', 'M', 'taverniti', 'algodon', 'S', 'I', '8', '3','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('16', 'jean', 'negro', 'M', 'taverniti', 'algodon', 'S', 'I', '8', '3','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('17', 'jean', 'azul', 'M', 'taverniti', 'algodon', 'M', 'V', '8', '3','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('18', 'jean', 'negro', 'F', 'taverniti', 'algodon', 'S', 'V', '8', '3','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `marca`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('19', 'jean', 'gris', 'F', 'adidas', 'algodon', 'S', 'V', '8', '3','{"Detalles":"detalleDePrueba2"}');
INSERT INTO `lbd202103`.`copiaarticulos` (`idArticulos`, `articulo`, `color`, `genero`, `material`, `talle`, `temporada`, `subrubro_idsubrubro`, `subrubro_rubros_idrubros`, `DetalleJSON`) VALUES ('20', 'gorra', 'negro', 'M', 'algodon', 'M', 'V', '7', '3','{"Detalles":"detalleDePrueba2"}');


SELECT idarticulos, articulo, color, marca,JSON_EXTRACT(DetalleJSON, '$.Detalles') AS Detalle FROM copiaarticulos;  #mostramos la tabla

#CONTINUA
SELECT * FROM compras;

# 10: Realizar una vista que considere importante para su modelo. También dejar escrito el enunciado de la misma.
 # "EMPLEADOS QUE SE ENCUENTREN ACTIVOS Y HAYAN REALIZADO VENTAS, CON UN RANKING POR VENTAS REALIZADAS HISTORICO"

CREATE VIEW EmpleadosHistorico AS
SELECT usuarios_idusuarios as 'id empleado' , estadoEmpleado, cargo, estadoVenta as 'Estado Ventas', count(estadoVenta) CantidadVentas 
FROM empleados JOIN ventas
ON empleados.usuarios_idusuarios=ventas.empleados_usuarios_idusuarios
WHERE estadoEmpleado='A' AND estadoVenta='F'
GROUP BY usuarios_idusuarios 
ORDER BY CantidadVentas DESC;
SELECT * FROM EmpleadosHistorico; #vista resultante




