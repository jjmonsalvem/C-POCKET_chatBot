-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2025 a las 05:09:19
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
-- Base de datos: `chatbot_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `content` text NOT NULL,
  `sender` enum('bot','user') NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id_message`, `content`, `sender`, `created_at`) VALUES
(1, 'Hola, ¿cómo estás?', 'user', '2025-05-01 22:34:28'),
(2, '¡Hola! Estoy bien, gracias. ¿Y tú, cómo te encuentras?', 'bot', '2025-05-01 22:34:29'),
(3, 'Hola, ¿cómo estás?', 'user', '2025-05-01 22:35:24'),
(4, '¡Hola! Estoy bien, gracias. ¿Y tú? ¿Cómo te encuentras?', 'bot', '2025-05-01 22:35:25'),
(5, 'Esta es una prueba con el BOT que me puedes contar de la empresa?', 'user', '2025-05-01 23:19:48'),
(6, '¡Hola! Estoy aquí para ayudarte. Sin embargo, necesitaría saber de qué empresa específicamente te gustaría obtener información. ¿Tienes alguna en mente?', 'bot', '2025-05-01 23:19:49'),
(7, 'C-POCKET', 'user', '2025-05-01 23:21:22'),
(8, '¡Hola! ¿Te refieres a C-POCKET como un producto o concepto en particular? Cuéntame un poco más para que pueda ayudarte mejor.', 'bot', '2025-05-01 23:21:23'),
(9, 'Es una empresa colombiana', 'user', '2025-05-01 23:21:39'),
(10, '¡Claro! ¿Tienes alguna empresa colombiana específica en mente que te gustaría discutir o conocer más sobre ella? Hay muchas destacadas en diferentes sectores, como tecnología, alimentos, moda, y más.', 'bot', '2025-05-01 23:21:41'),
(11, 'tecnologia', 'user', '2025-05-01 23:21:56'),
(12, '¡Claro! La tecnología es un tema fascinante y amplio. ¿Te gustaría hablar sobre algún área específica, como la inteligencia artificial, la robótica, la sostenibilidad tecnológica, o quizás los últimos avances en dispositivos electrónicos?', 'bot', '2025-05-01 23:21:58'),
(13, 'Hola como estas?', 'user', '2025-05-02 12:42:28'),
(14, '¡Hola! Estoy bien, gracias. ¿Y tú? ¿Cómo te va?', 'bot', '2025-05-02 12:42:29'),
(15, 'Cual es tu proposito?', 'user', '2025-05-02 12:42:53'),
(16, 'Mi propósito es ayudarte a encontrar información, responder tus preguntas y mantener conversaciones sobre una variedad de temas. Estoy aquí para facilitarte el acceso al conocimiento y brindarte apoyo en lo que necesites. ¿Hay algo específico de lo que te gustaría hablar?', 'bot', '2025-05-02 12:42:54'),
(17, 'hola', 'user', '2025-05-04 11:47:09'),
(18, '¡Hola! ¿Cómo estás?', 'bot', '2025-05-04 11:47:10'),
(19, 'muy bien y tu?', 'user', '2025-05-04 11:47:17'),
(20, '¡Estoy bien, gracias! ¿Y tú? ¿Cómo va tu día?', 'bot', '2025-05-04 11:47:17'),
(21, 'Excelente!', 'user', '2025-05-04 11:47:24'),
(22, '¡Me alegra que pienses así! ¿Qué te gustaría conversar o compartir?', 'bot', '2025-05-04 11:47:25'),
(23, 'hola', 'user', '2025-05-04 13:09:12'),
(24, '¡Hola! ¿Cómo estás?', 'bot', '2025-05-04 13:09:12'),
(25, 'hola', 'user', '2025-05-04 13:11:04'),
(26, '¡Hola! ¿Cómo estás?', 'bot', '2025-05-04 13:11:05'),
(27, 'hola', 'user', '2025-05-04 18:55:32'),
(28, '¡Hola! ¿Cómo estás?', 'bot', '2025-05-04 18:55:32'),
(29, 'Cuanto es 1 + 2?', 'user', '2025-05-04 19:45:34'),
(30, '1 + 2 es igual a 3. ¿Hay algo más de matemáticas o algún otro tema del que quieras hablar?', 'bot', '2025-05-04 19:45:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
