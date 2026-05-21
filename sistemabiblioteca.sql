-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-01-2026 a las 08:48:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemabiblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnado`
--

CREATE TABLE `alumnado` (
  `id_alumnado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `clase` varchar(20) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `codigo_de_carnet` varchar(50) DEFAULT NULL,
  `estado_de_sancion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `codigo_de_barra` int(200) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `ubicacion_por_colores` varchar(150) NOT NULL,
  `estado_de_actividad` varchar(50) DEFAULT 'Disponible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `titulo`, `codigo_de_barra`, `autor`, `isbn`, `ubicacion_por_colores`, `estado_de_actividad`) VALUES
(1, 'Tu primer VOX de Cuentos del Mundo', 0, 'Marie-Pierre Levallois', '978-84-8332-605-3', 'red', 'disponible'),
(2, 'Niños y Niñas del Mundo', 0, 'Núria Roca', '978-84-236-7768-9', 'red', 'disponible'),
(3, 'Mandela', 0, 'Alain Blondel', '978-84-921977-8-1', 'red', 'disponible'),
(4, 'Miedo', 0, 'Ana Serna Vara', '978-84-677-7426-9', 'pink', 'disponible'),
(5, 'Alegría', 0, 'Ana Serna Vara', '978-84-677-7422-1', 'pink', 'disponible'),
(6, 'Enfado', 0, 'Ana Serna Vara', '978-84-677-7425-2', 'pink', 'disponible'),
(7, 'Sinceridad', 0, 'Violeta Monreal', '978-84-392-0890-7', 'pink', 'disponible'),
(8, 'Las chicas son guerreras', 0, 'Irene Cívico y Sergio Parra', '978-84-9043-654-7', 'purple', 'disponible'),
(9, 'Inventoras y sus inventos', 0, 'Aitziber López-Lozano', '978-84-947432-3-8', 'purple', 'disponible'),
(10, 'Luchadoras', 0, 'Cristina Serret Alonso', '978-84-1361-011-5', 'purple', 'disponible'),
(11, 'No me cuentes cuentos', 0, 'Varios Autores', '978-84-17922-29-0', 'purple', 'disponible'),
(12, 'Mujeres exploradoras', 0, 'Riccardo Francaviglia y Margherita Sgarlata', '978-84-682-6971-9', 'purple', 'disponible'),
(13, 'Students in space', 0, 'Craig Wright', '978-01-944-0099-2', 'yellow', 'disponible'),
(14, 'Best friends in Fairyland', 0, 'Daisy Meadows', '978-05-452-2293-8', 'yellow', 'disponible'),
(15, 'Monster Party', 0, 'Parragon Books', '978-14-723-1018-7', 'yellow', 'disponible'),
(16, 'The Birthday Cake', 0, 'Alex Lane', '978-01-983-0092-2', 'yellow', 'disponible'),
(17, 'Billy the Kid', 0, 'Ruth Miskin y Gill Munton', '978-01-983-8679-7', 'yellow', 'disponible'),
(18, '¡Qué Cosas!', 0, 'Edith Schreiber-Wicke', '978-84-348-3677-8', 'brown', 'disponible'),
(19, '¡Una de Piratas!', 0, 'José Luis Alonso de Santos', '978-84-348-7062-8', 'brown', 'disponible'),
(20, '4 años, 6 meses y 3 días después', 0, 'Emmanuel Bourdier', '978-84-263-6694-8', 'brown', 'disponible'),
(21, 'A vueltas con mi nombre', 0, 'Alice Vieira', '978-84-348-3090-5', 'brown', 'disponible'),
(22, 'Abdel', 0, 'Enrique Páez', '978-84-675-7785-3', 'brown', 'disponible'),
(23, 'Madera ¡Desechos!', 0, 'Veronica Bonar', '978-84-263-2636-2', 'white', 'disponible'),
(24, 'Asterix, El Galo', 0, 'René Goscinny y Albert Uderzo', '978-84-666-4807-6', 'white', 'disponible'),
(25, 'Belfy y Lillibit 4', 0, 'Pepe Gálvez y Manuel Vázquez', '978-84-666-5014-7', 'white', 'disponible'),
(26, '>Belfy y Lillibit 6>', 0, 'Pepe Gálvez y Manuel Vázquez', '978-84-666-5017-8', 'white', 'disponible'),
(27, 'Breve Historia de Aragón', 0, 'José Antonio Parrilla y José Antonio Muñiz', '978-84-500-9759-7', 'white', 'disponible'),
(28, 'Musicando con... Rossini y la Cenicienta', 0, 'Montse Sanuy', '978-84-305-4584-1', 'black', 'disponible'),
(29, 'Musicando con... Beethoven y Fidelio', 0, 'Montse Sanuy', '978-84-305-4582-7', 'black', 'disponible'),
(30, 'Musicando con... Chopin y Las Sílfides', 0, 'Montse Sanuy', '978-84-305-6687-7', 'black', 'disponible'),
(31, 'Musicando con... Verdi y Aida', 0, 'Montse Sanuy', '978-84-305-6135-3', 'black', 'disponible'),
(32, 'Musicando con... Strauss y El Murciélago', 0, 'Montse Sanuy', '978-84-305-6686-0', 'black', 'disponible'),
(33, '¡Buenos Días!', 0, 'Asunción Lissón', '978-84-246-0659-6', 'green', 'disponible'),
(34, '¡Caramba con los amigos!', 0, 'Ricardo Alcántara', '978-84-7864-474-2', 'green', 'disponible'),
(35, '¡Cómo brilla el mar!', 0, 'Mercè Company Gonzalez', '978-84-348-3663-1', 'green', 'disponible'),
(36, '¡Crea!', 0, 'Román Belmonte Andújar', '978-84-948085-7-9', 'green', 'disponible'),
(37, '¡Cuánto me quieren!', 0, 'Alejandra Vallejo-Nágera', '978-84-204-6464-0', 'green', 'disponible'),
(38, '¡¡¡PAPÁÁÁ!!!', 0, 'Carles Cano', '978-84-698-8561-1', 'orange', 'disponible'),
(39, '¡Cómo molo!', 0, 'Elvira Lindo', '978-84-204-5856-4', 'orange', 'disponible'),
(40, '¡Corre, Sebastián, Corre!', 0, 'Juan Kruz Igerabide', '978-84-6722-166-4', 'orange', 'disponible'),
(41, '¡Cumpleaños feliz!', 0, 'Carmen Vázquez-Vigo', '978-84-216-2081-6', 'orange', 'disponible'),
(42, '¡Encerrados en clase!', 0, 'Miquel Capó y Haizea M. Zubieta', '978-84-18318-91-7', 'orange', 'disponible'),
(43, 'Descubrir el mundo: La Selva', 0, 'Varios Autores', '978-84-8298-612-8', 'light_blue', 'disponible'),
(44, 'El Sistema Solar', 0, 'Gaby Goldsack', '978-84-675-3394-1', 'light_blue', 'disponible'),
(45, 'La capa de Ozono', 0, 'Tony Hare', '978-84-348-3260-2', 'light_blue', 'disponible'),
(46, 'Animales desaparecidos', 0, 'Claude Delafosse', '978-84-675-5220-1', 'light_blue', 'disponible'),
(47, 'Salvemos la Tierra', 0, 'Jonathon Porritt', '978-84-226-3746-2', 'light_blue', 'disponible'),
(48, 'Ecoeducación', 0, 'Mario Gomboli', '978-84-216-3287-1', 'red', 'disponible'),
(49, 'Cuentos de Todos los Colores', 0, 'Aro Sáinz de la Maza y Josep M. Hernández Ripoll', '978-84-7871-123-9', 'red', 'disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `id_prestamo` int(11) NOT NULL,
  `id_alumnado` int(11) DEFAULT NULL,
  `id_libro` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_de_salida` datetime DEFAULT current_timestamp(),
  `fecha_de_devolucion` date DEFAULT NULL,
  `estado_del_prestamo` varchar(50) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_de_inicio` int(50) NOT NULL,
  `fecha_de_caducidad` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `codigo_de_carnet` varchar(50) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `username`, `contrasenia`, `codigo_de_carnet`, `id_rol`) VALUES
(2, 'admin', 'admin', '123', NULL, NULL),
(51, 'pablo', 'pablo', '123', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnado`
--
ALTER TABLE `alumnado`
  ADD PRIMARY KEY (`id_alumnado`),
  ADD UNIQUE KEY `codigo_de_carnet` (`codigo_de_carnet`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `fk_prestamo_alumnado` (`id_alumnado`),
  ADD KEY `fk_prestamo_libro` (`id_libro`),
  ADD KEY `fk_prestamo_usuario` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `codigo_de_carnet` (`codigo_de_carnet`),
  ADD KEY `fk_usuario_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnado`
--
ALTER TABLE `alumnado`
  MODIFY `id_alumnado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `fk_prestamo_alumnado` FOREIGN KEY (`id_alumnado`) REFERENCES `alumnado` (`id_alumnado`),
  ADD CONSTRAINT `fk_prestamo_libro` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`),
  ADD CONSTRAINT `fk_prestamo_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
