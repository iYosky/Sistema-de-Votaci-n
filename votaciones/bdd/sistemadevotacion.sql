-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 07:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemadevotacion`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidatos`
--

INSERT INTO `candidatos` (`id`, `nombre`) VALUES
(1, 'Gabriel Boric (Frente Amplio por el pacto Apruebo Dignidad)'),
(2, 'José Antonio Kast (Republicanos por el Frente Social Cristiano)'),
(3, 'Yasna Provoste (DC por Nuevo Pacto Social)'),
(4, 'Sebastián Sichel (Independiente por el pacto Chile Podemos Más)'),
(5, 'Eduardo Artés (Unión Patriótica)'),
(6, 'Marco Enríquez-Ominami (PRO)'),
(7, 'Franco Parisi (Partido de la Gente)');

-- --------------------------------------------------------

--
-- Table structure for table `comunas`
--

CREATE TABLE `comunas` (
  `id` int(11) NOT NULL,
  `comuna` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comunas`
--

INSERT INTO `comunas` (`id`, `comuna`) VALUES
(1, 'Arica'),
(1, 'Camarones'),
(1, 'General Lagos'),
(1, 'Putre'),
(2, 'Alto Hospicio'),
(2, 'Camiña'),
(2, 'Colchane'),
(2, 'Huara'),
(2, 'iquique'),
(2, 'Pica'),
(2, 'Pozo Almonte'),
(3, 'Antofagasta'),
(3, 'Calama'),
(3, 'María Elena'),
(3, 'Mejillones'),
(3, 'Ollagüe'),
(3, 'San Pedro de Atacama'),
(3, 'Sierra Gorda'),
(3, 'Taltal'),
(3, 'Tocopilla'),
(4, 'Alto del Carmen'),
(4, 'Caldera'),
(4, 'Chañaral'),
(4, 'Copiapó'),
(4, 'Diego de Almagro'),
(4, 'Freirina'),
(4, 'Huasco'),
(4, 'Tierra Amarilla'),
(4, 'Vallenar'),
(5, 'Andacollo'),
(5, 'Canela'),
(5, 'Combarbalá'),
(5, 'Coquimbo'),
(5, 'Illapel'),
(5, 'La Higuera'),
(5, 'La Serena'),
(5, 'Los Vilos'),
(5, 'Monte Patria'),
(5, 'Ovalle'),
(5, 'Paihuano'),
(5, 'Punitaqui'),
(5, 'Río Hurtado'),
(5, 'Salamanca'),
(5, 'Vicuña'),
(6, 'Algarrobo'),
(6, 'Cabildo'),
(6, 'Calera'),
(6, 'Calle Larga'),
(6, 'Cartagena'),
(6, 'Casablanca'),
(6, 'Catemu'),
(6, 'Concón'),
(6, 'El Quisco'),
(6, 'El Tabo'),
(6, 'Hijuelas'),
(6, 'Isla de Pascua'),
(6, 'Juan Fernández'),
(6, 'La Cruz'),
(6, 'La Ligua'),
(6, 'Limache'),
(6, 'Llaillay'),
(6, 'Los Andes'),
(6, 'Nogales'),
(6, 'Olmué'),
(6, 'Panquehue'),
(6, 'Papudo'),
(6, 'Petorca'),
(6, 'Puchuncaví'),
(6, 'Putaendo'),
(6, 'Quillota'),
(6, 'Quilpué'),
(6, 'Quintero'),
(6, 'Rinconada'),
(6, 'San Antonio'),
(6, 'San Esteban'),
(6, 'San Felipe'),
(6, 'Santa María'),
(6, 'Santo Domingo'),
(6, 'Valparaíso'),
(6, 'Villa Alemana'),
(6, 'Viña del Mar'),
(6, 'Zapallar'),
(7, 'Alhue'),
(7, 'Buin'),
(7, 'Calera de Tango'),
(7, 'Cerrillos'),
(7, 'Cerro Navia'),
(7, 'Colina'),
(7, 'Conchalí'),
(7, 'Curacaví'),
(7, 'El Bosque'),
(7, 'El Monte'),
(7, 'Estación Central'),
(7, 'Huechuraba'),
(7, 'Independencia'),
(7, 'Isla de Maipo'),
(7, 'La Cisterna'),
(7, 'La Florida'),
(7, 'La Granja'),
(7, 'Lampa'),
(7, 'La Pintana'),
(7, 'La Reina'),
(7, 'Las Condes'),
(7, 'Lo Barnechea'),
(7, 'Lo Espejo'),
(7, 'Lo Prado'),
(7, 'Macul'),
(7, 'Maipú'),
(7, 'María Pinto'),
(7, 'Melipilla'),
(7, 'Ñuñoa'),
(7, 'Padre Hurtado'),
(7, 'Paine'),
(7, 'Pedro Aguirre Cerda'),
(7, 'Peñaflor'),
(7, 'Peñalolén'),
(7, 'Pirque'),
(7, 'Providencia'),
(7, 'Pudahuel'),
(7, 'Puente Alto'),
(7, 'Quilicura'),
(7, 'Quinta Normal'),
(7, 'Recoleta'),
(7, 'Renca'),
(7, 'San Bernardo'),
(7, 'San Joaquín'),
(7, 'San José de Maipo'),
(7, 'San Miguel'),
(7, 'San Pedro'),
(7, 'San Ramón'),
(7, 'Santiago'),
(7, 'Talagante'),
(7, 'Tiltil'),
(7, 'Vitacura'),
(8, 'Chépica'),
(8, 'Chimbarongo'),
(8, 'Codegua'),
(8, 'Coínco'),
(8, 'Coltauco'),
(8, 'Doñihue'),
(8, 'Graneros'),
(8, 'La Estrella'),
(8, 'Las Cabras'),
(8, 'Litueche'),
(8, 'Lolol'),
(8, 'Machalí'),
(8, 'Malloa'),
(8, 'Marchihue'),
(8, 'Mostazal'),
(8, 'Nancagua'),
(8, 'Navidad'),
(8, 'Olivar'),
(8, 'Palmilla'),
(8, 'Paredones'),
(8, 'Peralillo'),
(8, 'Peumo'),
(8, 'Pichidegua'),
(8, 'Pichilemu'),
(8, 'Placilla'),
(8, 'Pumanque'),
(8, 'Quinta de Tilcoco'),
(8, 'Rancagua'),
(8, 'Rengo'),
(8, 'Requínoa'),
(8, 'San Fernando'),
(8, 'Santa Cruz'),
(8, 'San Vicente'),
(9, 'Cauquenes'),
(9, 'Chanco'),
(9, 'Colbún'),
(9, 'Constitución'),
(9, 'Curepto'),
(9, 'Curicó'),
(9, 'Empedrado'),
(9, 'Hualañé'),
(9, 'Licantén'),
(9, 'Linares'),
(9, 'Longaví'),
(9, 'Maule'),
(9, 'Molina'),
(9, 'Parral'),
(9, 'Pelarco'),
(9, 'Pelluhue'),
(9, 'Pencahue'),
(9, 'Rauco'),
(9, 'Retiro'),
(9, 'Río Claro'),
(9, 'Romeral'),
(9, 'Sagrada Familia'),
(9, 'San Clemente'),
(9, 'San Javier'),
(9, 'San Rafael'),
(9, 'Talca'),
(9, 'Teno'),
(9, 'Vichuquén'),
(9, 'Villa Alegre'),
(9, 'Yerbas Buenas'),
(10, 'Bulnes'),
(10, 'Chillán'),
(10, 'Chillán Viejo'),
(10, 'Cobquecura'),
(10, 'Coelemu'),
(10, 'Coihueco'),
(10, 'El Carmen'),
(10, 'Ninhue'),
(10, 'Ñiquén'),
(10, 'Pemuco'),
(10, 'Pinto'),
(10, 'Portezuelo'),
(10, 'Quillón'),
(10, 'Quirihue'),
(10, 'Ránquil'),
(10, 'San Carlos'),
(10, 'San Fabián'),
(10, 'San Ignacio'),
(10, 'San Nicolás'),
(10, 'Treguaco'),
(10, 'Yungay'),
(11, 'Antuco'),
(11, 'Arauco'),
(11, 'Cabrero'),
(11, 'Cañete'),
(11, 'Chiguayante'),
(11, 'Concepción'),
(11, 'Contulmo'),
(11, 'Coronel'),
(11, 'Curanilahue'),
(11, 'Florida'),
(11, 'Hualpén'),
(11, 'Hualqui'),
(11, 'Laja'),
(11, 'Lebu'),
(11, 'Los Alamos'),
(11, 'Los Angeles'),
(11, 'Lota'),
(11, 'Mulchén'),
(11, 'Nacimiento'),
(11, 'Negrete'),
(11, 'Penco'),
(11, 'Quilaco'),
(11, 'Quilleco'),
(11, 'San Pedro de la Paz'),
(11, 'San Rosendo'),
(11, 'Santa Bárbara'),
(11, 'Santa Juana'),
(11, 'Talcahuano'),
(11, 'Tirúa'),
(11, 'Tomé'),
(11, 'Tucapel'),
(11, 'Yumbel'),
(12, 'Carahue'),
(12, 'Cholchol'),
(12, 'Collipulli'),
(12, 'Cunco'),
(12, 'Curacautín'),
(12, 'Curarrehue'),
(12, 'Ercilla'),
(12, 'Freire'),
(12, 'Galvarino'),
(12, 'Gorbea'),
(12, 'Lautaro'),
(12, 'Loncoche'),
(12, 'Lonquimay'),
(12, 'Los Sauces'),
(12, 'Lumaco'),
(12, 'Melipeuco'),
(12, 'Nueva Imperial'),
(12, 'Padre Las Casas'),
(12, 'Perquenco'),
(12, 'Pitrufquén'),
(12, 'Pucón'),
(12, 'Purén'),
(12, 'Renaico'),
(12, 'Saavedra'),
(12, 'Temuco'),
(12, 'Teodoro Schmidt'),
(12, 'Toltén'),
(12, 'Traiguén'),
(12, 'Victoria'),
(12, 'Vilcún'),
(12, 'Villarrica'),
(13, 'Corral'),
(13, 'Futrono'),
(13, 'Lago Ranco'),
(13, 'Lanco'),
(13, 'La Unión'),
(13, 'Los Lagos'),
(13, 'Máfil'),
(13, 'Mariquina'),
(13, 'Paillaco'),
(13, 'Panguipulli'),
(13, 'Río Bueno'),
(13, 'Valdivia'),
(14, 'Ancud'),
(14, 'Calbuco'),
(14, 'Castro'),
(14, 'Chaitén'),
(14, 'Chonchi'),
(14, 'Cochamó'),
(14, 'Curaco de Vélez'),
(14, 'Dalcahue'),
(14, 'Fresia'),
(14, 'Frutillar'),
(14, 'Futaleufú'),
(14, 'Hualaihué'),
(14, 'Llanquihue'),
(14, 'Los Muermos'),
(14, 'Maullín'),
(14, 'Osorno'),
(14, 'Palena'),
(14, 'Puerto Montt'),
(14, 'Puerto Octay'),
(14, 'Puerto Varas'),
(14, 'Puqueldón'),
(14, 'Purranque'),
(14, 'Puyehue'),
(14, 'Queilén'),
(14, 'Quellón'),
(14, 'Quemchi'),
(14, 'Quinchao'),
(14, 'Río Negro'),
(14, 'San Juan de la Costa'),
(14, 'San Pablo'),
(15, 'Aysén'),
(15, 'Chile Chico'),
(15, 'Cisnes'),
(15, 'Cochrane'),
(15, 'Coyhaique'),
(15, 'Guaitecas'),
(15, 'Lago Verde'),
(15, 'OHiggins'),
(15, 'Río Ibáñez'),
(15, 'Tortel'),
(16, 'Antártica'),
(16, 'Cabo de Hornos'),
(16, 'Laguna Blanca'),
(16, 'Natales'),
(16, 'Porvenir'),
(16, 'Primavera'),
(16, 'Punta Arenas'),
(16, 'Río Verde'),
(16, 'San Gregorio'),
(16, 'Timaukel'),
(16, 'Torres del Paine');

-- --------------------------------------------------------

--
-- Table structure for table `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `region` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regiones`
--

INSERT INTO `regiones` (`id`, `region`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaiso'),
(7, 'Metropolitana de Santiago'),
(8, 'Libertador General Bernardo O Higgins'),
(9, 'Maule'),
(10, 'Ñuble'),
(11, 'Biobío'),
(12, 'La Araucanía'),
(13, 'Los Ríos'),
(14, 'Los Lagos'),
(15, 'Aysén del General Carlos Ibáñez del Campo'),
(16, 'Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Table structure for table `sistemadevotacion`
--

CREATE TABLE `sistemadevotacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `alias` varchar(30) NOT NULL,
  `rut` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `candidato` varchar(50) NOT NULL,
  `chk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comunas`
--
ALTER TABLE `comunas`
  ADD KEY `id` (`id`);

--
-- Indexes for table `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sistemadevotacion`
--
ALTER TABLE `sistemadevotacion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sistemadevotacion`
--
ALTER TABLE `sistemadevotacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `regiones` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
