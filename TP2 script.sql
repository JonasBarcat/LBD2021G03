
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

SELECT * FROM articulos;

SELECT idarticulos, articulo, color, genero, marca, material, talle, temporada, subrubro_rubros_idrubros AS 'id rubro' FROM articulos
ORDER BY subrubro_rubros_idrubros;

