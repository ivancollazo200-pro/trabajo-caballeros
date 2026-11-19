-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2026 a las 20:10:28
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
-- Base de datos: `caballeros_zodiaco`
--
CREATE DATABASE IF NOT EXISTS `caballeros_zodiaco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `caballeros_zodiaco`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliaciones`
--

CREATE TABLE `afiliaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `afiliaciones`
--

INSERT INTO `afiliaciones` (`id`, `nombre`) VALUES
(1, 'Athena'),
(2, 'Gran Patriarca'),
(3, 'Santos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Oro'),
(2, 'Plata'),
(3, 'Bronce'),
(7, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tecnicas_principales` varchar(60) NOT NULL,
  `edad` int(11) NOT NULL,
  `altura` decimal(10,2) NOT NULL,
  `peso` int(11) NOT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `afiliacion_id` int(11) NOT NULL,
  `lugar_nacimiento` varchar(30) NOT NULL,
  `constelaciones` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `tecnicas_principales`, `edad`, `altura`, `peso`, `genero`, `descripcion`, `imagen`, `categorias_id`, `afiliacion_id`, `lugar_nacimiento`, `constelaciones`) VALUES
(1, 'Seiya de Pegaso', 'Meteoro de Pegaso, Puño de Cometa de Pegaso', 13, 1.65, 53, 'Masculino', 'Seiya (星矢, Seiya) es el personaje principal de la serie de manga y anime Saint Seiya y el Saint de Pegasus durante las Guerras Santas en el siglo XX hasta antes de los eventos ocurridos en Next Dimension. Es la reencarnación del pasado Bronze Saint de Pegasus Tenma y del \"Primer Pegasus\", el primer humano en herir al dios Hades desde la era mitológica.Seiya representa el espíritu indomable de la humanidad, la voluntad de superar cualquier límite y la capacidad de levantarse incluso cuando todo parece perdido. A pesar de no pertenecer a una de las categorías más poderosas de Santos, su determinación, su Cosmo y su inquebrantable deseo de proteger a sus seres queridos lo convierten en uno de los guerreros más extraordinarios de su generación.\r\n\r\n\r\n', 'seiya.jpg', 3, 1, 'Japon', 'Pegaso'),
(3, 'Shun ', 'Tormenta Nebular', 13, 1.65, 51, 'Masculino', 'Shun (瞬, Shun) es el Bronze Saint de la constelación de Andromeda y uno de los protagonistas de la serie. Se caracteriza por su personalidad pacifista, su carácter delicado y porque no le gusta herir a las demás personas. Tiene un gran poder, pero su gentil disposición y naturaleza amable tienden a detenerlo de usarlo del todo, hasta que se ve obligado a hacerlo. Es el hermano menor de Ikki, el Santo de Fénix. Shun es el humano que posee el alma más pura, y es por eso que Hades le escoge como su huésped', 'shun.jpg', 3, 1, 'Japon', 'Andromeda'),
(5, 'Ikki', 'Puño fantasma del fenix', 15, 1.75, 62, 'Masculino', 'Ikki (一輝, Ikki) es el Saint de la constelación de Phoenix. Es uno de los protagonistas en Saint Seiya y en Saint Seiya: Next Dimension. Se caracteriza por tener el cosmos más agresivo y violento entre los Saints. Acostumbra andar separado del resto de los Bronze Saints, sin embargo siempre aparece oportunamente en los momentos de necesidad. Se considera a sí mismo un lobo solitario que no le interesa andar en grupos. A pesar de que se introdujo más tarde que los otros cuatro Bronze Saints principales, el rol de Ikki en la historia es bastante significativo. Además, actúa como el primer antagonista de la serie que los demás Saints deben derrotar, así como un poderoso aliado más adelante en la serie', 'ikki.jfif', 3, 1, 'Japon', 'Fenix'),
(6, 'Shiryu', 'Dragon ascendente', 14, 1.72, 53, 'Masculino', 'Shiryū (紫龍, Shiryū) es el Santo de Bronce de Dragón durante las Guerras Santas en el Siglo XX (1990). Shiryū es considerado como el más prudente y sabio de los Santos de Bronce - siendo que fue discípulo del gran anciano maestro Dohko de Libra - y es uno de los personajes principales de la serie del manga y anime Saint Seiya, conocido como Los Caballeros del Zodiaco.es uno de los protagonistas principales de Saint Seiya (Los Caballeros del Zodiaco) y el Santo de Bronce de Dragón durante las Guerras Santas del siglo XX. Es considerado uno de los guerreros más prudentes, sabios y disciplinados de su generación. Fue discípulo del Gran Maestro Dohko.\r\n', 'shiryu.png', 3, 1, 'Japon', 'Dragon'),
(7, 'Marin de aguila', 'Puño de meteoro', 16, 1.67, 51, 'Femenino', 'Marin (魔鈴, Marin) es uno de los dos personajes femeninos secundarios de mayor relevancia en la historia junto con Shaina. Es la Santa de Plata de Eagle en el siglo XX. Como Santa, debe renunciar a su feminidad ocultando su rostro bajo una máscara. Entrenó a Seiya hasta que éste se convirtió en un Santo de Bronce al obtener la Cloth de Pegasus.es una Santa de Plata de Águila y uno de los personajes femeninos más importantes de Saint Seiya. Durante las Guerras Santas del siglo XX, se desempeña como una guerrera al servicio de Atenea, destacándose por su inteligencia, disciplina y habilidades de combate. Fue la maestra de Seiya durante su entrenamiento en Grecia, enseñándole las técnicas necesarias para convertirse en el Santo de Pegaso.', 'marin.jpg', 2, 1, 'Japon', 'Aguila'),
(8, 'Shaina', 'Garra de trueno', 16, 1.66, 49, 'Femenino', 'es una Santa de Plata de Ofiuco y uno de los personajes femeninos más importantes de Saint Seiya (Los Caballeros del Zodiaco). Durante las Guerras Santas del siglo XX, sirve a Atenea y se destaca por su carácter fuerte, orgulloso y temperamental, además de sus grandes habilidades de combate. Como toda mujer Santa, debe ocultar su rostro detrás de una máscara para mantener su identidad en secreto. Inicialmente considera a Seiya su enemigo, pero con el paso del tiempo desarrolla sentimientos profundos hacia él, llegando incluso a arriesgar su propia vida para protegerlo. Su rivalidad con Marin y su relación con Seiya marcan gran parte de su desarrollo. Su técnica más conocida es la Garra de Trueno (Thunder Claw), con la que demuestra su velocidad, fuerza y destreza como guerrera.', 'shaina.jpg', 2, 1, 'Italia', 'Ofiuco'),
(9, 'Misty ', 'Manipulacion de las corrientes de aire', 16, 1.80, 68, 'Masculino', 'Misty (ミスティ, Misuti) es el Santo de Plata de Lizard durante la Guerra entre el Santuario y los Titanes y posteriormente en la guerra por el Santuario que estaba bajo el control de Saga de Gemini, es el primer Santo de Plata que se presenta oficialmente con este título tanto en el anime como en el manga; enviado por el Patriarca, para acabar con los Bronze Saints. Es un personaje narcisista y bastante confiado con sus habilidades. es un Santo de Plata de Lagarto que aparece durante el conflicto entre el Santuario y los Santos de Bronce. ', 'misty.jpg', 2, 1, 'Francia', 'Lagarto'),
(10, 'Moses', 'Fuerza fisica', 17, 2.05, 130, 'Masculino', 'Moses (モーゼス, Mōzesu) es el Silver Saint de la constelación de Whale, al servicio de Athena y del Santuario durante el siglo XX (1990). Es un guerrero que posee un cuerpo musculoso y un gran poder, comparable al de una ballena. Además, es experto en la técnica de lanzar a sus oponentes hacia arriba. Formó parte del primer escuadrón de Silver Saints enviados por el Papa con la misión de eliminar a los Bronze Saints que participaban en la Galaxian Wars.es un Santo de Plata de la constelación de Ballena, al servicio de Atenea durante las Guerras Santas del siglo XX. Se caracteriza por su enorme fuerza física, su musculatura y su gran resistencia en combate. Fue enviado por el Patriarca como parte del primer grupo de Santos de Plata para eliminar a los Santos de Bronce. Su técnica de combate consiste en lanzar a sus adversarios por los aires, aprovechando su impresionante poder y fuerza.', 'moses.jpg', 2, 1, 'Nueva Zelanda', 'Ballena'),
(11, 'Asterion', 'Millon de fantasmas', 16, 1.83, 75, 'Masculino', 'Asterion (アステリオン, asuterion) fue el Silver Saint de la constelación de Canes Venatici durante la Guerra por el Santuario entre Athena y Saga.fue un Santo de Plata de la constelación de Canes Venatici, al servicio de Atenea durante las Guerras Santas del siglo XX. Fue enviado por el Patriarca, bajo el control de Saga de Géminis, para eliminar a los Santos de Bronce que desafiaban la autoridad del Santuario. Se caracteriza por su inteligencia, frialdad y extraordinaria capacidad para analizar los movimientos de sus oponentes. Su habilidad más destacada es la lectura de pensamientos, que le permite anticipar los ataques enemigos y conocer sus estrategias. Gracias a esta capacidad, representa un adversario complicado de enfrentar incluso para guerreros experimentados. Participó en el escuadrón de Santos de Plata junto a Moses de Ballena, enfrentándose a Seiya y sus compañeros. Su combate demuestra que no siempre la fuerza física es suficiente para obtener la victoria.\r\n', 'asterion.jpg', 2, 1, 'Dinamarca', 'Perros de caza'),
(12, 'Mu', 'Stardust Revolution, Crystal Wall, Starlight Extinction', 20, 1.82, 75, 'Masculino', 'Mu (ムウ, Mu) es el Gold Saint de Aries. Es un maestro en el arte de la reparación de Cloths y discípulo del anterior Pontífice, Shion de Aries.es el Santo de Oro de Aries y uno de los guerreros más sabios y poderosos del Santuario durante las Guerras Santas del siglo XX. Fue discípulo de Shion de Aries, el anterior Patriarca, de quien heredó grandes conocimientos sobre el Cosmo y las Armaduras Sagradas. Se destaca por su personalidad tranquila, inteligente y bondadosa, además de su extraordinario dominio de las habilidades psíquicas. Es reconocido por ser uno de los pocos capaces de reparar las Cloths dañadas de los Santos. También posee técnicas muy poderosas, como la Extinción Estelar (Starlight Extinction) y el Muro de Cristal (Crystal Wall). Su sabiduría y lealtad a Atenea lo convierten en un aliado fundamental para los Santos de Bronce.', 'mu.jpg', 1, 1, 'Tíbet', 'Aries'),
(13, 'Aldebaran', 'Great Horn', 20, 2.10, 130, 'Masculino', 'Aldebaran (アルデバラン, Arudebaran) es el Gold Saint de Tauro. Destaca por su inmensa fuerza física y su sentido del honor en el combate. es el Santo de Oro de Tauro y uno de los doce guardianes de las Doce Casas del Zodiaco al servicio de Atenea. Se caracteriza por su enorme tamaño, su impresionante fuerza física y su espíritu honorable durante los combates. A pesar de su apariencia intimidante, posee una personalidad noble, tranquila y respetuosa con sus adversarios. Su principal técnica es el Gran Cuerno (Great Horn), un ataque devastador que libera una enorme cantidad de energía en un instante. Durante la batalla de las Doce Casas se enfrenta a Seiya y demuestra la verdadera superioridad de los Santos de Oro. Sin embargo, reconoce el valor y la determinación de sus oponentes. Su sentido de la justicia lo convierte en uno de los guerreros más respetados del Santuario.', 'aldebaran.jpg', 1, 1, 'Brasil', 'Tauro'),
(14, 'Saga', 'Galaxian Explosion, Another Dimension, Genrō Maōken', 28, 1.88, 87, 'Masculino', 'Saga (サガ, Saga) es el Gold Saint de Géminis. Posee una personalidad dividida entre el bien y el mal extremo, habiendo usurpado el trono del Pontífice.es el Santo de Oro de Géminis y uno de los guerreros más poderosos de los doce guardianes del Zodiaco. Se caracteriza por poseer una personalidad dividida entre el bien y el mal, lo que provoca un conflicto constante dentro de su propia alma. Aprovechando su poder, usurpó el puesto de Patriarca del Santuario y comenzó a gobernar bajo una identidad corrupta. Su ambición lo llevó a enfrentarse a Atenea y a manipular a numerosos Santos para cumplir sus objetivos. ', 'saga.jpg', 1, 1, 'Grecia', 'Géminis'),
(15, 'Deathmask', 'Sekishiki Meikai Ha', 23, 1.84, 82, 'Masculino', 'Deathmask (デスマスク, Desumasuku) es el Gold Saint de Cáncer. Mantiene las cabezas de sus víctimas como trofeos en el Templo del Cáncer.es el Santo de Oro de Cáncer y uno de los doce guardianes de las Doce Casas del Zodiaco. Se caracteriza por su personalidad cruel, arrogante y despiadada, disfrutando de la violencia y considerando que la justicia pertenece a quienes poseen mayor poder. Como trofeos de sus victorias, conserva las cabezas de sus víctimas en las paredes del Templo de Cáncer. Es un guerrero temido por su dominio de las almas y su capacidad para enviar a sus enemigos al mundo de los muertos. Su técnica más conocida es Ondas Infernales (Sekishiki Meikai Ha), con la que puede separar el alma del cuerpo de sus adversarios. Su lealtad hacia Saga demuestra su falta de principios y su desprecio por los débiles. Durante la batalla de las Doce Casas, se enfrenta a Shiryu de Dragón, protagonizando uno de los combates más importantes de su historia.', 'death.jfif', 1, 1, 'Italia', 'Cáncer'),
(16, 'Aiolia', 'Lightning Plasma, Lightning Bolt', 20, 1.85, 85, 'Masculino', 'Aiolia (アイオリア, Aioria) es el Gold Saint de Leo y hermano menor de Aiolos. Es impulsivo, noble y profundamente fiel a la justicia.es el Santo de Oro de Leo y uno de los doce guardianes de las Doce Casas del Zodiaco. Es el hermano menor de Aiolos de Sagitario y se caracteriza por su personalidad noble, valiente e impulsiva. A pesar de haber sido señalado por la traición de su hermano, siempre mantuvo un fuerte sentido de la justicia y la lealtad hacia Atenea. Es un guerrero orgulloso que defiende sus ideales y no duda en enfrentarse a cualquiera que amenace la paz. Su técnica más poderosa es el Relámpago de Plasma (Lightning Plasma), un ataque que lanza incontables golpes a la velocidad de la luz. Durante la batalla del Santuario se enfrenta a Seiya y posteriormente demuestra su verdadero compromiso con la diosa. Su espíritu indomable lo convierte en uno de los Santos de Oro más respetados.', 'aiolia.jpg', 1, 1, 'Grecia', 'Leo'),
(17, 'Shaka', 'Tenbu Hōrin, Tenma Kōfuku, Rikudō Rinne', 20, 1.82, 68, 'Masculino', 'Shaka (シャカ, Shaka) es el Gold Saint de Virgo, conocido como el hombre más cercano a Dios por su elevado cosmos y dominio del octavo sentido.es el Santo de Oro de Virgo y uno de los guerreros más poderosos y espiritualmente desarrollados del Santuario. Es conocido como el hombre más cercano a Dios debido a su extraordinario Cosmo, su sabiduría y su profundo conocimiento espiritual. Se caracteriza por mantener los ojos cerrados para concentrar su energía y aumentar su poder durante los combates. Posee un dominio excepcional de las técnicas mentales y espirituales, además de haber alcanzado el Octavo Sentido. Su técnica más temida es el Tesoro del Cielo (Tenbu Hōrin), capaz de privar a sus adversarios de sus cinco sentidos. Su serenidad, inteligencia y disciplina lo convierten en un guerrero respetado incluso entre los propios Santos de Oro.', 'shaka.jpg', 1, 1, 'India', 'Virgo'),
(18, 'Dohko', 'Rozan Hyakuryū Ha', 261, 1.40, 87, 'Masculino', 'Dohko (童虎, Dōko) es el Gold Saint de Libra y superviviente de la anterior Guerra Santa. Custodió las armas de Libra y el sello de Hades en los Cinco Picos.es el Santo de Oro de Libra y uno de los guerreros más antiguos y experimentados del Santuario. Es uno de los pocos supervivientes de la anterior Guerra Santa contra Hades, ocurrida en el siglo XVIII. Durante siglos permaneció vigilando el sello que mantenía encerradas las almas de los espectros de Hades en los Cinco Picos Antiguos de Rozan. Fue el maestro de Shiryu de Dragón, a quien transmitió sus conocimientos sobre el Cosmo, la justicia y el verdadero significado de ser un Santo. Posee las doce armas de la Armadura de Libra, que pueden utilizarse para combatir poderosos enemigos. Su sabiduría, paciencia y enorme poder lo convierten en una figura fundamental para Atenea y sus guerreros.', 'dohko.jpg', 1, 1, 'China', 'Libra'),
(19, 'Milo', 'Scarlet Needle, Antares', 20, 1.85, 84, 'Masculino', 'Milo (ミロ, Miro) es el Gold Saint de Escorpio. Orgulloso y apasionado, otorga a sus oponentes la oportunidad de rendirse antes de infligir la última aguja.es el Santo de Oro de Escorpio y uno de los doce guardianes de las Doce Casas del Zodiaco al servicio de Atenea. Se caracteriza por su personalidad orgullosa, apasionada y su gran sentido del honor durante los combates. Es un guerrero que respeta a sus adversarios y les ofrece la oportunidad de rendirse antes de recibir el golpe final. Su técnica más característica es la Aguja Escarlata (Scarlet Needle), un ataque que consiste en lanzar agujas de energía contra los puntos vitales del enemigo. Su golpe definitivo es Antares, la última aguja que representa el final de su técnica. Durante la batalla del Santuario demuestra su enorme poder al enfrentarse a Hyoga de Cisne. Su valentía y lealtad lo convierten en uno de los Santos de Oro más destacados.', 'milo.jpg', 1, 1, 'Grecia', 'Escorpio'),
(20, 'Aiolos', 'Atomic Thunderbolt', 14, 1.87, 85, 'Masculino', 'Aiolos (アイオロス, Aiorosu) fue el Gold Saint de Sagitario que salvó a la bebé Athena de ser asesinada por Saga, sacrificando su vida por la diosa.fue el Santo de Oro de Sagitario y uno de los guerreros más nobles y valientes del Santuario. Es el hermano mayor de Aiolia de Leo y se destacó por su profunda lealtad hacia Atenea y su inquebrantable sentido de la justicia. Descubrió los planes de Saga de Géminis para asesinar a la pequeña diosa y decidió protegerla, arriesgando su propia vida para salvarla. Antes de morir, confió a Atenea al cuidado de Mitsumasa Kido, dejando como legado su armadura dorada. A pesar de su muerte, su espíritu continúa guiando y ayudando a los Santos de Bronce en momentos decisivos. Su valentía y sacrificio lo convierten en un símbolo de honor, esperanza y protección dentro de Saint Seiya.', 'aiolos.jpg', 1, 1, 'Grecia', 'Sagitario'),
(21, 'Shura', 'Excalibur, Jumping Stone', 23, 1.86, 83, 'Masculino', 'Shura (シュラ, Shura) es el Gold Saint de Capricornio. Posee la espada sagrada Excalibur alojada en sus extremidades y se considera el caballero más fiel a Athena.es el Santo de Oro de Capricornio y uno de los doce guardianes de las Doce Casas del Zodiaco. Se caracteriza por su disciplina, orgullo y extraordinaria habilidad en el combate cuerpo a cuerpo. Es conocido por poseer la legendaria espada sagrada Excalibur, alojada en sus brazos y piernas, capaz de cortar prácticamente cualquier cosa. Se considera uno de los guerreros más fieles a Atenea, aunque inicialmente apoyó las órdenes del Patriarca sin conocer toda la verdad. Durante la batalla de las Doce Casas se enfrenta a Shiryu de Dragón en un combate extremadamente intenso. Antes de morir, reconoce el verdadero valor de su adversario y le entrega su armadura para protegerlo. Su sacrificio demuestra que, detrás de su carácter severo, también posee un profundo sentido del honor y la justicia.', 'shura.jpg', 1, 1, 'España', 'Capricornio'),
(22, 'Camus', 'Aurora Execution, Diamond Dust, Freezing Coffin', 20, 1.84, 76, 'Masculino', 'Camus (カミュ, Kamyu) es el Gold Saint de Acuario y maestro de Hyōga. Mantiene una actitud fría e impasible para dominar el cero absoluto.es el Santo de Oro de Acuario y uno de los doce guardianes de las Doce Casas del Zodiaco. Se caracteriza por su personalidad fría, seria y disciplinada, manteniendo siempre el control de sus emociones durante los combates. Es el maestro de Hyoga de Cisne, a quien enseñó los secretos del hielo y el dominio del Cosmo. Su poder le permite alcanzar temperaturas extremadamente bajas, acercándose al legendario Cero Absoluto. Entre sus técnicas más conocidas se encuentran el Polvo de Diamantes (Diamond Dust) y la Ejecución Aurora (Aurora Execution). Durante la batalla de las Doce Casas se enfrenta a su propio discípulo para poner a prueba su determinación y habilidades. Su filosofía representa la importancia de la disciplina, el sacrificio y el dominio absoluto de las emociones.', 'camus.jpg', 1, 1, 'Francia', 'Acuario'),
(23, 'Aphrodite', 'Royal Demon Rose, Piranhan Rose, Bloody Rose', 22, 1.83, 72, 'Masculino', 'Aphrodite (アフロディーテ, Afurodīte) es el Gold Saint de Piscis. Un guerrero de extraordinaria belleza que combate mediante rosas impregnadas de veneno.es el Santo de Oro de Piscis y uno de los doce guardianes de las Doce Casas del Zodiaco. Se caracteriza por su extraordinaria belleza, elegancia y personalidad orgullosa, considerando que la belleza representa una de las formas más elevadas del poder. Es un guerrero peligroso que utiliza diferentes tipos de rosas como armas para derrotar a sus adversarios. Entre sus técnicas más conocidas se encuentran las Rosas Diabólicas Reales (Royal Demon Rose), las Rosas Piraña (Piranhan Rose) y las Rosas Sangrientas (Bloody Rose). Durante la batalla de las Doce Casas se enfrenta a Shun de Andrómeda, demostrando su gran habilidad y dominio de las técnicas florales. Su estilo de combate combina belleza, precisión y letalidad. Es considerado uno de los Santos de Oro más particulares y peligrosos del Santuario.', 'afrodita.jpg', 1, 1, 'Suecia', 'Piscis');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afiliaciones`
--
ALTER TABLE `afiliaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categorias` (`categorias_id`),
  ADD KEY `fk_afilia` (`afiliacion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afiliaciones`
--
ALTER TABLE `afiliaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `fk_afilia` FOREIGN KEY (`afiliacion_id`) REFERENCES `afiliaciones` (`id`),
  ADD CONSTRAINT `fk_categorias` FOREIGN KEY (`categorias_id`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
