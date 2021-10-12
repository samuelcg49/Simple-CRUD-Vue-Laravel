-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2021 a las 13:27:02
-- Versión del servidor: 8.0.26
-- Versión de PHP: 7.4.23
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET
  time_zone = "+00:00";
  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;
--
  -- Base de datos: `competiciones`
  --
  -- --------------------------------------------------------
  --
  -- Estructura de tabla para la tabla `carreras`
  --
  CREATE TABLE `carreras` (
    `id` bigint UNSIGNED NOT NULL,
    `fecha` date NOT NULL,
    `tipo` varchar(100) NOT NULL,
    `categoria` varchar(100) NOT NULL,
    `entradas` int DEFAULT NULL,
    `circuito` varchar(255) NOT NULL,
    `ciudad` varchar(255) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
  -- Volcado de datos para la tabla `carreras`
  --
INSERT INTO
  `carreras` (
    `id`,
    `fecha`,
    `tipo`,
    `categoria`,
    `entradas`,
    `circuito`,
    `ciudad`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    '2021-10-23',
    'Motos',
    'Moto GP',
    2025,
    'Jerez',
    'Jerez de la Frontera',
    '2021-10-04 11:33:36',
    '2021-10-11 17:55:59'
  ),
  (
    2,
    '2021-10-10',
    'Coches',
    'F1',
    5020,
    'Catalunya',
    'Barcelona',
    '2021-10-04 14:22:48',
    '2021-10-11 18:47:52'
  );
--
  -- Índices para tablas volcadas
  --
  --
  -- Indices de la tabla `carreras`
  --
ALTER TABLE
  `carreras`
ADD
  PRIMARY KEY (`id`);
--
  -- AUTO_INCREMENT de las tablas volcadas
  --
  --
  -- AUTO_INCREMENT de la tabla `carreras`
  --
ALTER TABLE
  `carreras`
MODIFY
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 30;
COMMIT;
  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;