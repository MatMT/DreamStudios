-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2021 a las 05:29:25
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bsds!`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_1_1`
--

CREATE TABLE `album_1_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_1_1`
--

INSERT INTO `album_1_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Black and White', 'Heartbreak Weather', 'Niall Horan', 'https://drive.google.com/uc?export=download&id=1qXqalEjhQYnLZYkyjmI0rcBn6OsyEj6S'),
(2, 'Nice to meet ya', 'Heartbreak Weather', 'Niall Horan', 'https://drive.google.com/uc?export=download&id=1RP8gf9cY8J5PV6V4JRhpZdChWhKSLH4N\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_1_2`
--

CREATE TABLE `album_1_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_1_2`
--

INSERT INTO `album_1_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'This Town ', 'Flicker ', 'Niall Horan ', 'https://drive.google.com/uc?export=download&id=1-8SMTxY7V2aoTbOf-vQ_BxUC4RqVHp4M'),
(2, 'Put A Little Love On Me ', 'Flicker ', 'Niall Horan ', 'https://drive.google.com/uc?export=download&id=1EJLFZO_kVPcBJQv8U6ijMXHJm7hSDyWc\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_2_1`
--

CREATE TABLE `album_2_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_2_1`
--

INSERT INTO `album_2_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Seasons', 'Jordi', 'Maroon 5', 'https://drive.google.com/uc?export=download&id=13jcymGjhBvd7-pILgbROjl2RLCuBVKtb'),
(2, 'Lovesick', 'Jordi', 'Maroon 5', 'https://drive.google.com/uc?export=download&id=1iA_wFejbiwln1YKwKAnhBzXbzqZr23ff'),
(3, 'Lost', 'Jordi', 'Maroon 5', 'https://drive.google.com/uc?export=download&id=1iA_wFejbiwln1YKwKAnhBzXbzqZr23ff'),
(4, 'Echo', 'Jordi', 'Maroon 5', 'https://drive.google.com/uc?export=download&id=1iA_wFejbiwln1YKwKAnhBzXbzqZr23ff');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_2_2`
--

CREATE TABLE `album_2_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_2_2`
--

INSERT INTO `album_2_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'One More Night ', 'Everexposed ', 'Maroon 5', 'https://drive.google.com/uc?export=download&id=1L7_V5b5KuGhyDdbbR1zwd3EyMII42WW0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_3_1`
--

CREATE TABLE `album_3_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_3_1`
--

INSERT INTO `album_3_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Stay for a bit ', 'Songs4u ', 'Cuco ', 'https://drive.google.com/uc?export=download&id=1ftBNX9CEfYpQgYGVv9tSohAdNJF3A9Vd\r\n'),
(2, 'Neon baby ', 'Songs4u', 'Cuco ', 'https://drive.google.com/uc?export=download&id=1KBcacLs_d7UVhEkcQwcSAcbzvxPptVTf\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_3_2`
--

CREATE TABLE `album_3_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_3_2`
--

INSERT INTO `album_3_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Lo que siento ', 'Solo ', 'Cuco ', 'https://drive.google.com/uc?export=download&id=1-hirz8pb4ZmgGomb8L5I6Xq5G6ZUXRBd\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_3_3`
--

CREATE TABLE `album_3_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_3_3`
--

INSERT INTO `album_3_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Summer Time High Time ', 'Chiquito ', 'Cuco ', 'https://drive.google.com/uc?export=download&id=1gLNpi12CPMCAWA15mVXrIFm09M7Zowlt\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_3_4`
--

CREATE TABLE `album_3_4` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_3_4`
--

INSERT INTO `album_3_4` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Bossa No Sé ', 'Para mi ', 'Cuco ', 'https://drive.google.com/uc?export=download&id=1fcWF1Iedwx9FH2UuMr2bXZWjIN2WPuE2\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_4_1`
--

CREATE TABLE `album_4_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_4_1`
--

INSERT INTO `album_4_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Till Dawn', 'Echoes of Silence ', 'The Weeknd ', 'https://drive.google.com/uc?export=download&id=1EiB4QAKYxnXMiucrBXIXSDug1l_ZUpcB\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_4_2`
--

CREATE TABLE `album_4_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_4_2`
--

INSERT INTO `album_4_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Starboy ', 'After Hours ', 'The Weeknd ', 'https://drive.google.com/uc?export=download&id=1VzFASJhswcA3hszc5zmOM5cBXzuOXp6x\r\n'),
(2, 'Save Your Tears  ', 'After Hours ', 'The Weeknd ', 'https://drive.google.com/uc?export=download&id=1ZtbeozmaNP0p_2IjnZWbb2by2-ZQ6Atr\r\n'),
(3, 'Blindig Lights ', 'After Hours ', 'The Weeknd ', 'https://drive.google.com/uc?export=download&id=1YstnKCjFjeuv4Dg3aLcvde6vt_dUXlL9\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_4_3`
--

CREATE TABLE `album_4_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_4_3`
--

INSERT INTO `album_4_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Eardned it ', 'Cincuenta sombras de Grey (banda sonora) ', 'The Weeknd ', 'https://drive.google.com/uc?export=download&id=1PkYv5PfDE5J1kJ7ODShI92114jAWHT3X\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_5_1`
--

CREATE TABLE `album_5_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_5_1`
--

INSERT INTO `album_5_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Automaton ', 'Automaton ', 'Jamiroquai ', 'https://drive.google.com/uc?export=download&id=12q1wmGtUsDM060tsNao5m_cVFPyUGBRJ\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_5_2`
--

CREATE TABLE `album_5_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_5_2`
--

INSERT INTO `album_5_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Space Cowboy', 'The Return of the Space Cowboy', 'Jamiroquai ', 'https://drive.google.com/uc?export=download&id=1_KTGWO03y-LAkQKZ_Cfh1pzSMNeHE5EQ\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_5_3`
--

CREATE TABLE `album_5_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_5_3`
--

INSERT INTO `album_5_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Little L ', 'A Funk Odyssey ', 'Jamiroquai ', 'https://drive.google.com/uc?export=download&id=1tNcppbRP0kOxPmjr2dwaCCTn8TEqaafb\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_5_4`
--

CREATE TABLE `album_5_4` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_5_4`
--

INSERT INTO `album_5_4` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Cosmic Girl ', 'Travelling without Moving ', 'Jamaroquai ', 'https://drive.google.com/uc?export=download&id=17oKLewROJmu8uief9VAYVQvBL6jhSf-O\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_5_5`
--

CREATE TABLE `album_5_5` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_5_5`
--

INSERT INTO `album_5_5` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(2, 'Caneed Heat ', 'Synkronized', 'Jamiroquai ', 'https://drive.google.com/uc?export=download&id=1aIvNWVjVOYhc1KeXZ1lFUy4hWvxA_t7D\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_6_1`
--

CREATE TABLE `album_6_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_6_1`
--

INSERT INTO `album_6_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Jason ', 'Endless summer ', 'The Midnight - ft Nikki Flores ', 'https://drive.google.com/uc?export=download&id=1NV4pJqRGdnxULvh4GWT2XHgB_SKcwPtR\r\n'),
(2, 'Crockett\'s Revenge', 'Endless summer ', 'The Midnight ', 'https://drive.google.com/uc?export=download&id=1_y8Hnir0gXfooV5vMas39jYHBXhNUXKt\r\n'),
(3, 'Sunset', 'Endless Summer', 'The Midnight', 'https://drive.google.com/uc?export=download&id=1lakLAnPqHKoyD5nW5BLca5819ZVKpquk');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_6_2`
--

CREATE TABLE `album_6_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_6_2`
--

INSERT INTO `album_6_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Deep Blue ', 'Monsters ', 'The Midnight ', 'https://drive.google.com/uc?export=download&id=1THQPMYeEdtWpnhGGASX5qlyOk85qG_5f\r\n'),
(2, 'Last Train', 'Monsters', 'The Midnight', 'https://drive.google.com/uc?export=download&id=1OaVRpP9nGjXEeKDsmBNRdHNyexH9SpRs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_6_3`
--

CREATE TABLE `album_6_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_6_3`
--

INSERT INTO `album_6_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Becase The Night ', 'Horror Show ', 'The Midnight - ft. Nikki Flores\r\n', 'https://drive.google.com/uc?export=download&id=1BrBUR0i5Fb8SOyTcjI5VR2D9OlRX1Zzj\r\n'),
(2, 'Neon Medusa', 'Horror Show', 'The Midnight', 'https://drive.google.com/uc?export=download&id=1dLMeh1gRxcwW0gsSRERW_1sj0FgQMRaV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_6_4`
--

CREATE TABLE `album_6_4` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_6_4`
--

INSERT INTO `album_6_4` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Days of Thunder ', 'Days of Thunder ', 'The Midnight ', 'https://drive.google.com/uc?export=download&id=14I3huXXDbyCo8WWPp2-XN24r89DPdL1q\r\n'),
(2, 'Los Angeles', 'Days of Thunder', 'The Midnight', 'https://drive.google.com/uc?export=download&id=1R6-sBCOPhuJuihATtTPkfhgT0DiS5Kut');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_7_1`
--

CREATE TABLE `album_7_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_7_1`
--

INSERT INTO `album_7_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Whole Lotta Love', 'Led Zeppelin ll ', 'Led Zeppelin ', 'https://drive.google.com/uc?export=download&id=1uH9-82n5g5BithAeiTOJZme5Ct964dCA\r\n'),
(2, 'Heartbreaker ', 'Led Zeppelin ll ', 'Led Zeppelin ', 'https://drive.google.com/uc?export=download&id=1KxSgSOrB3LMewmhQLphTfBI41idph2Cq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_7_2`
--

CREATE TABLE `album_7_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_7_2`
--

INSERT INTO `album_7_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Immigrant song ', 'Led Zeppelin lll', 'Led Zeppelin ', 'https://drive.google.com/uc?export=download&id=1hSeeoa-6_ZudvpDXZC0YONy75S6EMXEI\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_7_3`
--

CREATE TABLE `album_7_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_7_3`
--

INSERT INTO `album_7_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'The Rover', 'Physical Graffiti ', 'Led Zeppelin ', 'https://drive.google.com/uc?export=download&id=1RiCrjmBoQhfnSaaWwUavEQ0dg4rC7MeG\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_7_4`
--

CREATE TABLE `album_7_4` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_7_4`
--

INSERT INTO `album_7_4` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Stairway To Heaven ', 'Led Zeppelin lV ', 'Led Zeppelin ', 'https://drive.google.com/uc?export=download&id=1dSQNwkjAqd2hv4FEVeIR_GsXg9itG7Be\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_8_1`
--

CREATE TABLE `album_8_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_8_1`
--

INSERT INTO `album_8_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Higher Ground ', 'Mother\'s Milk ', 'Red Hot Chilli Peppers ', 'https://drive.google.com/uc?export=download&id=1KQbTMBJg7MLLUCebxkC85ahmp3Fhz9ql');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_8_2`
--

CREATE TABLE `album_8_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_8_2`
--

INSERT INTO `album_8_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Give it away ', 'Sugar Sex Magik ', 'Red Hot Chilli Peppers ', 'https://drive.google.com/uc?export=download&id=1w72ZwpsZjOCL_sQCuj0THoYQ2YgIJ0BI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_8_3`
--

CREATE TABLE `album_8_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_8_3`
--

INSERT INTO `album_8_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Dani California ', 'Stadium Arcadium ', 'Red Hot Chilli Peppers ', 'https://drive.google.com/uc?export=download&id=1R3LlUwTPl8pElH0aAzD_gP6skVlXJ96i');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_8_4`
--

CREATE TABLE `album_8_4` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_8_4`
--

INSERT INTO `album_8_4` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Can\'t Stop ', 'By the way ', 'Red Hot Chilli Peppers ', 'https://drive.google.com/uc?export=download&id=19bBCq-M4yGjDqK1nyKlssdsWHpmWYyW8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_8_5`
--

CREATE TABLE `album_8_5` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_8_5`
--

INSERT INTO `album_8_5` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Californication ', 'Californication ', 'Red Hot Chilli Peppers ', 'https://drive.google.com/uc?export=download&id=18Ebx12l0SCetn0LM-67FqKLhiTx92qQ2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_9_1`
--

CREATE TABLE `album_9_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_9_1`
--

INSERT INTO `album_9_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Poker Face ', 'The Fame ', 'Lady Gaga ', 'https://drive.google.com/uc?export=download&id=1SDCayfLOlKe-OL8qTzM7dVFGgN0zSg8z'),
(2, 'Just Dance ', 'The Fame ', 'Lady Gaga ', 'https://drive.google.com/uc?export=download&id=115siVe2iY9Dacmo43ezq-5CLsVmhrhxL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_9_2`
--

CREATE TABLE `album_9_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_9_2`
--

INSERT INTO `album_9_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Bad Romance ', 'The Fame Monster ', 'Lady Gaga', 'https://drive.google.com/uc?export=download&id=1fV0J4NyiCakiX6-5SsvDk86RKB8EMiDy'),
(2, 'Alejandro ', 'The Fame Monster ', 'Lady Gaga ', 'https://drive.google.com/uc?export=download&id=1y4CLPasVbTvEdagU4DQtdogSluno2QiJ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_9_3`
--

CREATE TABLE `album_9_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_9_3`
--

INSERT INTO `album_9_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Applause ', 'Artpop', 'Lady Gaga ', 'https://drive.google.com/uc?export=download&id=1sf59fAvlYZctLszaZxdi4WxOM06lzeSY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_10_1`
--

CREATE TABLE `album_10_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_10_1`
--

INSERT INTO `album_10_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Physical ', 'Future Nostalgia ', 'Dua Lipa ', 'https://drive.google.com/uc?export=download&id=1twlJWP6PazlBlOHFqYq2Y6c2ClW0Gvqu'),
(2, 'Love Again ', 'Future Nostalgia ', 'Dua Lipa ', 'https://drive.google.com/uc?export=download&id=1bAqgNrcE66dXmgdMpphmKXl4IlmTA7nv'),
(3, 'Levitating ', 'Future Nostalgia ', 'Dua Lipa ', 'https://drive.google.com/uc?export=download&id=1Ex2c9lAtCNVrawh_XLE3pZGLSZ32dur8'),
(4, 'Future Nostalgia ', 'Future Nostalgia ', 'Dua Lipa ', 'https://drive.google.com/uc?export=download&id=1JfBMek80HY0b-4DEKZ4BToHJ4bbzCJF4'),
(5, 'Break My Heart ', 'Future Nostalgia ', 'Dua Lipa ', 'https://drive.google.com/uc?export=download&id=1IIiIndXtGFaG-Ec-R9atA14jNTF0b8hw');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_11_1`
--

CREATE TABLE `album_11_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_11_1`
--

INSERT INTO `album_11_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Té para tres ', 'Canción Animal ', 'Soda Stereo ', 'https://drive.google.com/uc?export=download&id=1-QauD1La0jsiLqE8zNTpBgYxnxTxCZ0T'),
(2, 'De Música Ligera ', 'Canción Animal ', 'Soda Stereo ', 'https://drive.google.com/uc?export=download&id=1DJ6zlWBGNthV91_NUgjwnI5kjr4iChTX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_11_2`
--

CREATE TABLE `album_11_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_11_2`
--

INSERT INTO `album_11_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Persiana Americana ', 'Signos ', 'Soda Stereo ', 'https://drive.google.com/uc?export=download&id=1r7Nfk84u0n31ZDmWoQ353MpbVYsSLMzl'),
(2, 'Prófugos ', 'Signos ', 'Soda Stereo ', 'https://drive.google.com/uc?export=download&id=1oPO9A396YNyDFUA-7wRWBg6eC0MbxSpf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_11_3`
--

CREATE TABLE `album_11_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_11_3`
--

INSERT INTO `album_11_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Cuando pase el temblor ', 'Nada Personal ', 'Soda Stereo ', 'https://drive.google.com/uc?export=download&id=1cFi8hQzl2LTjMYm9WM06fLHS5GhEXk2c'),
(2, 'Nada Personal ', 'Nada Personal', 'Soda Stereo ', 'https://drive.google.com/uc?export=download&id=1QyVM65Rx4DSC9-wvKcs8NsChMoSbusRo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_11_4`
--

CREATE TABLE `album_11_4` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_11_4`
--

INSERT INTO `album_11_4` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Cuando pase el temblor ', 'Nada Personal ', 'Soda Stereo ', 'https://drive.google.com/uc?export=download&id=1cFi8hQzl2LTjMYm9WM06fLHS5GhEXk2c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_11_5`
--

CREATE TABLE `album_11_5` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_11_5`
--

INSERT INTO `album_11_5` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Bajan ', 'Spinetta y las Bandas Eternas ', 'Spinetta - ft Cerati ', 'https://drive.google.com/uc?export=download&id=1T4onJZ8U5lqfOT3C6O8Y1inN4epB6DRj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_11_6`
--

CREATE TABLE `album_11_6` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_11_6`
--

INSERT INTO `album_11_6` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Adiós ', 'Ahí vamos ', 'Gustavo Cerati ', 'https://drive.google.com/uc?export=download&id=1lVdxu5hWuaH-FZjgvU0U68X3ybEOv_if');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_12_1`
--

CREATE TABLE `album_12_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_12_1`
--

INSERT INTO `album_12_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Shake it Off ', '1989', 'Taylor Swift ', 'https://drive.google.com/uc?export=download&id=182oJA2BZMg8_k3sXOAtGxEnZpsu02e4Z'),
(2, 'Blank Space  ', '1989', 'Taylor Swift ', 'https://drive.google.com/uc?export=download&id=12SbmxJbTnjr9Oi1ZGLmshgPb9Z5AMWq8'),
(3, 'Bad Blood ', '1989', 'Taylor Swift ', 'https://drive.google.com/uc?export=download&id=1U0rGRjl9SlxsUB2YxIIFdlSgoawRxpEY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_12_2`
--

CREATE TABLE `album_12_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_12_2`
--

INSERT INTO `album_12_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Look What You Made Me Do', 'Ruputation ', 'Taylor Swift ', 'https://drive.google.com/uc?export=download&id=1KXtdGix4kM9trz805PTE6oRvOxqvoEoq'),
(2, 'Get away car ', 'Ruputation ', 'Taylor Swift ', 'https://drive.google.com/uc?export=download&id=1Rjt9BQprjvDGdjelQAaDSwMtV4YTblmQ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_13_1`
--

CREATE TABLE `album_13_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_13_1`
--

INSERT INTO `album_13_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Dame Una Nite ', 'MAWZ', 'LIT Killah ', 'https://drive.google.com/uc?export=download&id=1tvEa5WTS3bT2ElFFHWe5oeRgeiew3YA4'),
(2, 'My Bag ', 'MAWZ', 'LIT Killah ', 'https://drive.google.com/uc?export=download&id=1-PQal3HDKJ2pSSmu5H9WihK40LNp1l4A'),
(3, 'Dejame Tranki ', 'MAWZ', 'LIT Killah ', 'https://drive.google.com/uc?export=download&id=1Xg9w2zy_86kaFPjdmcorvOYfMVk-FOGF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_13_2`
--

CREATE TABLE `album_13_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_13_2`
--

INSERT INTO `album_13_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Se Terminó ', 'Se Terminó ', 'LIT Killah ', 'https://drive.google.com/uc?export=download&id=1FM_ZNO0f-_6c8CRYPgxw1GqoujCWEiXO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_13_3`
--

CREATE TABLE `album_13_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_13_3`
--

INSERT INTO `album_13_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Flexin\' ', 'Flexin\' ', 'LIT Killah ', 'https://drive.google.com/uc?export=download&id=1px1cnqM8dTGrOpV_PAp0H_O4FZs3ltoq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_14_1`
--

CREATE TABLE `album_14_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_14_1`
--

INSERT INTO `album_14_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Fragments of Time', 'Random Access Memories', 'Draft Punk ', 'https://drive.google.com/uc?export=download&id=10B2neT6kWt_6vyV0WqEqPXH-PT6KGQfX'),
(2, 'Give Life Back to Music', 'Random Access Memories', 'Draft Punk ', 'https://drive.google.com/uc?export=download&id=12MzLdN2BdvdTF6xDqccY5jDJspnFyQpZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_14_2`
--

CREATE TABLE `album_14_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_14_2`
--

INSERT INTO `album_14_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Robot Rock ', 'Human After All', 'Draft Punk ', 'https://drive.google.com/uc?export=download&id=1FNAS5j4NMpACvhbMaUV6wKUjrQ4kKWZd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_14_3`
--

CREATE TABLE `album_14_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_14_3`
--

INSERT INTO `album_14_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Something About Us', 'Discovery ', 'Draft Punk ', 'https://drive.google.com/uc?export=download&id=1L9g15_8Rwt2tUvUwg5HtNjicsV7VSjqv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_14_4`
--

CREATE TABLE `album_14_4` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_14_4`
--

INSERT INTO `album_14_4` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Instant Crush', 'Instant Crush', 'Draft Punk ', 'https://drive.google.com/uc?export=download&id=1MjPtowU-YrZEbztZwgxE3DEt5tCgTZVb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_15_1`
--

CREATE TABLE `album_15_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_15_1`
--

INSERT INTO `album_15_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, '18', 'Four', 'One Direction', 'https://drive.google.com/uc?export=download&id=1crRPVB1uE9Qtaav6W-4vyYqrA0DXs5AA'),
(2, 'Spaces', 'Four', 'One Direction', 'https://drive.google.com/uc?export=download&id=19BJ4rj_wNmeYL73R_U3QD7IDuRSdJ4Df');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_15_2`
--

CREATE TABLE `album_15_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_15_2`
--

INSERT INTO `album_15_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Irresistible', 'Take me Home', 'One Direction', 'https://drive.google.com/uc?export=download&id=1Y94umTCpDscpHlPHGaztwKPVfikT3neG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_15_3`
--

CREATE TABLE `album_15_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_15_3`
--

INSERT INTO `album_15_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Right Now', 'Midnight Memories', 'One Direction', 'https://drive.google.com/uc?export=download&id=1olFE75rzVp_bNn7aaCJ119fI6Rv2bxry');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_15_4`
--

CREATE TABLE `album_15_4` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_15_4`
--

INSERT INTO `album_15_4` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Taken', 'Up All Night', 'One Direction', 'https://drive.google.com/uc?export=download&id=1K3f9Z4od1J1tMi61BALxg4EGYZqNQxm-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_16_1`
--

CREATE TABLE `album_16_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_16_1`
--

INSERT INTO `album_16_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Amnesia', '5 Seconds Of Summer', '5 Seconds Of Summer', 'https://drive.google.com/uc?export=download&id=1agRrddQsh6xPDyFMO6wXU6AQPQLJbFLQ'),
(2, 'Out Of My Limit', '5 Seconds Of Summer', '5 Seconds Of Summer', 'https://drive.google.com/uc?export=download&id=1hRLWcucRXzMml-g0xioMC-vibtbaYCMG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_16_2`
--

CREATE TABLE `album_16_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_16_2`
--

INSERT INTO `album_16_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Ghost of You', 'Youngblood', '5 Seconds Of Summer', 'https://drive.google.com/uc?export=download&id=1rotOzEIGpryvsh9slL7AP53qYNFe1oN6'),
(2, 'Lie To Me', 'Youngblood', '5 Seconds Of Summer', 'https://drive.google.com/uc?export=download&id=1HPRqldQWMmYhoPZBU5vUSBoxog057Wlu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_16_3`
--

CREATE TABLE `album_16_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_16_3`
--

INSERT INTO `album_16_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Jeat Black Heart', 'Sounds Good Feels Good', '5 Seconds Of Summer', 'https://drive.google.com/uc?export=download&id=1gI_S5T_wFx5nfHHXTcx5ojWiaVFSGDUS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_17_1`
--

CREATE TABLE `album_17_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_17_1`
--

INSERT INTO `album_17_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Adiós ', 'Ahí vamos ', 'Gustavo Cerati ', 'https://drive.google.com/uc?export=download&id=1-By-W81zUBziSFn5dmJOPMUntz8lREnq'),
(2, 'Crimen ', 'Ahí Vamos ', 'Gustavo Cerati ', 'https://drive.google.com/uc?export=download&id=1QkdmzTrgGLhkClzh7fFLSKv-gZvvuhw0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_17_2`
--

CREATE TABLE `album_17_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_17_2`
--

INSERT INTO `album_17_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Bocanada ', 'Bocanada ', 'Gustavo Cerati ', 'https://drive.google.com/uc?export=download&id=10OsTiyXKHyTJQhKPgKHd83JeBf9ViWoC'),
(2, 'Puente ', 'Bocanada ', 'Gustavo Cerati ', 'https://drive.google.com/uc?export=download&id=1xyFTGIOUcUeko2kpbdUL_EX3OzaxOeqN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_17_3`
--

CREATE TABLE `album_17_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_17_3`
--

INSERT INTO `album_17_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Bajan ', 'Amor amarillo ', 'Gustavo Cerati ', 'https://drive.google.com/uc?export=download&id=1J61Urr9-EGstxGqfNfeNoWWXlbizVG82'),
(2, 'Te Llevo Para Que Me Lleves', 'Amor amarillo ', 'Gustavo Cerati ', 'https://drive.google.com/uc?export=download&id=1tpggQGboa6buWIW5Wnqlt99hbw2QI7Wf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_18_1`
--

CREATE TABLE `album_18_1` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_18_1`
--

INSERT INTO `album_18_1` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Kumbala ', 'El Circo ', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=download&id=1GC3H2OSI-ogjVCxTuvr3dJ2w1I1tYsae'),
(2, 'Pachuco ', 'El Circo ', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=download&id=1DvjoImgcw7W4Hg-XLF-A3tUcTP_UtrtX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_18_2`
--

CREATE TABLE `album_18_2` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_18_2`
--

INSERT INTO `album_18_2` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'Lo pasado pasado ', 'A 30 Años ', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=download&id=16FaxhVuc93cpQTc2rGFi0y3O3z-S1Vmt'),
(2, 'Los agachados ', 'A 30 Años ', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=download&id=15-Q4PYHmGm64j7rwHEK8wyp9Z-RXiqSO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_18_3`
--

CREATE TABLE `album_18_3` (
  `id_song_a` int(3) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `name_artist` varchar(300) NOT NULL,
  `direction_song` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_18_3`
--

INSERT INTO `album_18_3` (`id_song_a`, `name_song`, `name_album`, `name_artist`, `direction_song`) VALUES
(1, 'El Cocodrilo ', 'Mostro ', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=download&id=1_GW12MX9bDn_kcGcCxSwIWrcCnCCrmaN'),
(2, 'Caer', 'Mostro ', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=download&id=1Lidc-vEq6XLTrD1G6vfO32mlFGFkgY2j');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_dreams`
--

CREATE TABLE `artistas_dreams` (
  `id_art` int(11) NOT NULL,
  `name_artist` varchar(50) NOT NULL,
  `description_art` varchar(500) NOT NULL,
  `e_mail_art` varchar(50) DEFAULT NULL,
  `img_artist` varchar(600) NOT NULL,
  `bg_img_artist` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas_dreams`
--

INSERT INTO `artistas_dreams` (`id_art`, `name_artist`, `description_art`, `e_mail_art`, `img_artist`, `bg_img_artist`) VALUES
(1, 'Niall Horan', 'Niall es un cantante y compositor irlandés. Fue miembro de One Direction y ahora se ha dado a conocer como solista.', 'niall_oficial@gmail.com', 'https://drive.google.com/uc?export=view&id=1i65JZS-baABPxcukXAjIpJVSvbp9wDft', 'https://drive.google.com/uc?export=view&id=17OPxkqn1UvO0SyEUULXrOZ_Y9FR1CdZ5'),
(2, 'Maroon 5', 'Maroon 5 es una banda musical de pop rock​ estadounidense. El grupo se formó originalmente entre 1994 y 1995 como Kara\'s Flowers mientras sus integrantes cursaban la secundaria.', 'maroon_5@gmail.com', 'https://drive.google.com/uc?export=view&id=12KJVRZO_kuK0Cpw9XbgOS6LGVQUMzgE1 ', 'https://drive.google.com/uc?export=view&id=1gFcMqhCPMTLq3K9qwtqs5gwJyL1cbCA5'),
(3, 'Cuco', 'Omar Baños, conocido profesionalmente como Cuco, es un cantautor y productor discográfico estadounidense de Hawthorne, California. Su fama escaló después de lanzar \"Lo Que Siento\".', 'cuco_omar@gmail.com', 'https://drive.google.com/uc?export=view&id=1dFeCjT53Xe2-3X-nqolo4xLVVrY7Uoo2', 'https://drive.google.com/uc?export=view&id=1-0M1wKHILt1wvi4XWN3oxqC2brb8ESfT'),
(4, 'The Weeknd', 'Abel Makkonen Tesfaye, conocido por su nombre artístico The Weeknd, es un cantante, compositor y productor canadiense, conocido por éxitos como «Blinding Lights», «Starboy», «The Hills», «Can\'t Feel My Face» y «I Feel It Coming».​', 'the_weeknd@gmail.com', 'https://drive.google.com/uc?export=view&id=15ILTlx7PxJvnCI-09I28eygf-OfVYpQ5', 'https://drive.google.com/uc?export=view&id=1P3m5TczspjE1bxRBARV4_n2yKd_9eOBM'),
(5, 'Jamiroquai', 'Jamiroquai es un grupo británico de funk y acid jazz que incluye matices de música disco y sonoridades de electrónica. ', 'jamiro_@gmail.com', 'https://drive.google.com/uc?export=view&id=13zyzfHvoK_csStNkQps7kOP2b3ZtVFWE', 'https://drive.google.com/uc?export=view&id=1GFoIOGR6MhH3-Lr8glCaPTMODzOlI7W6'),
(6, 'The Midnight', 'The Midnight es un dúo estadounidense de synthwave compuesto por el cantautor Jamison Tyler Lyle y el productor, compositor y cantante Tim Daniel McEwan.​ ', 'the-midn@gmail.com', 'https://drive.google.com/uc?export=view&id=1ujORPbff0ntcF0joH27fgChIeM3kliR5', 'https://drive.google.com/uc?export=view&id=1UlvN-spbygHAuwrp2e2-m1E8P_rKho2t'),
(7, 'Led Zeppelin', 'Led Zeppelin fue un grupo británico de hard rock fundado en Londres en 1968 por el guitarrista Jimmy Page, quien había pertenecido a The Yardbirds.', 'led_z@gmail.com', 'https://drive.google.com/uc?export=view&id=1z88WK1kIxTUPxV0oarxOBayOa6utIaUy', 'https://drive.google.com/uc?export=view&id=1PPnZVRSuqP8sO-zCsgRiubujanMcszY4'),
(8, 'Red Hot Chili Peppers', 'Red Hot Chili Peppers es una banda de rock estadounidense formada en 1983 en Los Ángeles, California. ', 'red_hot@gmail.com', 'https://drive.google.com/uc?export=view&id=1meL0azf6fc7ETP1LQrAnsJgpHWdoDDlV', 'https://drive.google.com/uc?export=view&id=1meL0azf6fc7ETP1LQrAnsJgpHWdoDDlV'),
(9, 'Lady Gaga', 'Stefani Joanne Angelina Germanotta, más conocida por su nombre artístico Lady Gaga, es una cantante, compositora, productora, bailarina, actriz, activista y diseñadora de moda estadounidense.', 'lady_gg@gmail.com', 'https://drive.google.com/uc?export=view&id=1ZR_wIu3MBXLIy5889-x9o0kDmHQCiOrQ', 'https://drive.google.com/uc?export=view&id=1RwQEEyn0NtoJSyXD7Ykt3AOXaCuaRzK5'),
(10, 'Dua Lipa', 'Dua Lipa es una cantante y compositora británica de etnia albanokosovar. Después de trabajar como modelo, firmó con Warner Bros. Records en 2014 y lanzó su álbum debut homónimo en 2017.', 'dua_lipa@gmail.com', 'https://drive.google.com/uc?export=view&id=1mczwYG2gdhybEJHp3-qx3Oig3LZKTkab', 'https://drive.google.com/uc?export=view&id=1mczwYG2gdhybEJHp3-qx3Oig3LZKTkab'),
(11, 'Soda Stereo', 'Soda Stereo fue una banda argentina de rock formada originalmente en Buenos Aires en 1982 por Gustavo Cerati, Héctor «Zeta» Bosio y Carlos Alberto Ficicchia «Charly Alberti».', 'soda_stero@gmail.com', 'https://drive.google.com/uc?export=view&id=17jcGRDeYSAIQ7GEuzsE9l8l-Z8fL4lAO', 'https://drive.google.com/uc?export=view&id=1tyreZGyaEoNkKl2o93vKGSbkVr3PVUYn'),
(12, 'Taylor Swift', 'Taylor Alison Swift es una cantante, compositora, productora, filántropa y actriz estadounidense. Criada en Wyomissing, se mudó a Nashville a los 14 años para realizar una carrera de música country.', 'taylor_st@gmail.com', 'https://drive.google.com/uc?export=view&id=10SkGq-6cCzRrcI1fqsyG_jzcmxOsFunW', 'https://drive.google.com/uc?export=view&id=1H3CH2skm1GjveJrjAg8sdtJbF4Y8vqZ_'),
(13, 'LIT Killah', 'Mauro Monzón, conocido artísticamente como Lit Killah, es un cantante, rapero y freestyler argentino.​', 'lit_ka@gmail.com', 'https://drive.google.com/uc?export=view&id=1gNRVdR9h1rnowpz4a40eJU10ops5Alep', 'https://drive.google.com/uc?export=view&id=168wzei3xw_3IsO8QmWXfOUbTFmEiQIMe'),
(14, 'Daft Punk ', 'Daft Punk fue un dúo francés de french house formado por los DJ y productores Guy-Manuel de Homem-Christo y Thomas Bangalter.​​​ ', 'daft_punk21@gmail.com', 'https://drive.google.com/uc?export=view&id=1BCQcXuZ73YFfxQJSTUjwdT36tUpN7m2F', 'https://drive.google.com/uc?export=view&id=1DPmPh_PBZpGknponhDZeL_ggBb_UFT7w'),
(15, 'One Direction', 'One Direction  es una boy band británico-irlandesa compuesto en aquel entonces por Harry Styles, Liam Payne, Zayn Malik, Niall Horan y Louis Tomlinson.', 'one_direction@gmail.com', 'https://drive.google.com/uc?export=view&id=1gwv-hH8exq3juo5ptswNNQ1Vo-J3TUUV', 'https://drive.google.com/uc?export=view&id=1CebwWTaYdH0RHWVHJ62l5nBHNEwnZzWW'),
(16, '5 Seconds Of Summer', '5 Seconds of Summer es una banda Australiana, de género pop rock,  integrada por Luke Hemmings (vocalista principal, piano y guitarra), Calum Hood (voz, piano y bajo), Ashton Irwin (batería y voz) y Michael Clifford (guitarrista principal y voz).', '5_seconds_of_summer@gmail.com', 'https://drive.google.com/uc?export=view&id=1qVAex3Cw7lIQx8cit2rDSuPGqHcxjPmp', 'https://drive.google.com/uc?export=view&id=1KVy3QdzPuv4MKDtea5XnMzpIEuDF7DSF'),
(17, 'Cerati', 'Gustavo Adrián Cerati fue un músico, cantautor, actor, y productor discográfico argentino que obtuvo reconocimiento internacional por haber sido el líder de la banda de rock Soda Stereo. ', 'cerati_g@gmail.com', 'https://drive.google.com/uc?export=view&id=1EiflvclMPqImyTTTXGYAI-M-LaKIr1gw', 'https://drive.google.com/uc?export=view&id=1XIDx1oXDsrMlLeGNo98iQZMwJAEoPU2T'),
(18, 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'Maldita Vecindad y los Hijos del Quinto Patio es un grupo musical mexicano, formado en la Ciudad de México que fusiona ritmos como el rock, el ska, el reggae, el punk e influencias tradicionales de la música mexicana como el danzón y el bolero.', 'vecindad_hijos@gmail.com', 'https://drive.google.com/uc?export=view&id=1lQKUFEHYt0WMvZ9F3skmQztsoHkjmdfv', 'https://drive.google.com/uc?export=view&id=1e2i_LqFq28wHCaep1qLoQDq4hvNPXawN'),
(19, 'Bryan Carbajal', 'Es un adolescente de 16 años, quien se ha a desempeñado en le mundo de la música, compartiendo sus grandes habilidades musicales y la destreza para cualquier instrumento.', 'bryan_carbajal@gmail.com', 'https://drive.google.com/uc?export=view&id=1GjQ1lPkhBawei8ZhT7zlA1Ja7ApY8jEc', 'https://drive.google.com/uc?export=view&id=1STGlm_sL9_OO35iUQEQNOFELGorsdC_N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca_dreams`
--

CREATE TABLE `biblioteca_dreams` (
  `id_play` int(11) NOT NULL,
  `name_play` varchar(50) NOT NULL,
  `creator_play` varchar(50) NOT NULL,
  `img_plalist` varchar(250) NOT NULL,
  `description_playlist` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `biblioteca_dreams`
--

INSERT INTO `biblioteca_dreams` (`id_play`, `name_play`, `creator_play`, `img_plalist`, `description_playlist`) VALUES
(1, 'Random', 'Dreams!', 'https://drive.google.com/uc?export=view&id=1WKYbS7YChQphh4PdLRte4kt4Z2itWfPa', ''),
(2, 'Electrolove', 'Dreams!', 'https://drive.google.com/uc?export=view&id=1CinY0-LjrB98ph1rmzQsEQCwR1PrkB9Y', ''),
(3, 'Heart Brake', 'Dreams!', 'https://drive.google.com/uc?export=view&id=1rhc1ZRI_tMJ9LPNq6n5TaNoroSQlPe7m', ''),
(4, 'Para Hispanohablantes', 'Dreams!', 'https://drive.google.com/uc?export=view&id=1KIdInUz6LaAM3wK4SzjXdFeiKbzLSVve', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblio_playlist_1`
--

CREATE TABLE `biblio_playlist_1` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `biblio_playlist_1`
--

INSERT INTO `biblio_playlist_1` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`, `imgAlbum`) VALUES
(1, 'Applause', 'Lady Gaga', 'Artpop', 'https://drive.google.com/uc?export=download&id=1sf59fAvlYZctLszaZxdi4WxOM06lzeSY', 'https://drive.google.com/uc?export=view&id=1xonm71_Bn0lZsv5UqxnkAeO59ds45M7X'),
(2, 'Can\'t Stop', 'Red Hot Chili Peppers', 'By the way', 'https://drive.google.com/uc?export=download&id=19bBCq-M4yGjDqK1nyKlssdsWHpmWYyW8', 'https://drive.google.com/uc?export=view&id=1bWsZPNhAlJTdymepMWLTVSM2DakAUfRy'),
(3, 'Starboy', 'The Weeknd', 'After Hours', 'https://drive.google.com/uc?export=download&id=1VzFASJhswcA3hszc5zmOM5cBXzuOXp6x', 'https://drive.google.com/uc?export=view&id=15ILTlx7PxJvnCI-09I28eygf-OfVYpQ5'),
(4, 'One More Night', 'Maroon 5', 'Overexposed', 'https://drive.google.com/uc?export=download&id=1L7_V5b5KuGhyDdbbR1zwd3EyMII42WW0', 'https://drive.google.com/uc?export=view&id=1OSYsAJTkxMqFatnPlSWHTXCi0aQKfHtt'),
(5, 'Bad Blood', 'Taylor Swift', '1989', 'https://drive.google.com/uc?export=download&id=1U0rGRjl9SlxsUB2YxIIFdlSgoawRxpEY', 'https://drive.google.com/uc?export=view&id=1RcHbhdp5l-zR1H3QMwJNg_NLuRpHxnS3'),
(6, 'Jason', 'The Midnight - ft. Nikki Flores', 'Endless Summer', 'https://drive.google.com/uc?export=download&id=1NV4pJqRGdnxULvh4GWT2XHgB_SKcwPtR', 'https://drive.google.com/uc?export=view&id=1Byg0Tz-Q22dvwxngFNGUk6OIl-s43jW8'),
(7, 'Fragments of Time', 'Daft Punk', 'Random Access Memories', 'https://drive.google.com/uc?export=download&id=10B2neT6kWt_6vyV0WqEqPXH-PT6KGQfX', 'https://drive.google.com/uc?export=view&id=1BCQcXuZ73YFfxQJSTUjwdT36tUpN7m2F'),
(8, 'Cuando pase el temblor', 'Soda Stereo', 'Nada personal', 'https://drive.google.com/uc?export=download&id=1cFi8hQzl2LTjMYm9WM06fLHS5GhEXk2c', 'https://drive.google.com/uc?export=view&id=140yKhfkf_L-t49G6HkZIOTwdAykyodAN'),
(9, 'Whole Lotta Love', 'Led Zeppelin', 'Led Zeppelin II', 'https://drive.google.com/uc?export=download&id=1uH9-82n5g5BithAeiTOJZme5Ct964dCA', 'https://drive.google.com/uc?export=view&id=1lCPabgj5cdnEeZhtM68kOntGmXW-rul9'),
(10, 'Canned Heat', 'Jamiroquai', 'Synkronized', 'https://drive.google.com/uc?export=download&id=1aIvNWVjVOYhc1KeXZ1lFUy4hWvxA_t7D', 'https://drive.google.com/uc?export=view&id=19xtYXpyo2b-SgFFs0ZBCFaJIBy5xfSeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblio_playlist_2`
--

CREATE TABLE `biblio_playlist_2` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `biblio_playlist_2`
--

INSERT INTO `biblio_playlist_2` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`, `imgAlbum`) VALUES
(1, 'Blinding Lights', 'The Weeknd', 'After Hours', 'https://drive.google.com/uc?export=download&id=1YstnKCjFjeuv4Dg3aLcvde6vt_dUXlL9', 'https://drive.google.com/uc?export=view&id=15ILTlx7PxJvnCI-09I28eygf-OfVYpQ5'),
(2, 'Instant Crush', 'Daft Punk', 'Random Access Memories', '//drive.google.com/uc?export=download&id=1MjPtowU-YrZEbztZwgxE3DEt5tCgTZVb', 'https://drive.google.com/uc?export=view&id=1BCQcXuZ73YFfxQJSTUjwdT36tUpN7m2F'),
(3, 'Automaton', 'Jamiroquai', 'Automaton', 'https://drive.google.com/uc?export=download&id=12q1wmGtUsDM060tsNao5m_cVFPyUGBRJ', 'https://drive.google.com/uc?export=view&id=1DKi-PtVzAkC5bP7gT50-h5eBO2VO7l0V'),
(4, 'Neon Medusa', 'The Midnight', 'Horror Show', 'https://drive.google.com/uc?export=download&id=1dLMeh1gRxcwW0gsSRERW_1sj0FgQMRaV', 'https://drive.google.com/uc?export=view&id=1pspPlMgr4IGyorG17W96PHHRyZ87TCDr'),
(5, 'Poker Face', 'Lady Gaga', 'The Fame', 'https://drive.google.com/uc?export=download&id=1SDCayfLOlKe-OL8qTzM7dVFGgN0zSg8z', 'https://drive.google.com/uc?export=view&id=1BNq2SMx70StBykLppyXthQ8YIVFb9opP'),
(6, 'Deep Blue', 'The Midnight', 'Monsters', 'https://drive.google.com/uc?export=download&id=1THQPMYeEdtWpnhGGASX5qlyOk85qG_5f', 'https://drive.google.com/uc?export=view&id=1KQReoN1Ky5CdLXK0ofblr0liGQCOnf-O\r\n'),
(7, 'Bad Romance', 'Lady Gaga', 'The Fame Monster', 'https://drive.google.com/uc?export=download&id=1fV0J4NyiCakiX6-5SsvDk86RKB8EMiDy', 'https://drive.google.com/uc?export=view&id=1N8Cb12T9hY9gZ6ux9JfOR7aI6Amo6fZ9'),
(8, 'Give Life Back to Music', 'Daft Punk', 'Random Access Memories', '//drive.google.com/uc?export=download&id=12MzLdN2BdvdTF6xDqccY5jDJspnFyQpZ', 'https://drive.google.com/uc?export=view&id=1BCQcXuZ73YFfxQJSTUjwdT36tUpN7m2F'),
(9, 'Robot Rock', 'Daft Punk', 'Human After All', '//drive.google.com/uc?export=download&id=1FNAS5j4NMpACvhbMaUV6wKUjrQ4kKWZd', 'https://drive.google.com/uc?export=view&id=1ja6XlVb0tgFicvRXxW03F39Yq94Kkej9'),
(10, 'Save Your Tears', 'The Weeknd', 'After Hours', 'https://drive.google.com/uc?export=download&id=1ZtbeozmaNP0p_2IjnZWbb2by2-ZQ6Atr', 'https://drive.google.com/uc?export=view&id=15ILTlx7PxJvnCI-09I28eygf-OfVYpQ5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblio_playlist_3`
--

CREATE TABLE `biblio_playlist_3` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `biblio_playlist_3`
--

INSERT INTO `biblio_playlist_3` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`, `imgAlbum`) VALUES
(1, 'Cosmic Girl', 'Jamiroquai', 'Travelling without Moving', 'https://drive.google.com/uc?export=download&id=17oKLewROJmu8uief9VAYVQvBL6jhSf-O', 'https://drive.google.com/uc?export=view&id=17xwPgYRhRfwJC9dq8S8wQKyKqt55V2fB'),
(2, 'Nice To Meet Ya', 'Niall Horan', 'Heartbreak Weather', 'https://drive.google.com/uc?export=download&id=1RP8gf9cY8J5PV6V4JRhpZdChWhKSLH4N', 'https://drive.google.com/uc?export=view&id=1qprZovBtXju78eeA3pHlZMX6I_ZF-JwY'),
(3, 'De Música Ligera', 'Soda Stereo', 'Canción animal', 'https://drive.google.com/uc?export=download&id=1DJ6zlWBGNthV91_NUgjwnI5kjr4iChTX', 'https://drive.google.com/uc?export=view&id=1KD4SFEQnCuSSFOKBqvnGq_bIjQfvUw8y'),
(4, ' Future Nostalgia', 'Dua Lipa', ' Future Nostalgia', 'https://drive.google.com/uc?export=download&id=1JfBMek80HY0b-4DEKZ4BToHJ4bbzCJF4', 'https://drive.google.com/uc?export=view&id=18y2id5JNUxApb6Vi8dLl1b567fMpR06p'),
(5, 'Echo', 'Maroon 5 - ft. Blackbear', 'Jordi', 'https://drive.google.com/uc?export=download&id=16-1OTvx4DbrXOXolzIoPmkJ5rhvwuUUy', 'https://drive.google.com/uc?export=view&id=1-F8PYT2ogjOFrVZxzwfycV_9ygLzh3MP'),
(6, 'Immigrant Song', 'Led Zeppelin', 'Zeppelin lll ', 'https://drive.google.com/uc?export=download&id=1hSeeoa-6_ZudvpDXZC0YONy75S6EMXEI', 'https://drive.google.com/uc?export=view&id=17MIruufjMWdLU1HzmaBTCkN7SYuSzU8_'),
(7, 'Eardned It', 'The Weeknd', 'Cincuenta sombras de Grey (banda sonora)', 'https://drive.google.com/uc?export=download&id=1PkYv5PfDE5J1kJ7ODShI92114jAWHT3X', 'https://drive.google.com/uc?export=view&id=1yKeCYNyiKrBsNOtiZPiUBYYFoyYv38t0'),
(8, 'Cross Your Mind', 'Niall Horan', 'Heartbreak Weather', 'https://drive.google.com/uc?export=view&id=1BLZzFjJNw254O957rnbzTHMKdI7TSd0i', 'https://drive.google.com/uc?export=view&id=1qprZovBtXju78eeA3pHlZMX6I_ZF-JwY'),
(9, 'Alejandro', 'Lady Gaga', 'The Fame Monster', 'https://drive.google.com/uc?export=download&id=1y4CLPasVbTvEdagU4DQtdogSluno2QiJ', 'https://drive.google.com/uc?export=view&id=1N8Cb12T9hY9gZ6ux9JfOR7aI6Amo6fZ9'),
(10, 'Space Cowboy', 'Jamiroquai', 'The Return of the Space Cowboy', 'https://drive.google.com/uc?export=download&id=1_KTGWO03y-LAkQKZ_Cfh1pzSMNeHE5EQ', 'https://drive.google.com/uc?export=view&id=1XT9ugNWQnhPkp7hmsqx_00a3uMSWHcjN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblio_playlist_4`
--

CREATE TABLE `biblio_playlist_4` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `biblio_playlist_4`
--

INSERT INTO `biblio_playlist_4` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`, `imgAlbum`) VALUES
(1, 'De Música Ligera', 'Soda Stereo', 'Canción animal', 'https://drive.google.com/uc?export=download&id=1DJ6zlWBGNthV91_NUgjwnI5kjr4iChTX', 'https://drive.google.com/uc?export=view&id=1KD4SFEQnCuSSFOKBqvnGq_bIjQfvUw8y'),
(2, 'Dejame Tranki', 'LIT Killah', 'MAWZ', 'https://drive.google.com/uc?export=download&id=1Xg9w2zy_86kaFPjdmcorvOYfMVk-FOGF', 'https://drive.google.com/uc?export=view&id=1gNRVdR9h1rnowpz4a40eJU10ops5Alep'),
(3, 'Bajan', 'Spinetta - ft. Cerati', 'Spinetta y las Bandas Eternas', 'https://drive.google.com/uc?export=download&id=1T4onJZ8U5lqfOT3C6O8Y1inN4epB6DRj', 'https://drive.google.com/uc?export=view&id=1fvzDe1S_qaSqa-mh_-GbSaADSYg0OIeK'),
(4, 'Puente', 'Gustavo Cerati', 'Bocanada', 'https://drive.google.com/uc?export=download&id=1U6v0jR5qpf3sUv3fjvHaRv7QmZNQ-eca', 'https://drive.google.com/uc?export=view&id=1OMvRs7uaLfFjOIPWnd982-KClGE44PCn'),
(5, 'Se Terminó ', 'LIT Killah', 'Se Terminó', ' https://drive.google.com/uc?export=download&id=1FM_ZNO0f-_6c8CRYPgxw1GqoujCWEiXO', 'https://drive.google.com/uc?export=view&id=1eehCtL507U9XXLRfR9SG1NMQnLWEdsHz'),
(6, 'Adiós', 'Gustavo Cerati', 'Ahí vamos', 'https://drive.google.com/uc?export=download&id=1lVdxu5hWuaH-FZjgvU0U68X3ybEOv_if', 'https://drive.google.com/uc?export=view&id=1MfplSxzAxsBZnLplVdlCqW1MHHYCIh75'),
(7, 'Flexin\'', 'LIT Killah', 'Flexin\'', 'https://drive.google.com/uc?export=download&id=1px1cnqM8dTGrOpV_PAp0H_O4FZs3ltoq', 'https://drive.google.com/uc?export=view&id=1LZVY5Et763QydzXGeuml_oH7LvZkfxbg'),
(8, 'Té para tres', 'Soda Stereo', 'Canción animal', 'https://drive.google.com/uc?export=download&id=1-QauD1La0jsiLqE8zNTpBgYxnxTxCZ0T', 'https://drive.google.com/uc?export=view&id=1KD4SFEQnCuSSFOKBqvnGq_bIjQfvUw8y'),
(9, 'Dame Una Nite', 'LIT Killah', 'MAWZ', 'https://drive.google.com/uc?export=download&id=1tvEa5WTS3bT2ElFFHWe5oeRgeiew3YA4', 'https://drive.google.com/uc?export=view&id=1gNRVdR9h1rnowpz4a40eJU10ops5Alep'),
(10, 'Cuando pase el temblor', 'Soda Stereo', 'Nada personal', 'https://drive.google.com/uc?export=download&id=1cFi8hQzl2LTjMYm9WM06fLHS5GhEXk2c', 'https://drive.google.com/uc?export=view&id=140yKhfkf_L-t49G6HkZIOTwdAykyodAN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_1`
--

CREATE TABLE `dreamaker_artist_1` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_1`
--

INSERT INTO `dreamaker_artist_1` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Heartbreak Weather', 'Niall Horan', 'https://drive.google.com/uc?export=view&id=1qprZovBtXju78eeA3pHlZMX6I_ZF-JwY', NULL, 'Album'),
(2, 'Flicker', 'Niall Horan', 'https://drive.google.com/uc?export=view&id=1Lc25LhDHDgusn_uIUEb6WPuly0MTtQjA', NULL, 'Album'),
(3, 'No Judgement', 'Niall Horan', 'https://drive.google.com/uc?export=view&id=1u5yOuPb87PP9kie0ZUence4IBjeaJ6Um', 'https://drive.google.com/uc?export=download&id=1roLNadmSfOTdAdYqExistLns2wUcYwSX', 'Solo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_2`
--

CREATE TABLE `dreamaker_artist_2` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_2`
--

INSERT INTO `dreamaker_artist_2` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Jordi', 'Maroon 5', 'https://drive.google.com/uc?export=view&id=1-F8PYT2ogjOFrVZxzwfycV_9ygLzh3MP', NULL, 'Album'),
(2, 'Overexposed', 'Maroon 5', 'https://drive.google.com/uc?export=view&id=1OSYsAJTkxMqFatnPlSWHTXCi0aQKfHtt', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_3`
--

CREATE TABLE `dreamaker_artist_3` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_3`
--

INSERT INTO `dreamaker_artist_3` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Songs4u', 'Cuco', 'https://drive.google.com/uc?export=view&id=1DrIBdLCR1LYj58aqNe9hQQwZDAmjiCop', NULL, 'Album'),
(2, 'Chiquito', 'Cuco', 'https://drive.google.com/uc?export=view&id=1GtAMyi3fUZHBDMDaw5OG5fvjqfxU9Xg7', NULL, 'Album'),
(3, 'Para mi', 'Cuco', 'https://drive.google.com/uc?export=view&id=1x2NknWujaZSCSEGoGRSj241V9kvrUGhq', NULL, 'Album'),
(4, 'Lo que siento', 'Cuco', 'https://drive.google.com/uc?export=view&id=1FzBiGnm-R7ogskPCrDns3a-TYg3ZRiWD', 'https://drive.google.com/uc?export=download&id=1-hirz8pb4ZmgGomb8L5I6Xq5G6ZUXRBd', 'Solo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_4`
--

CREATE TABLE `dreamaker_artist_4` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_4`
--

INSERT INTO `dreamaker_artist_4` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'After Hours', 'The Weekend', 'https://drive.google.com/uc?export=view&id=15ILTlx7PxJvnCI-09I28eygf-OfVYpQ5', NULL, 'Album'),
(2, 'Echoes of Silence', 'The Weekend', 'https://drive.google.com/uc?export=view&id=1n6KZrvFeOF33MMoAaBfkgfIK2PvqSp3Y', NULL, 'Album'),
(3, 'Earned It', 'The Weekend', 'https://drive.google.com/uc?export=view&id=1yKeCYNyiKrBsNOtiZPiUBYYFoyYv38t0', 'https://drive.google.com/uc?export=download&id=1PkYv5PfDE5J1kJ7ODShI92114jAWHT3X', 'Solo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_5`
--

CREATE TABLE `dreamaker_artist_5` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_5`
--

INSERT INTO `dreamaker_artist_5` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'The Return of The Space Cowboy', 'Jamiroquai', 'https://drive.google.com/uc?export=view&id=1XT9ugNWQnhPkp7hmsqx_00a3uMSWHcjN', NULL, 'Album'),
(2, 'A Funk Odyssey', 'Jamiroquai', 'https://drive.google.com/uc?export=view&id=1a_6DeaKqU_NDAszgdaLpW9ADmNrm_Gjn', NULL, 'Album'),
(3, 'Travelling Without Moving', 'Jamiroquai', 'https://drive.google.com/uc?export=view&id=17xwPgYRhRfwJC9dq8S8wQKyKqt55V2fB', NULL, 'Album'),
(4, 'Synkronized', 'Jamiroquai', 'https://drive.google.com/uc?export=view&id=19xtYXpyo2b-SgFFs0ZBCFaJIBy5xfSeg', NULL, 'Album'),
(5, 'Automaton', 'Jamiroquai', 'https://drive.google.com/uc?export=view&id=1DKi-PtVzAkC5bP7gT50-h5eBO2VO7l0V', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_6`
--

CREATE TABLE `dreamaker_artist_6` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_6`
--

INSERT INTO `dreamaker_artist_6` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Endless Summer', 'The Midnight', 'https://drive.google.com/uc?export=view&id=1Byg0Tz-Q22dvwxngFNGUk6OIl-s43jW8', NULL, 'Album'),
(2, 'Monsters', 'The Midnight', 'https://drive.google.com/uc?export=view&id=1KQReoN1Ky5CdLXK0ofblr0liGQCOnf-O\r\n\r\n', NULL, 'Album'),
(3, 'Days of Thunder', 'The Midnight', 'https://drive.google.com/uc?export=view&id=1PVa6Ex3ByKEh3jZKdPlvZLmr8PV3K_ui\r\n\r\n', NULL, 'Album'),
(4, 'Horror Show', 'The Midnight', 'https://drive.google.com/uc?export=view&id=1pspPlMgr4IGyorG17W96PHHRyZ87TCDr', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_7`
--

CREATE TABLE `dreamaker_artist_7` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_7`
--

INSERT INTO `dreamaker_artist_7` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Led Zeppelin II', 'Led Zeppelin', 'https://drive.google.com/uc?export=view&id=1lCPabgj5cdnEeZhtM68kOntGmXW-rul9', NULL, 'Album'),
(2, 'Physical Graffiti', 'Led Zeppelin', 'https://drive.google.com/uc?export=view&id=1MalScK_d5xFLSTyLWO0cWES8j3CUNfjN\r\n\r\n', NULL, 'Album'),
(3, 'Led Zeppelin IV', 'Led Zeppelin', 'https://drive.google.com/uc?export=view&id=1mY1ieEQCs-QmQ_QpH4Zdbu27zuV8_EP3', NULL, 'Album'),
(4, 'Led Zeppelin III', 'Led Zeppelin', 'https://drive.google.com/uc?export=view&id=17MIruufjMWdLU1HzmaBTCkN7SYuSzU8_\r\n\r\n', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_8`
--

CREATE TABLE `dreamaker_artist_8` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_8`
--

INSERT INTO `dreamaker_artist_8` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Mother\'s Milk', 'Red Hot Chili Peppers', 'https://drive.google.com/uc?export=view&id=1TC3pD9_53bus1e5hxHiXfdL7G71-anFk\r\n\r\n', NULL, 'Album'),
(2, 'Blood Sugar Sex Magik', 'Red Hot Chili Peppers', 'https://drive.google.com/uc?export=view&id=18bCS5fGNEmm7kcVG3lXzFZJAbDFCle5O\r\n', NULL, 'Album'),
(3, 'Stadium Arcadium', 'Red Hot Chili Peppers', 'https://drive.google.com/uc?export=view&id=1-KovWjOrXbWXY3-bA0yVsGOM6H6DrF1t\r\n', NULL, 'Album'),
(4, 'By the way', 'Red Hot Chili Peppers', 'https://drive.google.com/uc?export=view&id=1bWsZPNhAlJTdymepMWLTVSM2DakAUfRy', NULL, 'Album'),
(5, 'Californication', 'Red Hot Chili Peppers', 'https://drive.google.com/uc?export=view&id=1Eg7Jjrzvvz_vcEapVx_MZUThplnUGpaq\r\n\r\n', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_9`
--

CREATE TABLE `dreamaker_artist_9` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_9`
--

INSERT INTO `dreamaker_artist_9` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'The Fame', 'Lady Gaga', 'https://drive.google.com/uc?export=view&id=1BNq2SMx70StBykLppyXthQ8YIVFb9opP', NULL, 'Album'),
(2, 'The Fame Monster', 'Lady Gaga', 'https://drive.google.com/uc?export=view&id=1N8Cb12T9hY9gZ6ux9JfOR7aI6Amo6fZ9', NULL, 'Album'),
(3, 'Artpop', 'Lady Gaga', 'https://drive.google.com/uc?export=view&id=1xonm71_Bn0lZsv5UqxnkAeO59ds45M7X', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_10`
--

CREATE TABLE `dreamaker_artist_10` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_10`
--

INSERT INTO `dreamaker_artist_10` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Future Nostalgia', 'Dua Lipa', 'https://drive.google.com/uc?export=view&id=18y2id5JNUxApb6Vi8dLl1b567fMpR06p', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_11`
--

CREATE TABLE `dreamaker_artist_11` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_11`
--

INSERT INTO `dreamaker_artist_11` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Canción animal', 'Soda Stereo', 'https://drive.google.com/uc?export=view&id=1KD4SFEQnCuSSFOKBqvnGq_bIjQfvUw8y', NULL, 'Album'),
(2, 'Bocanada', 'Gustavo Cerati', 'https://drive.google.com/uc?export=view&id=1OMvRs7uaLfFjOIPWnd982-KClGE44PCn', NULL, 'Album'),
(3, 'Signos', 'Soda Stereo', 'https://drive.google.com/uc?export=view&id=151G-6TgNxXe8USpejg1QPQd0ZOY0TtCG', NULL, 'Album'),
(4, 'Nada personal', 'Soda Stereo', 'https://drive.google.com/uc?export=view&id=140yKhfkf_L-t49G6HkZIOTwdAykyodAN', NULL, 'Album'),
(5, 'Spinetta y las bandas eternas', 'Spinetta - ft. Cerati', 'https://drive.google.com/uc?export=view&id=1fvzDe1S_qaSqa-mh_-GbSaADSYg0OIeK', NULL, 'Album'),
(6, 'Ahí vamos', 'Gustavo Cerati', 'https://drive.google.com/uc?export=view&id=1MfplSxzAxsBZnLplVdlCqW1MHHYCIh75', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_12`
--

CREATE TABLE `dreamaker_artist_12` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_12`
--

INSERT INTO `dreamaker_artist_12` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, '1989', 'Taylor Swift', 'https://drive.google.com/uc?export=view&id=1RcHbhdp5l-zR1H3QMwJNg_NLuRpHxnS3', NULL, 'Album'),
(2, 'Reputation ', 'Taylor Swift', 'https://drive.google.com/uc?export=view&id=1hQofphObysBRb63e3y1lCmBW-yaOWjDf', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_13`
--

CREATE TABLE `dreamaker_artist_13` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_13`
--

INSERT INTO `dreamaker_artist_13` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'MAWZ', 'LIT Killah', 'https://drive.google.com/uc?export=view&id=1gNRVdR9h1rnowpz4a40eJU10ops5Alep', NULL, 'Album'),
(2, 'Se Terminó', 'LIT Killah', 'https://drive.google.com/uc?export=view&id=1eehCtL507U9XXLRfR9SG1NMQnLWEdsHz', NULL, 'Album'),
(3, 'Flexin\'', 'LIT Killah', 'https://drive.google.com/uc?export=view&id=1LZVY5Et763QydzXGeuml_oH7LvZkfxbg', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_14`
--

CREATE TABLE `dreamaker_artist_14` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_14`
--

INSERT INTO `dreamaker_artist_14` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Random Access Memories', 'Daft Punk', 'https://drive.google.com/uc?export=view&id=1BCQcXuZ73YFfxQJSTUjwdT36tUpN7m2F', NULL, 'Album'),
(2, 'Human After All', 'Daft Punk', 'https://drive.google.com/uc?export=view&id=1ja6XlVb0tgFicvRXxW03F39Yq94Kkej9', NULL, 'Album'),
(3, 'Discovery', 'Daft Punk', 'https://drive.google.com/uc?export=view&id=1D1mMywu7C6raa8ubelgsgp7N6s4axddP', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_15`
--

CREATE TABLE `dreamaker_artist_15` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_15`
--

INSERT INTO `dreamaker_artist_15` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Four', 'One Direction', 'https://drive.google.com/uc?export=view&id=1TcecN470j6vQcl-vShgXGhVubVlJAZ-j', NULL, 'Album'),
(2, 'Midnight Memories', 'One Direction', 'https://drive.google.com/uc?export=view&id=1f6qxWqpjH0Mj3p-rkNvutMK4bO_JT3E0', NULL, 'Album'),
(3, 'Take me Home', 'One Direction', 'https://drive.google.com/uc?export=view&id=1F-fYDb4xFTCrLf9X77iSDA7Jkn-4No8H', NULL, 'Album'),
(4, 'Up All Night', 'One Direction', 'https://drive.google.com/uc?export=view&id=1-k9M5hcFCgMoywXVPDeljSY3KE4IcNZN', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_16`
--

CREATE TABLE `dreamaker_artist_16` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_16`
--

INSERT INTO `dreamaker_artist_16` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, '5 Seconds of Summer', '5 Seconds of Summer', 'https://drive.google.com/uc?export=view&id=1uTQ17RYnENvEarlGeR5H7r_nRVRRymgT', NULL, 'Album'),
(2, 'Sounds Good Feels Good', '5 Seconds of Summer', 'https://drive.google.com/uc?export=view&id=1mwdJVc7W99d2M-49ZwJA5CS-i3aaDhPy', NULL, 'Album'),
(3, 'Youngblood', '5 Seconds of Summer', 'https://drive.google.com/uc?export=view&id=1q8ly0hHzLlRigmPB_1Hu04wqZLwMSUnD', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_17`
--

CREATE TABLE `dreamaker_artist_17` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_17`
--

INSERT INTO `dreamaker_artist_17` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'Ahí vamos', 'Gustavo Cerati', 'https://drive.google.com/uc?export=view&id=1J1kzfAZqL73cKuo8DmOZs6S-KEGa71L0', NULL, 'Album'),
(2, 'Bocanada', 'Gustavo Cerati', 'https://drive.google.com/uc?export=view&id=1xk5jMslPQ9rRBDyk6W80QXVUgHZAsC5F', NULL, 'Album'),
(3, 'Amor amarillo', 'Gustavo Cerati', 'https://drive.google.com/uc?export=view&id=1sFY_Zx2Z3jGekBjI101cOw9IBmzeY0Kf', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dreamaker_artist_18`
--

CREATE TABLE `dreamaker_artist_18` (
  `id_album` int(11) NOT NULL,
  `nameAlbum` varchar(50) NOT NULL,
  `nameArtist` varchar(50) NOT NULL,
  `imgAlbum` varchar(500) NOT NULL,
  `direction_song` varchar(500) DEFAULT NULL,
  `tipo_song` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dreamaker_artist_18`
--

INSERT INTO `dreamaker_artist_18` (`id_album`, `nameAlbum`, `nameArtist`, `imgAlbum`, `direction_song`, `tipo_song`) VALUES
(1, 'El Circo', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=view&id=1MRzwuBZCM7R8pbxHfIoXzUMmd-lBbAYn', NULL, 'Album'),
(2, 'A 30 Años', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=view&id=1Wa4chJxytckyhxi293e-2j5S5PQv7otQ', NULL, 'Album'),
(3, 'Mostro', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'https://drive.google.com/uc?export=view&id=1nvECnZT2sr-8Edu-ThSlfmoVJAe3uwcz', NULL, 'Album');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_1`
--

CREATE TABLE `playlist_artist_1` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_1`
--

INSERT INTO `playlist_artist_1` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Cross Your Mind', 'Niall Horan', 'Heartbreak Weather', 'https://drive.google.com/uc?export=view&id=1BLZzFjJNw254O957rnbzTHMKdI7TSd0i'),
(2, 'This Town', 'Niall Horan', 'Flicker', 'https://drive.google.com/uc?export=download&id=1-8SMTxY7V2aoTbOf-vQ_BxUC4RqVHp4M\n'),
(3, 'Put A Little Love On Me', 'Niall Horan', 'Flicker', 'https://drive.google.com/uc?export=download&id=1BLZzFjJNw254O957rnbzTHMKdI7TSd0i'),
(4, 'No Judgement', 'Niall Horan', 'Solo', 'https://drive.google.com/uc?export=download&id=1roLNadmSfOTdAdYqExistLns2wUcYwSX'),
(5, 'Nice to meet ya', 'Niall Horan', 'Heartbreak Weather', 'https://drive.google.com/uc?export=download&id=1RP8gf9cY8J5PV6V4JRhpZdChWhKSLH4N'),
(6, 'Black And White', 'Niall Horan', 'Heartbreak Weather', 'https://drive.google.com/uc?export=download&id=1qXqalEjhQYnLZYkyjmI0rcBn6OsyEj6S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_2`
--

CREATE TABLE `playlist_artist_2` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_2`
--

INSERT INTO `playlist_artist_2` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'One more night', 'Maroon 5', 'Overexposed', 'https://drive.google.com/uc?export=download&id=1L7_V5b5KuGhyDdbbR1zwd3EyMII42WW0'),
(2, 'Seasons', 'Maroon 5', 'Jordi', 'https://drive.google.com/uc?export=download&id=13jcymGjhBvd7-pILgbROjl2RLCuBVKtb'),
(3, 'Lovesick', 'Maroon 5', 'Jordi', 'https://drive.google.com/uc?export=download&id=1iA_wFejbiwln1YKwKAnhBzXbzqZr23ff'),
(4, 'Lost', 'Maroon 5', 'Jordi', 'https://drive.google.com/uc?export=download&id=1LDpdJ5RoZUd2-kVKbezuxzmZBYGBB4Aa'),
(5, 'Echo', 'Maroon 5 - ft. Blackbear', 'Jordi', 'https://drive.google.com/uc?export=16-1OTvx4DbrXOXolzIoPmkJ5rhvwuUUy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_3`
--

CREATE TABLE `playlist_artist_3` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_3`
--

INSERT INTO `playlist_artist_3` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Lo que siento', 'Cuco', 'Solo', 'https://drive.google.com/uc?export=download&id=1-hirz8pb4ZmgGomb8L5I6Xq5G6ZUXRBd'),
(2, 'Summer Time High Time', 'Cuco', 'Chiquito', 'https://drive.google.com/uc?export=download&id=1gLNpi12CPMCAWA15mVXrIFm09M7Zowlt'),
(3, 'Stay for a bit', 'Cuco', 'Songs4u', 'https://drive.google.com/uc?export=download&id=1ftBNX9CEfYpQgYGVv9tSohAdNJF3A9Vd'),
(4, 'Neon Baby', 'Cuco', 'Songs4u', 'https://drive.google.com/uc?export=download&id=1KBcacLs_d7UVhEkcQwcSAcbzvxPptVTf'),
(5, 'Bossa No sé', 'Cuco', 'Para Mi', 'https://drive.google.com/uc?export=download&id=1fcWF1Iedwx9FH2UuMr2bXZWjIN2WPuE2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_4`
--

CREATE TABLE `playlist_artist_4` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_4`
--

INSERT INTO `playlist_artist_4` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Till Dawn', 'The Weeknd', 'Echoes of Silence', 'https://drive.google.com/uc?export=download&id=1EiB4QAKYxnXMiucrBXIXSDug1l_ZUpcB'),
(2, 'Starboy', 'The Weeknd', 'After Hours', 'https://drive.google.com/uc?export=download&id=1VzFASJhswcA3hszc5zmOM5cBXzuOXp6x'),
(3, 'Save Your Tears', 'The Weeknd', 'After Hours', 'https://drive.google.com/uc?export=download&id=1ZtbeozmaNP0p_2IjnZWbb2by2-ZQ6Atr'),
(4, 'Eardned It', 'The Weeknd', 'Cincuenta sombras de Grey (banda sonora)', 'https://drive.google.com/uc?export=download&id=1PkYv5PfDE5J1kJ7ODShI92114jAWHT3X'),
(5, 'Blinding Lights', 'The Weeknd', 'After Hours', 'https://drive.google.com/uc?export=download&id=1YstnKCjFjeuv4Dg3aLcvde6vt_dUXlL9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_5`
--

CREATE TABLE `playlist_artist_5` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_5`
--

INSERT INTO `playlist_artist_5` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Space Cowboy', 'Jamiroquai', 'The Return of the Space Cowboy', 'https://drive.google.com/uc?export=download&id=1_KTGWO03y-LAkQKZ_Cfh1pzSMNeHE5EQ'),
(2, 'Little L', 'Jamiroquai', 'A Funk Odyssey', 'https://drive.google.com/uc?export=download&id=1tNcppbRP0kOxPmjr2dwaCCTn8TEqaafb'),
(3, 'Cosmic Girl', 'Jamiroquai', 'Travelling without Moving', 'https://drive.google.com/uc?export=download&id=17oKLewROJmu8uief9VAYVQvBL6jhSf-O'),
(4, 'Canned Heat', 'Jamiroquai', 'Synkronized', 'https://drive.google.com/uc?export=download&id=1aIvNWVjVOYhc1KeXZ1lFUy4hWvxA_t7D'),
(5, 'Automaton', 'Jamiroquai', 'Automaton', 'https://drive.google.com/uc?export=download&id=12q1wmGtUsDM060tsNao5m_cVFPyUGBRJ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_6`
--

CREATE TABLE `playlist_artist_6` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_6`
--

INSERT INTO `playlist_artist_6` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Jason', 'The Midnight - ft. Nikki Flores', 'Endless Summer', 'https://drive.google.com/uc?export=download&id=1NV4pJqRGdnxULvh4GWT2XHgB_SKcwPtR'),
(2, 'Deep Blue', 'The Midnight', 'Monsters', 'https://drive.google.com/uc?export=download&id=1_y8Hnir0gXfooV5vMas39jYHBXhNUXKt'),
(3, 'Crockett\'s Revenge', 'The Midnight', 'Endless Summer', 'https://drive.google.com/uc?export=download&id=1_y8Hnir0gXfooV5vMas39jYHBXhNUXKt'),
(4, 'Because The Night', 'The Midnight - ft. Nikki Flores', 'Horror Show', 'https://drive.google.com/uc?export=download&id=1BrBUR0i5Fb8SOyTcjI5VR2D9OlRX1Zzj'),
(5, 'Days of Thunder', 'The Midnight', 'Days of Thunder', 'https://drive.google.com/uc?export=download&id=14I3huXXDbyCo8WWPp2-XN24r89DPdL1q'),
(6, 'Neon Medusa', 'The Midnight', 'Horror Show', 'https://drive.google.com/uc?export=download&id=1dLMeh1gRxcwW0gsSRERW_1sj0FgQMRaV'),
(7, 'Sunset', 'The Midnight', 'Endless Summer', 'https://drive.google.com/uc?export=download&id=1lakLAnPqHKoyD5nW5BLca5819ZVKpquk'),
(8, 'Los Angeles', 'The Midnight', 'Days of Thunder', 'https://drive.google.com/uc?export=download&id=1R6-sBCOPhuJuihATtTPkfhgT0DiS5Kut'),
(9, 'Last Train', 'The Midnight', 'Monsters', 'https://drive.google.com/uc?export=download&id=1OaVRpP9nGjXEeKDsmBNRdHNyexH9SpRs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_7`
--

CREATE TABLE `playlist_artist_7` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_7`
--

INSERT INTO `playlist_artist_7` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Whole Lotta Love', 'Led Zeppelin', 'Led Zeppelin II', 'https://drive.google.com/uc?export=download&id=1uH9-82n5g5BithAeiTOJZme5Ct964dCA'),
(2, 'The Rover', 'Led Zeppelin', 'Physical Graffiti', 'https://drive.google.com/uc?export=download&id=1RiCrjmBoQhfnSaaWwUavEQ0dg4rC7MeG'),
(3, 'Stairway To Heaven', 'Led Zeppelin', 'Led Zeppelin IV', 'https://drive.google.com/uc?export=download&id=1dSQNwkjAqd2hv4FEVeIR_GsXg9itG7Be'),
(4, 'Immigrant Song', 'Led Zeppelin', 'Zeppelin lll ', 'https://drive.google.com/uc?export=download&id=1hSeeoa-6_ZudvpDXZC0YONy75S6EMXEI'),
(5, 'Heartbreaker', 'Led Zeppelin', 'Led Zeppelin II', 'https://drive.google.com/uc?export=download&id=1KxSgSOrB3LMewmhQLphTfBI41idph2Cq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_8`
--

CREATE TABLE `playlist_artist_8` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_8`
--

INSERT INTO `playlist_artist_8` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Higher Ground', 'Red Hot Chili Peppers', 'Mother\'s Milk', 'https://drive.google.com/uc?export=download&id=1KQbTMBJg7MLLUCebxkC85ahmp3Fhz9ql'),
(2, 'Give it away', 'Red Hot Chili Peppers', 'Sugar Sex Magik', 'https://drive.google.com/uc?export=download&id=1w72ZwpsZjOCL_sQCuj0THoYQ2YgIJ0BI'),
(3, 'Dani California ', 'Red Hot Chili Peppers ', 'Stadium Arcadium ', 'https://drive.google.com/uc?export=download&id=1R3LlUwTPl8pElH0aAzD_gP6skVlXJ96i'),
(4, 'Can\'t Stop', 'Red Hot Chili Peppers', 'By the way', 'https://drive.google.com/uc?export=download&id=19bBCq-M4yGjDqK1nyKlssdsWHpmWYyW8'),
(5, 'Californication ', 'Red Hot Chili Peppers', 'Californication', 'https://drive.google.com/uc?export=download&id=18Ebx12l0SCetn0LM-67FqKLhiTx92qQ2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_9`
--

CREATE TABLE `playlist_artist_9` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_9`
--

INSERT INTO `playlist_artist_9` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Poker Face', 'Lady Gaga', 'The Fame', 'https://drive.google.com/uc?export=download&id=1SDCayfLOlKe-OL8qTzM7dVFGgN0zSg8z'),
(2, 'Just Dance', 'Lady Gaga', 'The Fame', 'https://drive.google.com/uc?export=download&id=115siVe2iY9Dacmo43ezq-5CLsVmhrhxL'),
(3, 'Bad Romance', 'Lady Gaga', 'The Fame Monster', 'https://drive.google.com/uc?export=download&id=1fV0J4NyiCakiX6-5SsvDk86RKB8EMiDy'),
(4, 'Applause', 'Lady Gaga', 'Artpop', 'https://drive.google.com/uc?export=download&id=1sf59fAvlYZctLszaZxdi4WxOM06lzeSY'),
(5, 'Alejandro', 'Lady Gaga', 'The Fame Monster', 'https://drive.google.com/uc?export=download&id=1y4CLPasVbTvEdagU4DQtdogSluno2QiJ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_10`
--

CREATE TABLE `playlist_artist_10` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_10`
--

INSERT INTO `playlist_artist_10` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Physical', 'Dua Lipa', 'Future Nostalgia', 'https://drive.google.com/uc?export=download&id=1JfBMek80HY0b-4DEKZ4BToHJ4bbzCJF4'),
(2, 'Love Again', 'Dua Lipa', 'Future Nostalgia', 'https://drive.google.com/uc?export=download&id=1bAqgNrcE66dXmgdMpphmKXl4IlmTA7nv'),
(3, 'Levitating', 'Dua Lipa', 'Future Nostalgia', 'https://drive.google.com/uc?export=download&id=1Ex2c9lAtCNVrawh_XLE3pZGLSZ32dur8'),
(4, 'Future Nostalgia', 'Dua Lipa', 'Future Nostalgia', 'https://drive.google.com/uc?export=download&id=1JfBMek80HY0b-4DEKZ4BToHJ4bbzCJF4'),
(5, 'Break My Heart', 'Dua Lipa', 'Future Nostalgia', 'https://drive.google.com/uc?export=download&id=1IIiIndXtGFaG-Ec-R9atA14jNTF0b8hw');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_11`
--

CREATE TABLE `playlist_artist_11` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_11`
--

INSERT INTO `playlist_artist_11` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Té para tres', 'Soda Stereo', 'Canción animal', 'https://drive.google.com/uc?export=download&id=1-QauD1La0jsiLqE8zNTpBgYxnxTxCZ0T'),
(2, 'Puente', 'Gustavo Cerati', 'Bocanada', 'https://drive.google.com/uc?export=download&id=1U6v0jR5qpf3sUv3fjvHaRv7QmZNQ-eca'),
(3, 'Persiana Americana', 'Soda Stereo', 'Signos', 'https://drive.google.com/uc?export=download&id=1r7Nfk84u0n31ZDmWoQ353MpbVYsSLMzl'),
(4, 'De Música Ligera', 'Soda Stereo', 'Canción animal', 'https://drive.google.com/uc?export=download&id=1DJ6zlWBGNthV91_NUgjwnI5kjr4iChTX'),
(5, 'Cuando pase el temblor', 'Soda Stereo', 'Nada personal', 'https://drive.google.com/uc?export=download&id=1cFi8hQzl2LTjMYm9WM06fLHS5GhEXk2c'),
(6, 'Bajan', 'Spinetta - ft. Cerati', 'Spinetta y las Bandas Eternas', 'https://drive.google.com/uc?export=download&id=1T4onJZ8U5lqfOT3C6O8Y1inN4epB6DRj'),
(7, 'Adiós', 'Gustavo Cerati', 'Ahí vamos', 'https://drive.google.com/uc?export=download&id=1lVdxu5hWuaH-FZjgvU0U68X3ybEOv_if');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_12`
--

CREATE TABLE `playlist_artist_12` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_12`
--

INSERT INTO `playlist_artist_12` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Shake it Off', 'Taylor Swift', '1989', 'https://drive.google.com/uc?export=download&id=182oJA2BZMg8_k3sXOAtGxEnZpsu02e4Z'),
(2, 'Look What You Made Me Do', 'Taylor Swift', 'Reputation', 'https://drive.google.com/uc?export=download&id=1KXtdGix4kM9trz805PTE6oRvOxqvoEoq'),
(3, 'Get away car', 'Taylor Swift', 'Reputation', 'https://drive.google.com/uc?export=download&id=1Rjt9BQprjvDGdjelQAaDSwMtV4YTblmQ'),
(4, 'Blank Space', 'Taylor Swift', '1989', 'https://drive.google.com/uc?export=download&id=12SbmxJbTnjr9Oi1ZGLmshgPb9Z5AMWq8'),
(5, 'Bad Blood', 'Taylor Swift', '1989', 'https://drive.google.com/uc?export=download&id=1U0rGRjl9SlxsUB2YxIIFdlSgoawRxpEY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_13`
--

CREATE TABLE `playlist_artist_13` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_13`
--

INSERT INTO `playlist_artist_13` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Dame Una Nite', 'LIT Killah', 'MAWZ', 'https://drive.google.com/uc?export=download&id=1tvEa5WTS3bT2ElFFHWe5oeRgeiew3YA4\n'),
(2, 'My Bag', 'LIT Killah', 'MAWZ', 'https://drive.google.com/uc?export=download&id=1-PQal3HDKJ2pSSmu5H9WihK40LNp1l4A'),
(4, 'Dejame Tranki', 'LIT Killah', 'MAWZ', 'https://drive.google.com/uc?export=download&id=1Xg9w2zy_86kaFPjdmcorvOYfMVk-FOGF'),
(5, 'Se Terminó ', 'LIT Killah', 'Se Terminó', ' https://drive.google.com/uc?export=download&id=1FM_ZNO0f-_6c8CRYPgxw1GqoujCWEiXO'),
(6, 'Flexin\'', 'LIT Killah', 'Flexin\'', 'https://drive.google.com/uc?export=download&id=1px1cnqM8dTGrOpV_PAp0H_O4FZs3ltoq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_14`
--

CREATE TABLE `playlist_artist_14` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_14`
--

INSERT INTO `playlist_artist_14` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Fragments of Time', 'Daft Punk', 'Random Access Memories', 'https: //drive.google.com/uc?export=download&id=10B2neT6kWt_6vyV0WqEqPXH-PT6KGQfX\r\n\r\n'),
(2, 'Give Life Back to Music', 'Daft Punk', 'Random Access Memories', '//drive.google.com/uc?export=download&id=12MzLdN2BdvdTF6xDqccY5jDJspnFyQpZ\r\n'),
(3, 'Robot Rock', 'Daft Punk', 'Human After All', '//drive.google.com/uc?export=download&id=1FNAS5j4NMpACvhbMaUV6wKUjrQ4kKWZd'),
(4, 'Something About Us', 'Daft Punk', 'Discovery', '//drive.google.com/uc?export=download&id=1L9g15_8Rwt2tUvUwg5HtNjicsV7VSjqv\r\n'),
(5, 'Instant Crush', 'Daft Punk', 'Instant Crush', '//drive.google.com/uc?export=download&id=1MjPtowU-YrZEbztZwgxE3DEt5tCgTZVb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_15`
--

CREATE TABLE `playlist_artist_15` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_15`
--

INSERT INTO `playlist_artist_15` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, '18', 'One Direction', 'Four', 'https://drive.google.com/uc?export=download&id=1crRPVB1uE9Qtaav6W-4vyYqrA0DXs5AA'),
(2, 'Spaces', 'One Direction', 'Four', 'https://drive.google.com/uc?export=download&id=19BJ4rj_wNmeYL73R_U3QD7IDuRSdJ4Df'),
(3, 'Irresistible', 'One Direction', 'Take me Home', 'https://drive.google.com/uc?export=download&id=1Y94umTCpDscpHlPHGaztwKPVfikT3neG'),
(4, 'Right Now', 'One Direction', 'Midnight Memories', 'https://drive.google.com/uc?export=download&id=1olFE75rzVp_bNn7aaCJ119fI6Rv2bxry'),
(5, 'Taken', 'One Direction', 'Up All Night', 'https://drive.google.com/uc?export=download&id=1K3f9Z4od1J1tMi61BALxg4EGYZqNQxm-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_16`
--

CREATE TABLE `playlist_artist_16` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_16`
--

INSERT INTO `playlist_artist_16` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Amnesia', '5 Seconds Of Summer', '5 Seconds Of Summer', 'https://drive.google.com/uc?export=download&id=1agRrddQsh6xPDyFMO6wXU6AQPQLJbFLQ'),
(2, 'Ghost of You', '5 Seconds Of Summer', 'Youngblood', 'https://drive.google.com/uc?export=download&id=1rotOzEIGpryvsh9slL7AP53qYNFe1oN6'),
(3, 'Lie To Me', '5 Seconds Of Summer', 'Youngblood', 'https://drive.google.com/uc?export=download&id=1HPRqldQWMmYhoPZBU5vUSBoxog057Wlu'),
(4, 'Jeat Black Heart', '5 Seconds Of Summer', 'Sounds Good Feels Good', 'https://drive.google.com/uc?export=download&id=1gI_S5T_wFx5nfHHXTcx5ojWiaVFSGDUS'),
(5, 'Out Of My Limit', '5 Seconds Of Summer', '5 Seconds Of Summer', 'https://drive.google.com/uc?export=download&id=1hRLWcucRXzMml-g0xioMC-vibtbaYCMG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_17`
--

CREATE TABLE `playlist_artist_17` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_17`
--

INSERT INTO `playlist_artist_17` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Adiós ', 'Gustavo Cerati ', 'Ahí vamos', 'https://drive.google.com/uc?export=download&id=1-By-W81zUBziSFn5dmJOPMUntz8lREnq'),
(2, 'Crimen', 'Gustavo Cerati', 'Ahí vamos', 'https://drive.google.com/uc?export=download&id=1QkdmzTrgGLhkClzh7fFLSKv-gZvvuhw0'),
(3, 'Bocanada ', 'Gustavo Cerati', 'Bocanada ', 'https://drive.google.com/uc?export=download&id=10OsTiyXKHyTJQhKPgKHd83JeBf9ViWoC'),
(4, 'Puente', 'Gustavo Cerati', 'Bocanada', 'https://drive.google.com/uc?export=download&id=1xyFTGIOUcUeko2kpbdUL_EX3OzaxOeqN'),
(5, 'Bajan', 'Gustavo Cerati', 'Amor amarillo', 'https://drive.google.com/uc?export=download&id=1J61Urr9-EGstxGqfNfeNoWWXlbizVG82'),
(6, 'Te Llevo Para Que Me Lleves', 'Gustavo Cerati', 'Amor amarillo', 'https://drive.google.com/uc?export=download&id=1tpggQGboa6buWIW5Wnqlt99hbw2QI7Wf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_18`
--

CREATE TABLE `playlist_artist_18` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_18`
--

INSERT INTO `playlist_artist_18` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Kumbala', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'El Circo', 'https://drive.google.com/uc?export=download&id=1GC3H2OSI-ogjVCxTuvr3dJ2w1I1tYsae'),
(2, 'Pachuco', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'El Circo', 'https://drive.google.com/uc?export=download&id=1DvjoImgcw7W4Hg-XLF-A3tUcTP_UtrtX'),
(3, 'Lo pasado pasado', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'A 30 Años', 'https://drive.google.com/uc?export=download&id=16FaxhVuc93cpQTc2rGFi0y3O3z-S1Vmt'),
(4, 'Los agachados ', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'A 30 Años', 'https://drive.google.com/uc?export=download&id=15-Q4PYHmGm64j7rwHEK8wyp9Z-RXiqSO'),
(5, 'El Cocodrilo', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'Mostro', 'https://drive.google.com/uc?export=download&id=1_GW12MX9bDn_kcGcCxSwIWrcCnCCrmaN'),
(6, 'Caer', 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'Mostro', 'https://drive.google.com/uc?export=download&id=1Lidc-vEq6XLTrD1G6vfO32mlFGFkgY2j');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_artist_19`
--

CREATE TABLE `playlist_artist_19` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `name_artista` varchar(50) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `direction_song` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_artist_19`
--

INSERT INTO `playlist_artist_19` (`id_song`, `name_song`, `name_artista`, `song_album`, `direction_song`) VALUES
(1, 'Tun turún', 'Bryan Carbajal', 'Sencillo', 'https://drive.google.com/uc?export=view&id=1xmJ-iPAbKz_HOLP9vVO1imfxtmMSvs6I'),
(2, 'Si no te tengo', 'Bryan Carbajal', 'Sencillo', 'https://drive.google.com/uc?export=view&id=1a7eixfJkYix5aO2NNXPfclPHZ4T9eaFW'),
(3, 'Your fault', 'Bryan Carbajal', 'Sencillo', 'https://drive.google.com/uc?export=view&id=1g-Hz89iiWFQd3UQ9bzDfAI1nvyCXCBV-'),
(4, 'Black lives Matter', 'Bryan Carbajal', 'Sencillo', 'https://drive.google.com/uc?export=view&id=1-PC5T5IzG-mbj1ClEvTVWnvGjgGXvEfD'),
(5, 'BOOP', 'Bryan Carbajal', 'Sencillo', 'https://drive.google.com/uc?export=view&id=1o0RyyAzcoPxQKuomIm-TXRrKkugbvpiD'),
(6, 'Cactus', 'Bryan Carbajal', 'Sencillo', 'https://drive.google.com/uc?export=view&id=1opUhqpUt4RoSa4GG4ztsDeLZnoHeDQcS'),
(7, 'Esa canción', 'Bryan Carbajal', 'Sencillo', 'https://drive.google.com/uc?export=view&id=1FUpe0trlW5uurTjbznql2a_ag3s7O3_h');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_dreams`
--

CREATE TABLE `usuarios_dreams` (
  `id_users` int(6) NOT NULL,
  `name_user` varchar(50) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `pasware` varchar(256) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `age_users` int(3) NOT NULL,
  `if_artista` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_dreams`
--

INSERT INTO `usuarios_dreams` (`id_users`, `name_user`, `e_mail`, `pasware`, `genero`, `age_users`, `if_artista`) VALUES
(1, 'Niall Horan', 'niall_oficial@gmail.com', 'hello_im_niall', 'hombre', 28, 1),
(2, 'Maroon 5', 'maroon_5@gmail.com', 'hello_maroon5', 'hombre', 27, 1),
(3, 'Cuco', 'cuco_omar@gmail.com', 'hello_im_cuco', 'hombre', 23, 1),
(4, 'The Weeknd', 'the_weeknd@gmail.com', 'hello_weeknd', 'hombre', 31, 1),
(5, 'Jamiroquai', 'jamiro_@gmail.com', 'hello_jamiro', 'hombre', 51, 1),
(6, 'The Midnight', 'the-midn@gmail.com', 'hello_midn', 'hombre', 9, 1),
(7, 'Led Zeppelin', 'led_z@gmail.com', 'hello_ledz', 'hombre', 12, 1),
(8, 'Red Hot Chili Peppers', 'red_hot@gmail.com', 'hello_red_hot', 'hombre', 38, 1),
(9, 'Lady Gaga', 'lady_gg@gmail.com', 'hello_lady_g', 'mujer', 35, 1),
(10, 'Dua Lipa', 'dua_lipa@gmail.com', 'hello_dua', 'mujer', 26, 1),
(11, 'Soda Stereo', 'soda_stero@gmail.com', 'hello_stereo', 'hombre', 16, 1),
(12, 'Taylor Swift', 'taylor_st@gmail.com', 'hello_tay', 'mujer', 31, 1),
(13, 'LIT Killah', 'lit_ka@gmail.com', 'hello_litka', 'hombre', 21, 1),
(14, 'Daft Punk ', 'daft_punk21@gmail.com', 'hello_punk', 'hombre', 28, 1),
(15, 'One Direction', 'one_direction@gmail.com', 'hello_1D', 'hombre', 11, 1),
(16, '5 Seconds Of Summer', '5_seconds_of_summer@gmail.com', 'hi_5sos', 'hombre', 10, 1),
(17, 'Cerati', 'cerati_g@gmail.com', 'hello_cerati', 'hombre', 55, 1),
(18, 'Maldita Vecindad Y Los Hijos Del 5to. Patio', 'vecindad_hijos@gmail.com', 'hello_maldita', 'hombre', 28, 1),
(19, 'Eduardo', 'eduar10.mart@gmail.com', '$2y$10$TjxDGNrDiHtmEG/niXo2PuPsIiOAJty9S4uuLwKu50m', 'Masculino', 16, 0),
(20, 'Martín', 'estudiante20150471@cdb.edu.sv', '$2y$10$4jologGY6I8AOQge38SZmOUQTc72cso.Qo0BJm2vZMM', 'Masculino', 14, 0),
(21, 'miguel', 'impresionessti@gmail.com', '$2y$10$qOYeeDOXgcrNu42BGVsayOkXdfIhTOCGMpC5bqrIOPD1Tz3QSFFNa', 'Masculino', 16, 0),
(24, 'Mateo Elías', 'oscarmateoelias@gmail.com', '$2y$10$ir0vkbnNfxLi6WWaqd9Bzuo0RBuSTItGbpqJsLl.i6mJwEtYppO6a', 'Masculino', 16, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album_1_1`
--
ALTER TABLE `album_1_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_1_2`
--
ALTER TABLE `album_1_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_2_1`
--
ALTER TABLE `album_2_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_2_2`
--
ALTER TABLE `album_2_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_3_1`
--
ALTER TABLE `album_3_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_3_2`
--
ALTER TABLE `album_3_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_3_3`
--
ALTER TABLE `album_3_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_3_4`
--
ALTER TABLE `album_3_4`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_4_1`
--
ALTER TABLE `album_4_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_4_2`
--
ALTER TABLE `album_4_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_4_3`
--
ALTER TABLE `album_4_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_5_1`
--
ALTER TABLE `album_5_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_5_2`
--
ALTER TABLE `album_5_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_5_3`
--
ALTER TABLE `album_5_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_5_4`
--
ALTER TABLE `album_5_4`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_5_5`
--
ALTER TABLE `album_5_5`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_6_1`
--
ALTER TABLE `album_6_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_6_2`
--
ALTER TABLE `album_6_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_6_3`
--
ALTER TABLE `album_6_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_6_4`
--
ALTER TABLE `album_6_4`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_7_1`
--
ALTER TABLE `album_7_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_7_2`
--
ALTER TABLE `album_7_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_7_3`
--
ALTER TABLE `album_7_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_7_4`
--
ALTER TABLE `album_7_4`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_8_1`
--
ALTER TABLE `album_8_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_8_2`
--
ALTER TABLE `album_8_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_8_3`
--
ALTER TABLE `album_8_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_8_4`
--
ALTER TABLE `album_8_4`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_8_5`
--
ALTER TABLE `album_8_5`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_9_1`
--
ALTER TABLE `album_9_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_9_2`
--
ALTER TABLE `album_9_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_9_3`
--
ALTER TABLE `album_9_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_10_1`
--
ALTER TABLE `album_10_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_11_1`
--
ALTER TABLE `album_11_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_11_2`
--
ALTER TABLE `album_11_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_11_3`
--
ALTER TABLE `album_11_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_11_4`
--
ALTER TABLE `album_11_4`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_11_5`
--
ALTER TABLE `album_11_5`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_11_6`
--
ALTER TABLE `album_11_6`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_12_1`
--
ALTER TABLE `album_12_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_12_2`
--
ALTER TABLE `album_12_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_13_1`
--
ALTER TABLE `album_13_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_13_2`
--
ALTER TABLE `album_13_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_13_3`
--
ALTER TABLE `album_13_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_14_1`
--
ALTER TABLE `album_14_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_14_2`
--
ALTER TABLE `album_14_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_14_3`
--
ALTER TABLE `album_14_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_14_4`
--
ALTER TABLE `album_14_4`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_15_1`
--
ALTER TABLE `album_15_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_15_2`
--
ALTER TABLE `album_15_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_15_3`
--
ALTER TABLE `album_15_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_15_4`
--
ALTER TABLE `album_15_4`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_16_1`
--
ALTER TABLE `album_16_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_16_2`
--
ALTER TABLE `album_16_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_16_3`
--
ALTER TABLE `album_16_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_17_1`
--
ALTER TABLE `album_17_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_17_2`
--
ALTER TABLE `album_17_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_17_3`
--
ALTER TABLE `album_17_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_18_1`
--
ALTER TABLE `album_18_1`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_18_2`
--
ALTER TABLE `album_18_2`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `album_18_3`
--
ALTER TABLE `album_18_3`
  ADD PRIMARY KEY (`id_song_a`);

--
-- Indices de la tabla `artistas_dreams`
--
ALTER TABLE `artistas_dreams`
  ADD PRIMARY KEY (`id_art`);

--
-- Indices de la tabla `biblioteca_dreams`
--
ALTER TABLE `biblioteca_dreams`
  ADD PRIMARY KEY (`id_play`);

--
-- Indices de la tabla `biblio_playlist_1`
--
ALTER TABLE `biblio_playlist_1`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `biblio_playlist_2`
--
ALTER TABLE `biblio_playlist_2`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `biblio_playlist_3`
--
ALTER TABLE `biblio_playlist_3`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `biblio_playlist_4`
--
ALTER TABLE `biblio_playlist_4`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `dreamaker_artist_1`
--
ALTER TABLE `dreamaker_artist_1`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_2`
--
ALTER TABLE `dreamaker_artist_2`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_3`
--
ALTER TABLE `dreamaker_artist_3`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_4`
--
ALTER TABLE `dreamaker_artist_4`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_5`
--
ALTER TABLE `dreamaker_artist_5`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_6`
--
ALTER TABLE `dreamaker_artist_6`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_7`
--
ALTER TABLE `dreamaker_artist_7`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_8`
--
ALTER TABLE `dreamaker_artist_8`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_9`
--
ALTER TABLE `dreamaker_artist_9`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_10`
--
ALTER TABLE `dreamaker_artist_10`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_11`
--
ALTER TABLE `dreamaker_artist_11`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_12`
--
ALTER TABLE `dreamaker_artist_12`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_13`
--
ALTER TABLE `dreamaker_artist_13`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_14`
--
ALTER TABLE `dreamaker_artist_14`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_15`
--
ALTER TABLE `dreamaker_artist_15`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_16`
--
ALTER TABLE `dreamaker_artist_16`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_17`
--
ALTER TABLE `dreamaker_artist_17`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `dreamaker_artist_18`
--
ALTER TABLE `dreamaker_artist_18`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `playlist_artist_1`
--
ALTER TABLE `playlist_artist_1`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_2`
--
ALTER TABLE `playlist_artist_2`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_3`
--
ALTER TABLE `playlist_artist_3`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_4`
--
ALTER TABLE `playlist_artist_4`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_5`
--
ALTER TABLE `playlist_artist_5`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_6`
--
ALTER TABLE `playlist_artist_6`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_7`
--
ALTER TABLE `playlist_artist_7`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_8`
--
ALTER TABLE `playlist_artist_8`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_9`
--
ALTER TABLE `playlist_artist_9`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_10`
--
ALTER TABLE `playlist_artist_10`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_11`
--
ALTER TABLE `playlist_artist_11`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_12`
--
ALTER TABLE `playlist_artist_12`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_13`
--
ALTER TABLE `playlist_artist_13`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_14`
--
ALTER TABLE `playlist_artist_14`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_15`
--
ALTER TABLE `playlist_artist_15`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_16`
--
ALTER TABLE `playlist_artist_16`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_17`
--
ALTER TABLE `playlist_artist_17`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_18`
--
ALTER TABLE `playlist_artist_18`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `playlist_artist_19`
--
ALTER TABLE `playlist_artist_19`
  ADD PRIMARY KEY (`id_song`);

--
-- Indices de la tabla `usuarios_dreams`
--
ALTER TABLE `usuarios_dreams`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album_1_1`
--
ALTER TABLE `album_1_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_1_2`
--
ALTER TABLE `album_1_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_2_1`
--
ALTER TABLE `album_2_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `album_2_2`
--
ALTER TABLE `album_2_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_3_1`
--
ALTER TABLE `album_3_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_3_2`
--
ALTER TABLE `album_3_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_3_3`
--
ALTER TABLE `album_3_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_3_4`
--
ALTER TABLE `album_3_4`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_4_1`
--
ALTER TABLE `album_4_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_4_2`
--
ALTER TABLE `album_4_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `album_4_3`
--
ALTER TABLE `album_4_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_5_1`
--
ALTER TABLE `album_5_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_5_2`
--
ALTER TABLE `album_5_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_5_3`
--
ALTER TABLE `album_5_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_5_4`
--
ALTER TABLE `album_5_4`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_5_5`
--
ALTER TABLE `album_5_5`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_6_1`
--
ALTER TABLE `album_6_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `album_6_2`
--
ALTER TABLE `album_6_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_6_3`
--
ALTER TABLE `album_6_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_6_4`
--
ALTER TABLE `album_6_4`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_7_1`
--
ALTER TABLE `album_7_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_7_2`
--
ALTER TABLE `album_7_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_7_3`
--
ALTER TABLE `album_7_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_7_4`
--
ALTER TABLE `album_7_4`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_8_1`
--
ALTER TABLE `album_8_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_8_2`
--
ALTER TABLE `album_8_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_8_3`
--
ALTER TABLE `album_8_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_8_4`
--
ALTER TABLE `album_8_4`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_8_5`
--
ALTER TABLE `album_8_5`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_9_1`
--
ALTER TABLE `album_9_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_9_2`
--
ALTER TABLE `album_9_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_9_3`
--
ALTER TABLE `album_9_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_10_1`
--
ALTER TABLE `album_10_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `album_11_1`
--
ALTER TABLE `album_11_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_11_2`
--
ALTER TABLE `album_11_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_11_3`
--
ALTER TABLE `album_11_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `album_11_4`
--
ALTER TABLE `album_11_4`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_11_5`
--
ALTER TABLE `album_11_5`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_11_6`
--
ALTER TABLE `album_11_6`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_12_1`
--
ALTER TABLE `album_12_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `album_12_2`
--
ALTER TABLE `album_12_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_13_1`
--
ALTER TABLE `album_13_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `album_13_2`
--
ALTER TABLE `album_13_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_13_3`
--
ALTER TABLE `album_13_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_14_1`
--
ALTER TABLE `album_14_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_14_2`
--
ALTER TABLE `album_14_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_14_3`
--
ALTER TABLE `album_14_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_14_4`
--
ALTER TABLE `album_14_4`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_15_1`
--
ALTER TABLE `album_15_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_15_2`
--
ALTER TABLE `album_15_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_15_3`
--
ALTER TABLE `album_15_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_15_4`
--
ALTER TABLE `album_15_4`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_16_1`
--
ALTER TABLE `album_16_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_16_2`
--
ALTER TABLE `album_16_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_16_3`
--
ALTER TABLE `album_16_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `album_17_1`
--
ALTER TABLE `album_17_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_17_2`
--
ALTER TABLE `album_17_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_17_3`
--
ALTER TABLE `album_17_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_18_1`
--
ALTER TABLE `album_18_1`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_18_2`
--
ALTER TABLE `album_18_2`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `album_18_3`
--
ALTER TABLE `album_18_3`
  MODIFY `id_song_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `artistas_dreams`
--
ALTER TABLE `artistas_dreams`
  MODIFY `id_art` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `biblioteca_dreams`
--
ALTER TABLE `biblioteca_dreams`
  MODIFY `id_play` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `biblio_playlist_1`
--
ALTER TABLE `biblio_playlist_1`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `biblio_playlist_2`
--
ALTER TABLE `biblio_playlist_2`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `biblio_playlist_3`
--
ALTER TABLE `biblio_playlist_3`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `biblio_playlist_4`
--
ALTER TABLE `biblio_playlist_4`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_1`
--
ALTER TABLE `dreamaker_artist_1`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_2`
--
ALTER TABLE `dreamaker_artist_2`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_3`
--
ALTER TABLE `dreamaker_artist_3`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_4`
--
ALTER TABLE `dreamaker_artist_4`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_5`
--
ALTER TABLE `dreamaker_artist_5`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_6`
--
ALTER TABLE `dreamaker_artist_6`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_7`
--
ALTER TABLE `dreamaker_artist_7`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_8`
--
ALTER TABLE `dreamaker_artist_8`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_9`
--
ALTER TABLE `dreamaker_artist_9`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_10`
--
ALTER TABLE `dreamaker_artist_10`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_11`
--
ALTER TABLE `dreamaker_artist_11`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_12`
--
ALTER TABLE `dreamaker_artist_12`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_13`
--
ALTER TABLE `dreamaker_artist_13`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_14`
--
ALTER TABLE `dreamaker_artist_14`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_15`
--
ALTER TABLE `dreamaker_artist_15`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_16`
--
ALTER TABLE `dreamaker_artist_16`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_17`
--
ALTER TABLE `dreamaker_artist_17`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dreamaker_artist_18`
--
ALTER TABLE `dreamaker_artist_18`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_1`
--
ALTER TABLE `playlist_artist_1`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_2`
--
ALTER TABLE `playlist_artist_2`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_3`
--
ALTER TABLE `playlist_artist_3`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_4`
--
ALTER TABLE `playlist_artist_4`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_5`
--
ALTER TABLE `playlist_artist_5`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_6`
--
ALTER TABLE `playlist_artist_6`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_7`
--
ALTER TABLE `playlist_artist_7`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_8`
--
ALTER TABLE `playlist_artist_8`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_9`
--
ALTER TABLE `playlist_artist_9`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_10`
--
ALTER TABLE `playlist_artist_10`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_11`
--
ALTER TABLE `playlist_artist_11`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_12`
--
ALTER TABLE `playlist_artist_12`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_13`
--
ALTER TABLE `playlist_artist_13`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_14`
--
ALTER TABLE `playlist_artist_14`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_15`
--
ALTER TABLE `playlist_artist_15`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_16`
--
ALTER TABLE `playlist_artist_16`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_17`
--
ALTER TABLE `playlist_artist_17`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_18`
--
ALTER TABLE `playlist_artist_18`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `playlist_artist_19`
--
ALTER TABLE `playlist_artist_19`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios_dreams`
--
ALTER TABLE `usuarios_dreams`
  MODIFY `id_users` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
