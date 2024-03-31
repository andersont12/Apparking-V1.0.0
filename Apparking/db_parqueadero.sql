-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2024 a las 23:56:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_parqueadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `IdCargo` int(11) NOT NULL,
  `Descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`IdCargo`, `Descripcion`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ingreso`
--

CREATE TABLE `tbl_ingreso` (
  `Idingreso` int(11) NOT NULL,
  `Ing_Apto` varchar(45) NOT NULL,
  `Ing_Torre` varchar(45) NOT NULL,
  `TBL_VIGILANTE_Vig_NumCed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_isla`
--

CREATE TABLE `tbl_isla` (
  `IdIsla` int(11) NOT NULL,
  `TBL_VEHICULOS_Placa` varchar(11) NOT NULL,
  `TBL_RESIDENTE_Resi_NumCed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_observacion`
--

CREATE TABLE `tbl_observacion` (
  `IdObservacion` int(11) NOT NULL,
  `Obs_Fecha` varchar(45) NOT NULL,
  `Obs_Descrip` longtext NOT NULL,
  `TBL_VIGILANTE_Vig_NumCed` int(11) NOT NULL,
  `TBL_VEHICULOS_Placa` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reserva`
--

CREATE TABLE `tbl_reserva` (
  `IdReserva` int(11) NOT NULL,
  `TBL_RESIDENTE_Resi_NumCed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_residente`
--

CREATE TABLE `tbl_residente` (
  `Resi_NumCed` int(11) NOT NULL,
  `Resi_nom` varchar(45) NOT NULL,
  `Resi_Apellido` varchar(45) NOT NULL,
  `Rsei_Tel` varchar(45) NOT NULL,
  `Resi_Correo` varchar(45) NOT NULL,
  `Resi_Torre` varchar(45) NOT NULL,
  `Resi_Apto` varchar(45) NOT NULL,
  `IdUsuarios_copia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_supervisor`
--

CREATE TABLE `tbl_supervisor` (
  `Supe_NumCed` int(11) NOT NULL,
  `Supe_nom` varchar(45) NOT NULL,
  `Supe_Apellido` varchar(45) NOT NULL,
  `Supe_Tel` varchar(45) NOT NULL,
  `Supe_Correo` varchar(45) NOT NULL,
  `IdUsuarios_copia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vehiculos`
--

CREATE TABLE `tbl_vehiculos` (
  `Placa` varchar(11) NOT NULL,
  `Vehi_Tipo` varchar(45) NOT NULL,
  `Vehi_Marca` varchar(45) NOT NULL,
  `TBL_VISITANTE_Vis_NumCed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vigilante`
--

CREATE TABLE `tbl_vigilante` (
  `Vig_NumCed` int(11) NOT NULL,
  `Vig_Nom` varchar(45) NOT NULL,
  `Vig_Apellido` varchar(45) NOT NULL,
  `Vig_TurnoInicio` varchar(45) NOT NULL,
  `Vig_TurnoFin` varchar(45) NOT NULL,
  `IdUsuarios_copia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_visitante`
--

CREATE TABLE `tbl_visitante` (
  `Vis_NumCed` int(11) NOT NULL,
  `Vis_Nombre` varchar(45) NOT NULL,
  `Vis_Apellido` varchar(45) NOT NULL,
  `Vis_Tel` int(11) NOT NULL,
  `Vis_Correo` varchar(45) NOT NULL,
  `TBL_INGRESO_Id_ingreso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `perfil` text NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `IdCargo_Copia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nombre`, `usuario`, `clave`, `perfil`, `foto`, `estado`, `ultimo_login`, `fechanacimiento`, `email`, `telefono`, `IdCargo_Copia`) VALUES
(1, 'usuario prueba', 'prueba', '1234', 'Administrador', '', 1, '2024-03-31 12:58:06', '2024-02-06', 'cg', '312', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`IdCargo`);

--
-- Indices de la tabla `tbl_ingreso`
--
ALTER TABLE `tbl_ingreso`
  ADD PRIMARY KEY (`Idingreso`),
  ADD KEY `TBL_VIGILANTE_Vig_NumCed` (`TBL_VIGILANTE_Vig_NumCed`);

--
-- Indices de la tabla `tbl_isla`
--
ALTER TABLE `tbl_isla`
  ADD PRIMARY KEY (`IdIsla`),
  ADD KEY `TBL_RESIDENTE_Resi_NumCed` (`TBL_RESIDENTE_Resi_NumCed`);

--
-- Indices de la tabla `tbl_observacion`
--
ALTER TABLE `tbl_observacion`
  ADD PRIMARY KEY (`IdObservacion`),
  ADD KEY `TBL_VIGILANTE_Vig_NumCed` (`TBL_VIGILANTE_Vig_NumCed`),
  ADD KEY `TBL_VEHICULOS_Placa` (`TBL_VEHICULOS_Placa`);

--
-- Indices de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD PRIMARY KEY (`IdReserva`),
  ADD KEY `TBL_RESIDENTE_Resi_NumCed` (`TBL_RESIDENTE_Resi_NumCed`);

--
-- Indices de la tabla `tbl_residente`
--
ALTER TABLE `tbl_residente`
  ADD PRIMARY KEY (`Resi_NumCed`),
  ADD KEY `IdUsuarios_copia` (`IdUsuarios_copia`);

--
-- Indices de la tabla `tbl_supervisor`
--
ALTER TABLE `tbl_supervisor`
  ADD PRIMARY KEY (`Supe_NumCed`),
  ADD KEY `IdUsuarios_copia` (`IdUsuarios_copia`);

--
-- Indices de la tabla `tbl_vehiculos`
--
ALTER TABLE `tbl_vehiculos`
  ADD PRIMARY KEY (`Placa`),
  ADD KEY `TBL_VISITANTE_Vis_NumCed` (`TBL_VISITANTE_Vis_NumCed`);

--
-- Indices de la tabla `tbl_vigilante`
--
ALTER TABLE `tbl_vigilante`
  ADD PRIMARY KEY (`Vig_NumCed`),
  ADD KEY `IdUsuarios_copia` (`IdUsuarios_copia`);

--
-- Indices de la tabla `tbl_visitante`
--
ALTER TABLE `tbl_visitante`
  ADD PRIMARY KEY (`Vis_NumCed`),
  ADD KEY `TBL_INGRESO_Id_ingreso` (`TBL_INGRESO_Id_ingreso`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `IdCargo_Copia` (`IdCargo_Copia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_ingreso`
--
ALTER TABLE `tbl_ingreso`
  ADD CONSTRAINT `tbl_ingreso_ibfk_1` FOREIGN KEY (`TBL_VIGILANTE_Vig_NumCed`) REFERENCES `tbl_vigilante` (`Vig_NumCed`);

--
-- Filtros para la tabla `tbl_isla`
--
ALTER TABLE `tbl_isla`
  ADD CONSTRAINT `tbl_isla_ibfk_1` FOREIGN KEY (`TBL_RESIDENTE_Resi_NumCed`) REFERENCES `tbl_residente` (`Resi_NumCed`);

--
-- Filtros para la tabla `tbl_observacion`
--
ALTER TABLE `tbl_observacion`
  ADD CONSTRAINT `tbl_observacion_ibfk_1` FOREIGN KEY (`TBL_VIGILANTE_Vig_NumCed`) REFERENCES `tbl_vigilante` (`Vig_NumCed`),
  ADD CONSTRAINT `tbl_observacion_ibfk_2` FOREIGN KEY (`TBL_VEHICULOS_Placa`) REFERENCES `tbl_vehiculos` (`Placa`);

--
-- Filtros para la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD CONSTRAINT `tbl_reserva_ibfk_1` FOREIGN KEY (`TBL_RESIDENTE_Resi_NumCed`) REFERENCES `tbl_residente` (`Resi_NumCed`);

--
-- Filtros para la tabla `tbl_residente`
--
ALTER TABLE `tbl_residente`
  ADD CONSTRAINT `tbl_residente_ibfk_1` FOREIGN KEY (`IdUsuarios_copia`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `tbl_supervisor`
--
ALTER TABLE `tbl_supervisor`
  ADD CONSTRAINT `tbl_supervisor_ibfk_1` FOREIGN KEY (`IdUsuarios_copia`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `tbl_vehiculos`
--
ALTER TABLE `tbl_vehiculos`
  ADD CONSTRAINT `tbl_vehiculos_ibfk_1` FOREIGN KEY (`TBL_VISITANTE_Vis_NumCed`) REFERENCES `tbl_visitante` (`Vis_NumCed`);

--
-- Filtros para la tabla `tbl_vigilante`
--
ALTER TABLE `tbl_vigilante`
  ADD CONSTRAINT `tbl_vigilante_ibfk_1` FOREIGN KEY (`IdUsuarios_copia`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `tbl_visitante`
--
ALTER TABLE `tbl_visitante`
  ADD CONSTRAINT `tbl_visitante_ibfk_1` FOREIGN KEY (`TBL_INGRESO_Id_ingreso`) REFERENCES `tbl_ingreso` (`Idingreso`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`IdCargo_Copia`) REFERENCES `cargo` (`IdCargo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
