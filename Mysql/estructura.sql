-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2018 a las 19:18:43
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `atlas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `description_en` text,
  `description_es` text,
  `description_de` text,
  `name_en` text,
  `name_es` text,
  `name_de` text,
  `name_short_en` varchar(75) DEFAULT NULL,
  `name_short_es` varchar(75) DEFAULT NULL,
  `name_short_de` varchar(75) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_country_year`
--

CREATE TABLE `country_country_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_department_product_year`
--

CREATE TABLE `country_department_product_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_department_year`
--

CREATE TABLE `country_department_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_industry_year`
--

CREATE TABLE `country_industry_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(8) DEFAULT NULL,
  `employment` int(11) DEFAULT NULL,
  `wages` bigint(20) DEFAULT NULL,
  `monthly_wages` int(11) DEFAULT NULL,
  `num_establishments` int(11) DEFAULT NULL,
  `rca` int(11) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `cog` float DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_msa_product_year`
--

CREATE TABLE `country_msa_product_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_msa_year`
--

CREATE TABLE `country_msa_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_municipality_product_year`
--

CREATE TABLE `country_municipality_product_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_municipality_year`
--

CREATE TABLE `country_municipality_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_product_year`
--

CREATE TABLE `country_product_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `export_rca` int(11) DEFAULT NULL,
  `density` float DEFAULT NULL,
  `cog` float DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department_industry_year`
--

CREATE TABLE `department_industry_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(8) DEFAULT NULL,
  `employment` int(11) DEFAULT NULL,
  `wages` bigint(20) DEFAULT NULL,
  `monthly_wages` int(11) DEFAULT NULL,
  `num_establishments` int(11) DEFAULT NULL,
  `rca` int(11) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `cog` float DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department_product_year`
--

CREATE TABLE `department_product_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `export_rca` int(11) DEFAULT NULL,
  `density` float DEFAULT NULL,
  `cog` float DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department_year`
--

CREATE TABLE `department_year` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `eci` float DEFAULT NULL,
  `eci_rank` int(11) DEFAULT NULL,
  `diversity` float DEFAULT NULL,
  `coi` float DEFAULT NULL,
  `industry_coi` float DEFAULT NULL,
  `gdp_nominal` bigint(20) DEFAULT NULL,
  `gdp_real` bigint(20) DEFAULT NULL,
  `gdp_pc_nominal` int(11) DEFAULT NULL,
  `gdp_pc_real` int(11) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `employment` int(11) DEFAULT NULL,
  `wages` bigint(20) DEFAULT NULL,
  `monthly_wages` int(11) DEFAULT NULL,
  `num_establishments` int(11) DEFAULT NULL,
  `industry_eci` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `industry`
--

CREATE TABLE `industry` (
  `id` int(11) NOT NULL,
  `description_en` text,
  `description_es` text,
  `description_de` text,
  `name_en` text,
  `name_es` text,
  `name_de` text,
  `name_short_en` varchar(75) DEFAULT NULL,
  `name_short_es` varchar(75) DEFAULT NULL,
  `name_short_de` varchar(75) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `industry_year`
--

CREATE TABLE `industry_year` (
  `id` int(11) NOT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(8) DEFAULT NULL,
  `employment` int(11) DEFAULT NULL,
  `wages` bigint(20) DEFAULT NULL,
  `monthly_wages` int(11) DEFAULT NULL,
  `num_establishments` int(11) DEFAULT NULL,
  `complexity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `description_en` text,
  `description_es` text,
  `description_de` text,
  `name_en` text,
  `name_es` text,
  `name_de` text,
  `name_short_en` varchar(75) DEFAULT NULL,
  `name_short_es` varchar(75) DEFAULT NULL,
  `name_short_de` varchar(75) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msa_industry_year`
--

CREATE TABLE `msa_industry_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(8) DEFAULT NULL,
  `employment` int(11) DEFAULT NULL,
  `wages` bigint(20) DEFAULT NULL,
  `monthly_wages` int(11) DEFAULT NULL,
  `num_establishments` int(11) DEFAULT NULL,
  `rca` int(11) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `cog` float DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msa_product_year`
--

CREATE TABLE `msa_product_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `export_rca` int(11) DEFAULT NULL,
  `density` float DEFAULT NULL,
  `cog` float DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msa_year`
--

CREATE TABLE `msa_year` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `eci` float DEFAULT NULL,
  `coi` float DEFAULT NULL,
  `industry_coi` float DEFAULT NULL,
  `employment` int(11) DEFAULT NULL,
  `wages` bigint(20) DEFAULT NULL,
  `monthly_wages` int(11) DEFAULT NULL,
  `num_establishments` int(11) DEFAULT NULL,
  `industry_eci` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipality_industry_year`
--

CREATE TABLE `municipality_industry_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(8) DEFAULT NULL,
  `employment` int(11) DEFAULT NULL,
  `wages` bigint(20) DEFAULT NULL,
  `monthly_wages` int(11) DEFAULT NULL,
  `num_establishments` int(11) DEFAULT NULL,
  `rca` int(11) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `cog` float DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipality_product_year`
--

CREATE TABLE `municipality_product_year` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL,
  `export_rca` int(11) DEFAULT NULL,
  `density` float DEFAULT NULL,
  `cog` float DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `occupation`
--

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL,
  `description_en` text,
  `description_es` text,
  `description_de` text,
  `name_en` text,
  `name_es` text,
  `name_de` text,
  `name_short_en` varchar(75) DEFAULT NULL,
  `name_short_es` varchar(75) DEFAULT NULL,
  `name_short_de` varchar(75) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `occupation_industry_year`
--

CREATE TABLE `occupation_industry_year` (
  `id` int(11) NOT NULL,
  `occupation_id` int(11) DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `level` varchar(19) DEFAULT NULL,
  `average_wages` int(11) DEFAULT NULL,
  `num_vacancies` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `occupation_year`
--

CREATE TABLE `occupation_year` (
  `id` int(11) NOT NULL,
  `occupation_id` int(11) DEFAULT NULL,
  `level` varchar(19) DEFAULT NULL,
  `average_wages` int(11) DEFAULT NULL,
  `num_vacancies` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partner_product_year`
--

CREATE TABLE `partner_product_year` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `description_en` text,
  `description_es` text,
  `description_de` text,
  `name_en` text,
  `name_es` text,
  `name_de` text,
  `name_short_en` varchar(75) DEFAULT NULL,
  `name_short_es` varchar(75) DEFAULT NULL,
  `name_short_de` varchar(75) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_year`
--

CREATE TABLE `product_year` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `level` varchar(7) DEFAULT NULL,
  `pci` float DEFAULT NULL,
  `pci_rank` int(11) DEFAULT NULL,
  `export_value` bigint(20) DEFAULT NULL,
  `import_value` bigint(20) DEFAULT NULL,
  `export_num_plants` int(11) DEFAULT NULL,
  `import_num_plants` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `country_country_year`
--
ALTER TABLE `country_country_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `country_department_product_year`
--
ALTER TABLE `country_department_product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indices de la tabla `country_department_year`
--
ALTER TABLE `country_department_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `country_industry_year`
--
ALTER TABLE `country_industry_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `industry_id` (`industry_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `country_msa_product_year`
--
ALTER TABLE `country_msa_product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indices de la tabla `country_msa_year`
--
ALTER TABLE `country_msa_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `country_municipality_product_year`
--
ALTER TABLE `country_municipality_product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indices de la tabla `country_municipality_year`
--
ALTER TABLE `country_municipality_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `country_product_year`
--
ALTER TABLE `country_product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `department_industry_year`
--
ALTER TABLE `department_industry_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `industry_id` (`industry_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `department_product_year`
--
ALTER TABLE `department_product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `department_year`
--
ALTER TABLE `department_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `industry_year`
--
ALTER TABLE `industry_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `industry_id` (`industry_id`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `msa_industry_year`
--
ALTER TABLE `msa_industry_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `industry_id` (`industry_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `msa_product_year`
--
ALTER TABLE `msa_product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `msa_year`
--
ALTER TABLE `msa_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `municipality_industry_year`
--
ALTER TABLE `municipality_industry_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `industry_id` (`industry_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `municipality_product_year`
--
ALTER TABLE `municipality_product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `occupation_industry_year`
--
ALTER TABLE `occupation_industry_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `occupation_id` (`occupation_id`),
  ADD KEY `industry_id` (`industry_id`);

--
-- Indices de la tabla `occupation_year`
--
ALTER TABLE `occupation_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `occupation_id` (`occupation_id`);

--
-- Indices de la tabla `partner_product_year`
--
ALTER TABLE `partner_product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_year`
--
ALTER TABLE `product_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `country_country_year`
--
ALTER TABLE `country_country_year`
  ADD CONSTRAINT `country_country_year_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `country_country_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `country_department_product_year`
--
ALTER TABLE `country_department_product_year`
  ADD CONSTRAINT `country_department_product_year_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `country_department_product_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `country_department_product_year_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `country_department_year`
--
ALTER TABLE `country_department_year`
  ADD CONSTRAINT `country_department_year_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `country_department_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `country_industry_year`
--
ALTER TABLE `country_industry_year`
  ADD CONSTRAINT `country_industry_year_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`),
  ADD CONSTRAINT `country_industry_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `country_msa_product_year`
--
ALTER TABLE `country_msa_product_year`
  ADD CONSTRAINT `country_msa_product_year_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `country_msa_product_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `country_msa_product_year_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `country_msa_year`
--
ALTER TABLE `country_msa_year`
  ADD CONSTRAINT `country_msa_year_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `country_msa_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `country_municipality_product_year`
--
ALTER TABLE `country_municipality_product_year`
  ADD CONSTRAINT `country_municipality_product_year_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `country_municipality_product_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `country_municipality_product_year_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `country_municipality_year`
--
ALTER TABLE `country_municipality_year`
  ADD CONSTRAINT `country_municipality_year_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `country_municipality_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `country_product_year`
--
ALTER TABLE `country_product_year`
  ADD CONSTRAINT `country_product_year_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `country_product_year_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `department_industry_year`
--
ALTER TABLE `department_industry_year`
  ADD CONSTRAINT `department_industry_year_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`),
  ADD CONSTRAINT `department_industry_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `department_product_year`
--
ALTER TABLE `department_product_year`
  ADD CONSTRAINT `department_product_year_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `department_product_year_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `department_year`
--
ALTER TABLE `department_year`
  ADD CONSTRAINT `department_year_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `industry_year`
--
ALTER TABLE `industry_year`
  ADD CONSTRAINT `industry_year_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`);

--
-- Filtros para la tabla `msa_industry_year`
--
ALTER TABLE `msa_industry_year`
  ADD CONSTRAINT `msa_industry_year_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`),
  ADD CONSTRAINT `msa_industry_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `msa_product_year`
--
ALTER TABLE `msa_product_year`
  ADD CONSTRAINT `msa_product_year_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `msa_product_year_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `msa_year`
--
ALTER TABLE `msa_year`
  ADD CONSTRAINT `msa_year_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `municipality_industry_year`
--
ALTER TABLE `municipality_industry_year`
  ADD CONSTRAINT `municipality_industry_year_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`),
  ADD CONSTRAINT `municipality_industry_year_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `municipality_product_year`
--
ALTER TABLE `municipality_product_year`
  ADD CONSTRAINT `municipality_product_year_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `municipality_product_year_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `occupation_industry_year`
--
ALTER TABLE `occupation_industry_year`
  ADD CONSTRAINT `occupation_industry_year_ibfk_1` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`),
  ADD CONSTRAINT `occupation_industry_year_ibfk_2` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`);

--
-- Filtros para la tabla `occupation_year`
--
ALTER TABLE `occupation_year`
  ADD CONSTRAINT `occupation_year_ibfk_1` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`);

--
-- Filtros para la tabla `partner_product_year`
--
ALTER TABLE `partner_product_year`
  ADD CONSTRAINT `partner_product_year_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `partner_product_year_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `product_year`
--
ALTER TABLE `product_year`
  ADD CONSTRAINT `product_year_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
