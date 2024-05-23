-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2024 at 06:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ProjTest1`
--

-- --------------------------------------------------------

--
-- Table structure for table `APR`
--

CREATE TABLE `APR` (
  `PKDelatnosti` int(11) NOT NULL,
  `naziv` varchar(250) NOT NULL,
  `sifraDelatnosti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `APR`
--

INSERT INTO `APR` (`PKDelatnosti`, `naziv`, `sifraDelatnosti`) VALUES
(1, 'Poljoprivredna proizvodnja, lov i prateće uslužne delatnosti', 1),
(2, 'Gajenje jednogodišnjih i dvogodišnjih biljaka', 11),
(3, 'Gajenje žita (osim pirinča), leguminoza i uljarica', 111),
(4, 'Gajenje pirinča', 112),
(5, 'Gajenje povrća, bostana, korenastih i krtolastih biljaka', 113),
(6, 'Gajenje šećerne trske', 114),
(7, 'Gajenje duvana', 115),
(8, 'Gajenje biljaka za proizvodnju vlakana', 116),
(9, 'Gajenje ostalih jednogodišnjih i dvogodišnjih biljaka', 119),
(10, 'Gajenje višegodišnjih biljaka', 12),
(11, 'Gajenje grožđa', 121),
(12, 'Gajenje tropskog i suptropskog voća', 122),
(13, 'Gajenje agruma', 123),
(14, 'Gajenje jabučastog i koštičavog voća', 124),
(15, 'Gajenje ostalog drvenastog, žbunastog i jezgrastog voća', 125),
(16, 'Gajenje uljnih plodova', 126),
(17, 'Gajenje biljaka za pripremanje napitaka', 127),
(18, 'Gajenje začinskog, aromatičnog i lekovitog bilja', 128),
(19, 'Gajenje ostalih višegodišnjih biljaka', 129),
(20, 'Gajenje sadnog materijala', 13),
(21, 'Gajenje sadnog materijala', 130),
(22, 'Uzgoj životinja', 14),
(23, 'Uzgoj muznih krava', 141),
(24, 'Uzgoj drugih goveda i bivola', 142),
(25, 'Uzgoj konja i drugih kopitara', 143),
(26, 'Uzgoj kamila i lama', 144),
(27, 'Uzgoj ovaca i koza', 145),
(28, 'Uzgoj svinja', 146),
(29, 'Uzgoj živine', 147),
(30, 'Uzgoj ostalih životinja', 149),
(31, 'Mešovita poljoprivredna proizvodnja', 15),
(32, 'Mešovita poljoprivredna proizvodnja', 150),
(33, 'Uslužne delatnosti u poljoprivredi i delatnosti posle žetve', 16),
(34, 'Uslužne delatnosti u gajenju useva i zasada', 161),
(35, 'Pomoćne delatnosti u uzgoju životinja', 162),
(36, 'Aktivnosti posle žetve', 163),
(37, 'Dorada semena', 164),
(38, 'Lov, traperstvo i odgovarajuće uslužne delatnosti', 17),
(39, 'Lov, traperstvo i odgovarajuće uslužne delatnosti', 170),
(40, 'Šumarstvo i seča drveća', 2),
(41, 'Gajenje šuma i ostale šumarske delatnosti', 21),
(42, 'Gajenje šuma i ostale šumarske delatnosti', 210),
(43, 'Seča drveća', 22),
(44, 'Seča drveća', 220),
(45, 'Sakupljanje šumskih plodova', 23),
(46, 'Sakupljanje šumskih plodova', 230),
(47, 'Uslužne delatnosti u vezi sa šumarstvom', 24),
(48, 'Uslužne delatnosti u vezi sa šumarstvom', 240),
(49, 'Ribarstvo i akvakulture', 3),
(50, 'Ribolov', 31),
(51, 'Morski ribolov', 311),
(52, 'Slatkovodni ribolov', 312),
(53, 'Akvakulture', 32),
(54, 'Morske akvakulture', 321),
(55, 'Slatkovodne akvakulture', 322),
(57, 'Eksploatacija uglja', 5),
(58, 'Eksploatacija kamenog uglja i antracita', 51),
(59, 'Eksploatacija kamenog uglja i antracita', 510),
(60, 'Eksploatacija lignita i mrkog uglja', 52),
(61, 'Eksploatacija lignita i mrkog uglja', 520),
(62, 'Eksploatacija sirove nafte i prirodnog gasa', 6),
(63, 'Eksploatacija sirove nafte', 61),
(64, 'Eksploatacija sirove nafte', 610),
(65, 'Vađenje prirodnog gasa', 62),
(66, 'Eksploatacija prirodnog gasa', 620),
(67, 'Eksploatacija ruda metala', 7),
(68, 'Eksploatacija ruda gvožđa', 71),
(69, 'Eksploatacija ruda gvožđa', 710),
(70, 'Eksploatacija ostalih ruda metala', 72),
(71, 'Eksploatacija ruda urana i torijuma', 721),
(72, 'Eksploatacija ruda ostalih crnih, obojenih, plemenitih i drugih metala', 729),
(73, 'Ostalo rudarstvo', 8),
(74, 'Eksploatacija kamena, peska, gline i drugih sirovina za građevinske materijale', 81),
(75, 'Eksploatacija građevinskog i ukrasnog kamena, krečnjaka, gipsa, krede', 811),
(76, 'Eksploatacija šljunka, peska, gline i kaolina', 812),
(77, 'Eksploatacija ostalih ruda i kamena', 89),
(78, 'Eksploatacija minerala, proizvodnja mineralnih đubriva i hemikalija', 891),
(79, 'Eksploatacija treseta', 892),
(80, 'Eksploatacija natrijum-hlorida', 893),
(81, 'Eksploatacija ostalih nemetaličnih ruda i minerala', 899),
(82, 'Uslužne delatnosti u rudarstvu i geološkim istraživanjima', 9),
(83, 'Uslužne delatnosti u vezi sa istraživanjem i eksploatacijom nafte i gasa', 91),
(84, 'Uslužne delatnosti u vezi sa istraživanjem i eksploatacijom nafte i gasa', 910),
(85, 'Uslužne delatnosti u vezi sa istraživanjem i eksploatacijom ostalih ruda', 99),
(86, 'Uslužne delatnosti u vezi sa istraživanjem i eksploatacijom ostalih ruda', 990),
(88, 'Proizvodnja prehrambenih proizvoda', 10),
(89, 'Prerada i konzervisanje mesa i proizvoda od mesa', 101),
(90, 'Prerada i konzervisanje mesa', 1011),
(91, 'Prerada i konzervisanje živinskog mesa', 1012),
(92, 'Proizvodnja mesnih prerađevina', 1013),
(93, 'Prerada i konzervisanje ribe, ljuskara i mekušaca', 102),
(94, 'Prerada i konzervisanje ribe, ljuskara i mekušaca', 1020),
(95, 'Prerada i konzervisanje voća i povrća', 103),
(96, 'Prerada i konzervisanje krompira', 1031),
(97, 'Proizvodnja sokova od voća i povrća', 1032),
(98, 'Ostala prerada i konzervisanje voća i povrća', 1039),
(99, 'Proizvodnja biljnih i životinjskih ulja i masti', 104),
(100, 'Proizvodnja ulja i masti', 1041),
(101, 'Proizvodnja margarina i sličnih jestivih masti', 1042),
(102, 'Proizvodnja mlečnih proizvoda', 105),
(103, 'Prerada mleka i proizvodnja sireva', 1051),
(104, 'Proizvodnja sladoleda', 1052),
(105, 'Proizvodnja mlinskih proizvoda, skroba i skrobnih proizvoda ', 106),
(106, 'Proizvodnja mlinskih proizvoda', 1061),
(107, 'Proizvodnja skroba i skrobnih proizvoda', 1062),
(108, 'Proizvodnja pekarskih proizvoda i testenine', 107),
(109, 'Proizvodnja hleba, svežeg peciva i kolača', 1071),
(110, 'Proizvodnja dvopeka, keksa, trajnog peciva i kolača', 1072),
(111, 'Proizvodnja makarona, rezanaca i sličnih proizvoda od brašna', 1073),
(112, 'Proizvodnja ostalih prehrambenih proizvoda', 108),
(113, 'Proizvodnja šećera', 1081),
(114, 'Proizvodnja kakaoa, čokolade i konditorskih proizvoda', 1082),
(115, 'Prerada čaja i kafe', 1083),
(116, 'Proizvodnja začina i drugih dodataka hrani', 1084),
(117, 'Proizvodnja gotovih jela', 1085),
(118, 'Proizvodnja homogenizovanih hranljivih preparata i dijetetske hrane', 1086),
(119, 'Proizvodnja ostalih prehrambenih proizvoda', 1089),
(120, 'Proizvodnja gotove hrane za životinje', 109),
(121, 'Proizvodnja gotove hrane za domaće životinje', 1091),
(122, 'Proizvodnja gotove hrane za kućne ljubimce', 1092),
(123, 'Proizvodnja pića', 11),
(124, 'Proizvodnja pića', 110),
(125, 'Destilacija, prečišćavanje i mešanje pića', 1101),
(126, 'Proizvodnja vina od grožđa', 1102),
(127, 'Proizvodnja pića i ostalih voćnih vina', 1103),
(128, 'Proizvodnja ostalih nedestilovanih fermentisanih pića', 1104),
(129, 'Proizvodnja piva', 1105),
(130, 'Proizvodnja slada', 1106),
(131, 'Proizvodnja osvežavajućih pića, mineralne vode i ostale flaširane vode', 1107),
(132, 'Proizvodnja duvanskih proizvoda', 12),
(133, 'Proizvodnja duvanskih proizvoda', 120),
(134, 'Proizvodnja duvanskih proizvoda', 1200),
(135, 'Proizvodnja tekstila', 13),
(136, 'Priprema i predenje tekstilnih vlakana', 131),
(137, 'Priprema i predenje tekstilnih vlakana', 1310),
(138, 'Proizvodnja tkanina', 132),
(139, 'Proizvodnja tkanina', 1320),
(140, 'Dovršavanje tekstila', 133),
(141, 'Dovršavanje tekstila', 1330),
(142, 'Proizvodnja ostalog tekstila', 139),
(143, 'Proizvodnja pletenih i kukičanih materijala', 1391),
(144, 'Proizvodnja gotovih tekstilnih proizvoda, osim odeće', 1392),
(145, 'Proizvodnja tepiha i prekrivača za pod', 1393),
(146, 'Proizvodnja užadi, kanapa, pletenica i mreža', 1394),
(147, 'Proizvodnja netkanog tekstila i predmeta od njega, osim odeće', 1395),
(148, 'Proizvodnja ostalog tehničkog i industrijskog tekstila', 1396),
(149, 'Proizvodnja ostalih tekstilnih predmeta', 1399),
(150, 'Proizvodnja odevnih predmeta', 14),
(151, 'Proizvodnja odeće, osim krznene', 141),
(152, 'Proizvodnja kožne odeće', 1411),
(153, 'Proizvodnja radne odeće', 1412),
(154, 'Proizvodnja ostale odeće', 1413),
(155, 'Proizvodnja rublja', 1414),
(156, 'Proizvodnja ostalih odevnih predmeta i pribora', 1419),
(157, 'Proizvodnja proizvoda od krzna', 142),
(158, 'Proizvodnja proizvoda od krzna', 1420),
(159, 'Proizvodnja pletene i kukičane odeće', 143),
(160, 'Proizvodnja pletenih i kukičanih čarapa', 1431),
(161, 'Proizvodnja ostale pletene i kukičane odeće', 1439),
(162, 'Proizvodnja kože i predmeta od kože', 15),
(163, 'Štavljenje i dorada kože; proizvodnja putničkih i ručnih torbi i kaiševa; dorada i bojenje krzna', 151),
(164, 'Štavljenje i dorada kože; dorada i bojenje krzna', 1511),
(165, 'Proizvodnja putnih i ručnih torbi i sl., saračkih proizvoda i kaiševa', 1512),
(166, 'Proizvodnja obuće', 152),
(167, 'Proizvodnja obuće', 1520),
(168, 'Prerada drveta i proizvodi od drveta, plute, slame i pruća, osim nameštaja', 16),
(169, 'Rezanje i obrada drveta', 161),
(170, 'Rezanje i obrada drveta', 1610),
(171, 'Proizvodnja proizvoda od drveta, plute, pruća i slame', 162),
(172, 'Proizvodnja furnira i ploča od drveta', 1621),
(173, 'Proizvodnja parketa', 1622),
(174, 'Proizvodnja ostale građevinske stolarije i elemenata', 1623),
(175, 'Proizvodnja drvne ambalaže', 1624),
(176, 'Proizvodnja ostalih proizvoda od drveta, plute, slame i pruća', 1629),
(177, 'Proizvodnja papira i proizvoda od papira', 17),
(178, 'Proizvodnja celuloze, papira i kartona', 171),
(179, 'Proizvodnja vlakana celuloze', 1711),
(180, 'Proizvodnja papira i kartona', 1712),
(181, 'Proizvodnja predmeta od papira i kartona', 172),
(182, 'Proizvodnja talasastog papira i kartona i ambalaže od papira i kartona', 1721),
(183, 'Proizvodnja predmeta od papira za ličnu upotrebu i upotrebu u domaćinstvu', 1722),
(184, 'Proizvodnja kancelarijskih predmeta od papira', 1723),
(185, 'Proizvodnja tapeta', 1724),
(186, 'Proizvodnja ostalih proizvoda od papira i kartona', 1729),
(187, 'Štampanje i umnožavanje audio i video zapisa', 18),
(188, 'Štampanje i štamparske usluge', 181),
(189, 'Štampanje novina', 1811),
(190, 'Ostalo štampanje', 1812),
(191, 'Usluge pripreme za štampu', 1813),
(192, 'Knjigovezačke i srodne usluge', 1814),
(193, 'Umnožavanje snimljenih zapisa', 182),
(194, 'Umnožavanje snimljenih zapisa', 1820),
(195, 'Proizvodnja koksa i derivata nafte', 19),
(196, 'Proizvodnja produkata koksovanja', 191),
(197, 'Proizvodnja produkata koksovanja', 1910),
(198, 'Proizvodnja derivata nafte', 192),
(199, 'Proizvodnja derivata nafte', 1920),
(200, 'Proizvodnja hemikalija i hemijskih proizvoda', 20),
(201, 'Proizvodnja osnovnih hemikalija, veštačkih đubriva i azotnih jedinjenja, plastičnih i sintetičkih masa', 201),
(202, 'Proizvodnja industrijskih gasova', 2011),
(203, 'Proizvodnja sredstava za pripremanje boja i pigmenata', 2012),
(204, 'Proizvodnja ostalih osnovnih neorganskih hemikalija', 2013),
(205, 'Proizvodnja ostalih osnovnih organskih hemikalija', 2014),
(206, 'Proizvodnja veštačkih đubriva i azotnih jedinjenja', 2015),
(207, 'Proizvodnja plastičnih masa u primarnim oblicima', 2016),
(208, 'Proizvodnja sintetičkog kaučuka u primarnim oblicima', 2017),
(209, 'Proizvodnja pesticida i hemikalija za poljoprivredu', 202),
(210, 'Proizvodnja pesticida i hemikalija za poljoprivredu', 2020),
(211, 'Proizvodnja boja, lakova i sličnih premaza, grafičkih boja i kitova', 203),
(212, 'Proizvodnja boja, lakova i sličnih premaza, grafičkih boja i kitova', 2030),
(213, 'Proizvodnja deterdženata, sapuna drugih sredstava za čišćenje, poliranje, parfema i toaletnih preparata', 204),
(214, 'Proizvodnja deterdženata, sapuna sredstava za čišćenje i poliranje', 2041),
(215, 'Proizvodnja parfema i toaletnih preparata', 2042),
(216, 'Proizvodnja ostalih hemijskih proizvoda', 205),
(217, 'Proizvodnja eksploziva', 2051),
(218, 'Proizvodnja sredstava za lepljenje', 2052),
(219, 'Proizvodnja eteričnih ulja', 2053),
(220, 'Proizvodnja ostalih hemijskih proizvoda', 2059),
(221, 'Proizvodnja veštačkih vlakana', 206),
(222, 'Proizvodnja veštačkih vlakana', 2060),
(223, 'Proizvodnja osnovnih farmaceutskih proizvoda i preparata', 21),
(224, 'Proizvodnja osnovnih farmaceutskih proizvoda', 211),
(225, 'Proizvodnja osnovnih farmaceutskih proizvoda', 2110),
(226, 'Proizvodnja farmaceutskih preparata', 212),
(227, 'Proizvodnja farmaceutskih preparata', 2120),
(228, 'Proizvodnja proizvoda od gume i plastike', 22),
(229, 'Proizvodnja proizvoda od gume', 221),
(230, 'Proizvodnja guma za vozila, protektiranje guma za vozila', 2211),
(231, 'Proizvodnja ostalih proizvoda od gume', 2219),
(232, 'Proizvodnja proizvoda od plastike', 222),
(233, 'Proizvodnja ploča, listova, cevi i profila od plastike', 2221),
(234, 'Proizvodnja ambalaže od plastike', 2222),
(235, 'Proizvodnja predmeta od plastike za građevinarstvo', 2223),
(236, 'Proizvodnja ostalih proizvoda od plastike', 2229),
(237, 'Proizvodnja proizvoda od ostalih nemetalnih minerala', 23),
(238, 'Proizvodnja stakla i proizvoda od stakla', 231),
(239, 'Proizvodnja ravnog stakla', 2311),
(240, 'Oblikovanje i obrada ravnog stakla', 2312),
(241, 'Proizvodnja šupljeg stakla', 2313),
(242, 'Proizvodnja staklenih vlakana', 2314),
(243, 'Proizvodnja i obrada ostalog stakla, uključujući tehničke staklene proizvode', 2319),
(244, 'Proizvodnja vatrostalnih proizvoda', 232),
(245, 'Proizvodnja vatrostalnih proizvoda', 2320),
(246, 'Proizvodnja građevinskih materijala od gline', 233),
(247, 'Proizvodnja keramičkih pločica i ploča', 2331),
(248, 'Proizvodnja opeke, crepa i građevinskih proizvoda od pečene gline', 2332),
(249, 'Proizvodnja ostalih keramičkih i porcelanskih proizvoda', 234),
(250, 'Proizvodnja keramičkih predmeta za domaćinstvo i ukrasnih predmeta', 2341),
(251, 'Proizvodnja sanitarnih keramičkih proizvoda', 2342),
(252, 'Proizvodnja izolatora i izolacionog pribora od keramike', 2343),
(253, 'Proizvodnja ostalih tehničkih proizvoda od keramike', 2344),
(254, 'Proizvodnja ostalih keramičkih proizvoda', 2349),
(255, 'Proizvodnja cementa, kreča i gipsa', 235),
(256, 'Proizvodnja cementa', 2351),
(257, 'Proizvodnja kreča i gipsa', 2352),
(258, 'Proizvodnja proizvoda od betona, cementa i gipsa', 236),
(259, 'Proizvodnja proizvoda od betona namenjenih za građevinarstvo', 2361),
(260, 'Proizvodnja proizvoda od gipsa namenjenih za građevinarstvo', 2362),
(261, 'Proizvodnja svežeg betona', 2363),
(262, 'Proizvodnja maltera', 2364),
(263, 'Proizvodnja proizvoda od cementa s vlaknima', 2365),
(264, 'Proizvodnja ostalih proizvoda od betona, gipsa i cementa', 2369),
(265, 'Sečenje, oblikovanje i obrada kamena', 237),
(266, 'Sečenje, oblikovanje i obrada kamena', 2370),
(267, 'Proizvodnja brusnih i ostalih nemetalnih mineralnih proizvoda', 239),
(268, 'Proizvodnja brusnih proizvoda', 2391),
(269, 'Proizvodnja ostalih proizvoda od nemetalnih minerala', 2399),
(270, 'Proizvodnja osnovnih metala', 24),
(271, 'Proizvodnja sirovog gvožđa, čelika i ferolegura', 241),
(272, 'Proizvodnja sirovog gvožđa, čelika i ferolegura', 2410),
(273, 'Proizvodnja čeličnih cevi, šupljih profila i fitinga', 242),
(274, 'Proizvodnja čeličnih cevi, šupljih profila i fitinga', 2420),
(275, 'Proizvodnja ostalih proizvoda primarne prerade čelika', 243),
(276, 'Hladno valjanje šipki', 2431),
(277, 'Hladno valjanje pljosnatih proizvoda', 2432),
(278, 'Hladno oblikovanje profila', 2433),
(279, 'Hladno vučenje žice', 2434),
(280, 'Proizvodnja plemenitih i ostalih obojenih metala', 244),
(281, 'Proizvodnja plemenitih metala', 2441),
(282, 'Proizvodnja aluminijuma', 2442),
(283, 'Proizvodnja olova, cinka i kalaja', 2443),
(284, 'Proizvodnja bakra', 2444),
(285, 'Proizvodnja ostalih obojenih metala', 2445),
(286, 'Proizvodnja nuklearnog goriva', 2446),
(287, 'Livenje metala', 245),
(288, 'Livenje gvožđa', 2451),
(289, 'Livenje čelika', 2452),
(290, 'Livenje lakih metala', 2453),
(291, 'Livenje ostalih obojenih metala', 2454),
(292, 'Proizvodnja metalnih proizvoda, osim mašina i uređaja', 25),
(293, 'Proizvodnja metalnih konstrukcija', 251),
(294, 'Proizvodnja metalnih konstrukcija i delova konstrukcija', 2511),
(295, 'Proizvodnja metalnih vrata i prozora', 2512),
(296, 'Proizvodnja metalnih cisterni, rezervoara i kontejnera', 252),
(297, 'Proizvodnja kotlova i radijatora za centralno grejanje', 2521),
(298, 'Proizvodnja ostalih metalnih cisterni, rezervoara i kontejnera', 2529),
(299, 'Proizvodnja parnih kotlova, osim kotlova za centralno grejanje', 253),
(300, 'Proizvodnja parnih kotlova, osim kotlova za centralno grejanje', 2530),
(301, 'Proizvodnja oružja i municije', 254),
(302, 'Proizvodnja oružja i municije', 2540),
(303, 'Kovanje, presovanje, štancovanje i valjanje metala; metalurgija praha', 255),
(304, 'Kovanje, presovanje, štancovanje i valjanje metala; metalurgija praha', 2550),
(305, 'Obrada i prevlačenje metala; mašinska obrada metala', 256),
(306, 'Obrada i prevlačenje metala', 2561),
(307, 'Mašinska obrada metala', 2562),
(308, 'Proizvodnja sečiva, alata i metalne robe opšte namene', 257),
(309, 'Proizvodnja sečiva', 2571),
(310, 'Proizvodnja brava i okova', 2572),
(311, 'Proizvodnja alata', 2573),
(312, 'Proizvodnja ostalih metalnih proizvoda', 259),
(313, 'Proizvodnja čeličnih buradi i slične ambalaže', 2591),
(314, 'Proizvodnja ambalaže od lakih metala', 2592),
(315, 'Proizvodnja žičanih proizvoda, lanaca i opruga', 2593),
(316, 'Proizvodnja veznih elemenata i vijčanih mašinskih proizvoda', 2594),
(317, 'Proizvodnja ostalih metalnih proizvoda', 2599),
(318, 'Proizvodnja računara, elektronskih i optičkih proizvoda', 26),
(319, 'Proizvodnja elektronskih elemenata i ploča', 261),
(320, 'Proizvodnja elektronskih elemenata', 2611),
(321, 'Proizvodnja štampanih elektronskih ploča', 2612),
(322, 'Proizvodnja računara i periferne opreme', 262),
(323, 'Proizvodnja računara i periferne opreme', 2620),
(324, 'Proizvodnja komunikacione opreme', 263),
(325, 'Proizvodnja komunikacione opreme', 2630),
(326, 'Proizvodnja elektronskih uređaja za široku potrošnju', 264),
(327, 'Proizvodnja elektronskih uređaja za široku potrošnju', 2640),
(328, 'Proizvodnja mernih, istraživačkih i navigacionih instrumenata i aparata; proizvodnja satova', 265),
(329, 'Proizvodnja mernih, istraživačkih i navigacionih instrumenata i aparata', 2651),
(330, 'Proizvodnja satova', 2652),
(331, 'Proizvodnja opreme za zračenje, elektromedicinske i elektroterapeutske opreme', 266),
(332, 'Proizvodnja opreme za zračenje, elektromedicinske i elektroterapeutske opreme', 2660),
(333, 'Proizvodnja optičkih instrumenata i fotografske opreme', 267),
(334, 'Proizvodnja optičkih instrumenata i fotografske opreme', 2670),
(335, 'Proizvodnja magnetnih i optičkih nosilaca zapisa', 268),
(336, 'Proizvodnja magnetnih i optičkih nosilaca zapisa', 2680),
(337, 'Proizvodnja električne opreme', 27),
(338, 'Proizvodnja elektromotora, generatora, transformatora i opreme za distribuciju električne energije', 271),
(339, 'Proizvodnja elektromotora, generatora i transformatora', 2711),
(340, 'Proizvodnja opreme za distribuciju električne energije i opreme za upravljanje električnom energijom', 2712),
(341, 'Proizvodnja baterija i akumulatora', 272),
(342, 'Proizvodnja baterija i akumulatora', 2720),
(343, 'Proizvodnja žičane i kablovske opreme', 273),
(344, 'Proizvodnja kablova od optičkih vlakana', 2731),
(345, 'Proizvodnja ostalih elektronskih i električnih provodnika i kablova', 2732),
(346, 'Proizvodnja opreme za povezivanje žica i kablova', 2733),
(347, 'Proizvodnja opreme za osvetljenje', 274),
(348, 'Proizvodnja opreme za osvetljenje', 2740),
(349, 'Proizvodnja aparata za domaćinstvo', 275),
(350, 'Proizvodnja električnih aparata za domaćinstvo', 2751),
(351, 'Proizvodnja neelektričnih aparata za domaćinstvo', 2752),
(352, 'Proizvodnja ostale električne opreme', 279),
(353, 'Proizvodnja ostale električne opreme', 2790),
(354, 'Proizvodnja nepomenutih mašina i nepomenute opreme', 28),
(355, 'Proizvodnja mašina opšte namene', 281),
(356, 'Proizvodnja motora i turbina, osim za letelice i motorna vozila', 2811),
(357, 'Proizvodnja hidrauličnih pogonskih uređaja', 2812),
(358, 'Proizvodnja ostalih pumpi i kompresora', 2813),
(359, 'Proizvodnja ostalih slavina i ventila', 2814),
(360, 'Proizvodnja ležajeva, zupčanika i zupčastih pogonskih elemenata', 2815),
(361, 'Proizvodnja ostalih mašina opšte namene', 282),
(362, 'Proizvodnja industrijskih peći i gorionika', 2821),
(363, 'Proizvodnja opreme za podizanje i prenošenje', 2822),
(364, 'Proizvodnja kancelarijskih mašina i opreme, osim računara i računarske opreme', 2823),
(365, 'Proizvodnja ručnih pogonskih aparata sa mehanizmima', 2824),
(366, 'Proizvodnja rashladne i ventilacione opreme, osim za domaćinstvo', 2825),
(367, 'Proizvodnja ostalih mašina i aparata opšte namene', 2829),
(368, 'Proizvodnja mašina za poljoprivredu i šumarstvo', 283),
(369, 'Proizvodnja mašina za poljoprivredu i šumarstvo', 2830),
(370, 'Proizvodnja mašina za obradu metala i alatnih mašina', 284),
(371, 'Proizvodnja mašina za obradu metala', 2841),
(372, 'Proizvodnja ostalih alatnih mašina', 2849),
(373, 'Proizvodnja ostalih mašina za specijalne namene', 289),
(374, 'Proizvodnja mašina za metalurgiju', 2891),
(375, 'Proizvodnja mašina za rudnike, kamenolome i građevinarstvo', 2892),
(376, 'Proizvodnja mašina za industriju hrane, pića i duvana', 2893),
(377, 'Proizvodnja mašina za industriju tekstila, odeće i kože', 2894),
(378, 'Proizvodnja mašina za industriju papira i kartona', 2895),
(379, 'Proizvodnja mašina za izradu plastike i gume', 2896),
(380, 'Proizvodnja mašina za ostale specijalne namene', 2899),
(381, 'Proizvodnja motornih vozila, prikolica i poluprikolica', 29),
(382, 'Proizvodnja motornih vozila', 291),
(383, 'Proizvodnja motornih vozila', 2910),
(384, 'Proizvodnja karoserija za motorna vozila, prikolice i poluprikolice', 292),
(385, 'Proizvodnja karoserija za motorna vozila, prikolice i poluprikolice', 2920),
(386, 'Proizvodnja delova i pribora za motorna vozila i motore za njih', 293),
(387, 'Proizvodnja električne i elektronske opreme za motorna vozila', 2931),
(388, 'Proizvodnja ostalih delova i dodatne opreme za motorna vozila', 2932),
(389, 'Proizvodnja ostalih saobraćajnih sredstava', 30),
(390, 'Izgradnja brodova i čamaca', 301),
(391, 'Izgradnja brodova i plovnih objekata', 3011),
(392, 'Izrada čamaca za sport i razonodu', 3012),
(393, 'Proizvodnja lokomotiva i šinskih vozila', 302),
(394, 'Proizvodnja lokomotiva i šinskih vozila', 3020),
(395, 'Proizvodnja vazdušnih i svemirskih letelica i odgovarajuće opreme', 303),
(396, 'Proizvodnja vazdušnih i svemirskih letelica i odgovarajuće opreme', 3030),
(397, 'Proizvodnja borbenih vojnih vozila', 304),
(398, 'Proizvodnja borbenih vojnih vozila', 3040),
(399, 'Proizvodnja ostalih transportnih sredstava', 309),
(400, 'Proizvodnja motocikala', 3091),
(401, 'Proizvodnja bicikala i invalidskih kolica', 3092),
(402, 'Proizvodnja ostale transportne opreme', 3099),
(403, 'Proizvodnja nameštaja', 31),
(404, 'Proizvodnja nameštaja', 310),
(405, 'Proizvodnja nameštaja za poslovne i prodajne prostore', 3101),
(406, 'Proizvodnja kuhinjskog nameštaja', 3102),
(407, 'Proizvodnja madraca', 3103),
(408, 'Proizvodnja ostalog nameštaja', 3109),
(409, 'Ostale prerađivačke delatnosti', 32),
(410, 'Proizvodnja nakita, bižuterije i sličnih predmeta', 321),
(411, 'Kovanje novca', 3211),
(412, 'Proizvodnja nakita i srodnih predmeta', 3212),
(413, 'Proizvodnja imitacije nakita i srodnih proizvoda', 3213),
(414, 'Proizvodnja muzičkih instrumenata', 322),
(415, 'Proizvodnja muzičkih instrumenata', 3220),
(416, 'Proizvodnja sportske opreme', 323),
(417, 'Proizvodnja sportske opreme', 3230),
(418, 'Proizvodnja igara i igračaka', 324),
(419, 'Proizvodnja igara i igračaka', 3240),
(420, 'Proizvodnja medicinskih i stomatoloških instrumenata i materijala', 325),
(421, 'Proizvodnja medicinskih i stomatoloških instrumenata i materijala', 3250),
(422, 'Ostale prerađivačke delatnosti', 329),
(423, 'Proizvodnja metli i četki', 3291),
(424, 'Proizvodnja ostalih predmeta', 3299),
(425, 'Popravka i montaža mašina i opreme', 33),
(426, 'Popravka metalnih proizvoda, mašina i opreme', 331),
(427, 'Popravka metalnih proizvoda', 3311),
(428, 'Popravka mašina', 3312),
(429, 'Popravka elektronske i optičke opreme', 3313),
(430, 'Popravka električne opreme', 3314),
(431, 'Popravka i održavanje brodova i čamaca', 3315),
(432, 'Popravka i održavanje letelica i svemirskih letelica', 3316),
(433, 'Popravka i održavanje druge transportne opreme', 3317),
(434, 'Popravka ostale opreme', 3319),
(435, 'Montaža industrijskih mašina i opreme', 332),
(436, 'Montaža industrijskih mašina i opreme', 3320),
(438, 'Snabdevanje električnom energijom, gasom, parom i klimatizacija', 35),
(439, 'Proizvodnja, prenos i distribucija električne energije', 351),
(440, 'Proizvodnja električne energije', 3511),
(441, 'Prenos električne energije', 3512),
(442, 'Distribucija električne energije', 3513),
(443, 'Trgovina električnom energijom', 3514),
(444, 'Proizvodnja gasa i distribucija gasovitih goriva gasovodima', 352),
(445, 'Proizvodnja gasa', 3521),
(446, 'Distribucija gasovitih goriva gasovodom', 3522),
(447, 'Trgovina gasovitim gorivima preko gasovodne mreže', 3523),
(448, 'Snabdevanje parom i klimatizacija', 353),
(449, 'Snabdevanje parom i klimatizacija', 3530),
(451, 'Skupljanje, prečišćavanje i distribucija vode', 36),
(452, 'Skupljanje, prečišćavanje i distribucija vode', 360),
(453, 'Skupljanje, prečišćavanje i distribucija vode', 3600),
(454, 'Uklanjanje otpadnih voda', 37),
(455, 'Uklanjanje otpadnih voda', 370),
(456, 'Uklanjanje otpadnih voda', 3700),
(457, 'Sakupljanje,  tretman i odlaganje otpada; ponovno iskorišćavanje otpadnih materija', 38),
(458, 'Skupljanje otpada', 381),
(459, 'Skupljanje otpada koji nije opasan', 3811),
(460, 'Skupljanje opasnog otpada', 3812),
(461, 'Tretman i odlaganje otpada', 382),
(462, 'Tretman i odlaganje otpada koji nije opasan', 3821),
(463, 'Tretman i odlaganje opasnog otpada', 3822),
(464, 'Ponovna upotreba materijala', 383),
(465, 'Demontaža olupina', 3831),
(466, 'Ponovna upotreba razvrstanih materijala', 3832),
(467, 'Sanacija, rekultivacija i druge usluge u oblasti upravljanja otpadom', 39),
(468, 'Sanacija, rekultivacija i duge usluge u oblasti upravljanja otpadom', 390),
(469, 'Sanacija, rekultivacija i druge usluge u oblasti upravljanja otpadom', 3900),
(471, 'Izgradnja zgrada', 41),
(472, 'Razrada građevinskih projekata', 411),
(473, 'Razrada građevinskih projekata', 4110),
(474, 'Izgradnja stambenih i nestambenih zgrada', 412),
(475, 'Izgradnja stambenih i nestambenih zgrada', 4120),
(476, 'Izgradnja ostalih građevina', 42),
(477, 'Izgradnja puteva i železničkih pruga', 421),
(478, 'Izgradnja puteva i autoputeva', 4211),
(479, 'Izgradnja železničkih pruga i podzemnih železnica', 4212),
(480, 'Izgradnja mostova i tunela', 4213),
(481, 'Izgradnja cevovoda, električnih i komunikacionih vodova', 422),
(482, 'Izgradnja cevovoda', 4221),
(483, 'Izgradnja električnih i telekomunikacionih vodova', 4222),
(484, 'Izgradnja ostalih građevina', 429),
(485, 'Izgradnja hidrotehničkih objekata', 4291),
(486, 'Izgradnja ostalih nepomenutih građevina', 4299),
(487, 'Specijalizovani građevinski radovi', 43),
(488, 'Rušenje i pripremanje gradilišta', 431),
(489, 'Rušenje objekata', 4311),
(490, 'Pripremna gradilišta', 4312),
(491, 'Ispitivanje terena bušenjem i sondiranjem', 4313),
(492, 'Instalacioni radovi u građevinarstvu', 432),
(493, 'Postavljanje električnih instalacija', 4321),
(494, 'Postavljanje vodovodnih, kanalizacionih, grejnih i klimatizacionih sistema', 4322),
(495, 'Ostali instalacioni radovi u građevinarstvu', 4329),
(496, 'Završni građevinsko-zanatski radovi', 433),
(497, 'Malterisanje', 4331),
(498, 'Ugradnja stolarije', 4332),
(499, 'Postavljanje podnih i zidnih obloga', 4333),
(500, 'Bojenje i zastakljivanje', 4334),
(501, 'Ostali završni radovi', 4339),
(502, 'Ostali specifični građevinski radovi', 439),
(503, 'Krovni radovi', 4391),
(504, 'Ostali nepomenuti specifični građevinski radovi', 4399),
(506, 'Trgovina na veliko i trgovina na malo i popravka motornih vozila i motocikala', 45),
(507, 'Trgovina motornim vozilima', 451),
(508, 'Trgovina automobilima i lakim motornim vozilima', 4511),
(509, 'Trgovina ostalim motornim vozilima', 4519),
(510, 'Održavanje i popravka motornih vozila', 452),
(511, 'Održavanje i popravka motornih vozila', 4520),
(512, 'Trgovina delovima i priborom za motorna vozila', 453),
(513, 'Trgovina na veliko delovima i opremom za motorna vozila', 4531),
(514, 'Trgovina na malo delovima i opremom za motorna vozila', 4532),
(515, 'Trgovina motociklima, delovima i priborom, održavanje i popravka motocikala', 454),
(516, 'Trgovina motociklima, delovima i priborom, održavanje i popravka motocikala', 4540),
(517, 'Trgovina na veliko, osim trgovine motornim vozilima i motociklima', 46),
(518, 'Trgovina na veliko za naknadu', 461),
(519, 'Posredovanje u prodaji poljoprivrednih sirovina, životinja, tekstilnih sirovina i poluproizvoda', 4611),
(520, 'Posredovanje u prodaji goriva, ruda, metala i industrijskih hemikalija', 4612),
(521, 'Posredovanje u prodaji drvne građe i građevinskog materijala', 4613),
(522, 'Posredovanje u prodaji mašina, industrijske opreme, brodova i aviona', 4614),
(523, 'Posredovanje u prodaji nameštaja, predmeta za domaćinstvo i metalne robe', 4615),
(524, 'Posredovanje u prodaji tekstila, odeće, krzna, obuće i predmeta od kože', 4616),
(525, 'Posredovanje u prodaji hrane, pića i duvana', 4617),
(526, 'Specijalizovano posredovanje u prodaji posebnih proizvoda', 4618),
(527, 'Posredovanje u prodaji raznovrsnih proizvoda', 4619),
(528, 'Trgovina na veliko poljoprivrednim sirovinama i životinjama', 462),
(529, 'Trgovina na veliko žitom, sirovim duvanom, semenjem i hranom za životinje', 4621),
(530, 'Trgovina na veliko cvećem i sadnicama', 4622),
(531, 'Trgovina na veliko životinjama', 4623),
(532, 'Trgovina na veliko sirovom, nedovršenom i dovršenom kožom', 4624),
(533, 'Trgovina na veliko hranom, pićima i duvanom', 463),
(534, 'Trgovina na veliko voćem i povrćem', 4631),
(535, 'Trgovina na veliko mesom i proizvodima od mesa', 4632),
(536, 'Trgovina na veliko mlečnim proizvodima, jajima i jestivim uljima i mastima', 4633),
(537, 'Trgovina na veliko pićima', 4634),
(538, 'Trgovina na veliko duvanskim proizvodima', 4635),
(539, 'Trgovina na veliko šećerom, čokoladom i slatkišima', 4636),
(540, 'Trgovina na veliko kafom, čajevima, kakaom i začinima', 4637),
(541, 'Trgovina na veliko ostalom hranom, uključujući ribu, ljuskare i mekušce', 4638),
(542, 'Nespecijalizovana trgovina na veliko hranom, pićima i duvanom', 4639),
(543, 'Trgovina na veliko predmetima za domaćinstvo', 464),
(544, 'Trgovina na veliko tekstilom', 4641),
(545, 'Trgovina na veliko odećom i obućom', 4642),
(546, 'Trgovina na veliko električnim aparatima za domaćinstvo', 4643),
(547, 'Trgovina na veliko porculanom, staklenom robom i sredstvima za čišćenje', 4644),
(548, 'Trgovina na veliko parfimerijskim i kozmetičkim proizvodima', 4645),
(549, 'Trgovina na veliko farmaceutskim proizvodima', 4646),
(550, 'Trgovina na veliko nameštajem, tepisima i opremom za osvetljenje', 4647),
(551, 'Trgovina na veliko satovima i nakitom', 4648),
(552, 'Trgovina na veliko ostalim proizvodima za domaćinstvo', 4649),
(553, 'Trgovina na veliko informaciono-komunikacionom opremom', 465),
(554, 'Trgovina na veliko računarima, računarskom opremom i softverima', 4651),
(555, 'Trgovina na veliko elektronskim i telekomunikacionim delovima i opremom', 4652),
(556, 'Trgovina na veliko ostalim mašinama, opremom i priborom', 466),
(557, 'Trgovina na veliko poljoprivrednim mašinama, opremom i priborom', 4661),
(558, 'Trgovina na veliko alatnim mašinama', 4662),
(559, 'Trgovina na veliko rudarskim i građevinskim mašinama', 4663),
(560, 'Trgovina na veliko mašinama za tekstilnu industriju i mašinama za šivenje i pletenje', 4664),
(561, 'Trgovina na veliko kancelarijskim nameštajem', 4665),
(562, 'Trgovina na veliko ostalim kancelarijskim mašinama i opremom', 4666),
(563, 'Trgovina na veliko ostalim mašinama i opremom', 4669),
(564, 'Ostala specijalizovana trgovina na veliko', 467),
(565, 'Trgovina na veliko čvrstim, tečnim i gasovitim gorivima i sličnim proizvodima', 4671),
(566, 'Trgovina na veliko metalima i metalnim rudama', 4672),
(567, 'Trgovina na veliko drvetom, građevinskim materijalom i sanitarnom opremom', 4673),
(568, 'Trgovina na veliko metalnom robom, instalacionim materijalima, opremom i priborom za grejanje', 4674),
(569, 'Trgovina na veliko hemijskim proizvodima', 4675),
(570, 'Trgovina na veliko ostalim poluproizvodima', 4676),
(571, 'Trgovina na veliko otpacima i ostacima', 4677),
(572, 'Nespecijalizovana trgovina na veliko', 469),
(573, 'Nespecijalizovana trgovina na veliko', 4690),
(574, 'Trgovina na malo, osim trgovine motornim vozilima i motociklima', 47),
(575, 'Trgovina na malo u nespecijalizovanim prodavnicama', 471),
(576, 'Trgovina na malo u nespecijalizovanim prodavnicama, pretežno hranom, pićima i duvanom', 4711),
(577, 'Ostala trgovina na malo u nespecijalizovanim prodavnicama', 4719),
(578, 'Trgovina na malo hranom, pićima i duvanom u specijalizovanim prodavnicama', 472),
(579, 'Trgovina na malo voćem i povrćem u specijalizovanim prodavnicama', 4721),
(580, 'Trgovina na malo mesom i proizvodima od mesa u specijalizovanim prodavnicama', 4722),
(581, 'Trgovina na malo ribom, ljuskarima i mekušcima u specijalizovanim prodavnicama', 4723),
(582, 'Trgovina na malo hlebom, testeninom, kolačima i slatkišima u specijalizovanim prodavnicama', 4724),
(583, 'Trgovina na malo pićima u specijalizovanim prodavnicama', 4725),
(584, 'Trgovina na malo proizvodima od duvana u specijalizovanim prodavnicama', 4726),
(585, 'Ostala trgovina na malo hranom u specijalizovanim prodavnicama', 4729),
(586, 'Trgovina na malo motornim gorivima u specijalizovanim prodavnicama', 473),
(587, 'Trgovina na malo motornim gorivima u specijalizovanim prodavnicama', 4730),
(588, 'Trgovina na malo informaciono-komunikacionom opremom u specijalizovanim prodavnicama', 474),
(589, 'Trgovina na malo računarima, perifernim jedinicama i softverom u specijalizovanim prodavnicama', 4741),
(590, 'Trgovina na malo telekomunikacionom opremom u specijalizovanim prodavnicama', 4742),
(591, 'Trgovina na malo audio i video opremom u specijalizovanim prodavnicama', 4743),
(592, 'Trgovina na malo ostalom opremom za domaćinstvo u specijalizovanim prodavnicama', 475),
(593, 'Trgovina na malo tekstilom u specijalizovanim prodavnicama', 4751),
(594, 'Trgovina na malo metalnom robom, bojama i staklom u specijalizovanim prodavnicama', 4752),
(595, 'Trgovina na malo tepisima, zidnim i podnim oblogama u specijalizovanim prodavnicama', 4753),
(596, 'Trgovina na malo električnim aparatima za domaćinstvo u specijalizovanim prodavnicama', 4754),
(597, 'Trgovina na malo nameštajem, opremom za osvetljenje i ostalim predmetima za domaćinstvo u specijalizovanim prodavnicama', 4759),
(598, 'Trgovina na malo predmetima za kulturu i rekreaciju u specijalizovanim prodavnicama', 476),
(599, 'Trgovina na malo knjigama u specijalizovanim prodavnicama', 4761),
(600, 'Trgovina na malo novinama i kancelarijskim materijalom u specijalizovanim prodavnicama', 4762),
(601, 'Trgovina na malo muzičkim i video zapisima u specijalizovanim prodavnicama', 4763),
(602, 'Trgovina na malo sportskom opremom u specijalizovanim prodavnicama', 4764),
(603, 'Trgovina na malo igrama i igračkama u specijalizovanim prodavnicama', 4765),
(604, 'Trgovina na malo ostalom robom u specijalizovanim prodavnicama', 477),
(605, 'Trgovina na malo odećom u specijalizovanim prodavnicama', 4771),
(606, 'Trgovina na malo obućom i predmetima od kože u specijalizovanim prodavnicama', 4772),
(607, 'Trgovina na malo farmaceutskim proizvodima u specijalizovanim prodavnicama – apotekama', 4773),
(608, 'Trgovina na malo medicinskim i ortopedskim pomagalima u specijalizovanim prodavnicama', 4774),
(609, 'Trgovina na malo kozmetičkim i toaletnim proizvodima u specijalizovanim prodavnicama', 4775),
(610, 'Trgovina na malo cvećem, sadnicama, semenjem, đubrivima, kućnim ljubimcima i hranom za kućne ljubimce u specijalizovanim prodavnicama', 4776),
(611, 'Trgovina na malo satovima i nakitom u specijalizovanim prodavnicama', 4777),
(612, 'Ostala trgovina na malo novim proizvodima u specijalizovanim prodavnicama', 4778),
(613, 'Trgovina na malo polovnom robom u prodavnicama', 4779),
(614, 'Trgovina na malo na tezgama i pijacama', 478),
(615, 'Trgovina na malo hranom, pićima i duvanskim proizvodima na tezgama i pijacama', 4781),
(616, 'Trgovina na malo tekstilom, odećom i obućom na tezgama i pijacama', 4782),
(617, 'Trgovina na malo ostalom robom na tezgama i pijacama', 4789),
(618, 'Trgovina na malo van prodavnica, tezgi i pijaca', 479),
(619, 'Trgovina na malo posredstvom pošte ili preko interneta', 4791),
(620, 'Ostala trgovina na malo izvan prodavnica, tezgi i pijaca', 4799),
(622, 'Kopneni saobraćaj i cevovodni transport', 49),
(623, 'Železnički prevoz putnika, daljinski i regionalni', 491),
(624, 'Železnički prevoz putnika, daljinski i regionalni', 4910),
(625, 'Železnički prevoz tereta', 492),
(626, 'Železnički prevoz tereta', 4920),
(627, 'Ostali kopneni prevoz putnika', 493),
(628, 'Gradski i prigradski kopneni prevoz putnika', 4931),
(629, 'Taksi prevoz', 4932),
(630, 'Ostali prevoz putnika u kopnenom saobraćaju', 4939),
(631, 'Drumski prevoz tereta i usluge preseljenja', 494),
(632, 'Drumski prevoz tereta', 4941),
(633, 'Usluge preseljenja', 4942),
(634, 'Cevovodni transport', 495),
(635, 'Cevovodni transport', 4950),
(636, 'Vodeni saobraćaj', 50),
(637, 'Pomorski i priobalni prevoz putnika', 501),
(638, 'Pomorski i priobalni prevoz putnika', 5010),
(639, 'Pomorski i priobalni prevoz tereta', 502),
(640, 'Pomorski i priobalni prevoz tereta', 5020),
(641, 'Prevoz putnika unutrašnjim plovnim putevima', 503),
(642, 'Prevoz putnika unutrašnjim plovnim putevima', 5030),
(643, 'Prevoz tereta unutrašnjim plovnim putevima', 504),
(644, 'Prevoz tereta unutrašnjim plovnim putevima', 5040),
(645, 'Vazdušni saobraćaj', 51),
(646, 'Vazdušni prevoz putnika', 511),
(647, 'Vazdušni prevoz putnika', 5110),
(648, 'Vazdušni prevoz tereta i vasionski saobraćaj', 512),
(649, 'Vazdušni prevoz tereta', 5121),
(650, 'Vasionski saobraćaj', 5122),
(651, 'Skladištenje i prateće aktivnosti u saobraćaju', 52),
(652, 'Skladištenje', 521),
(653, 'Skladištenje', 5210),
(654, 'Prateće aktivnosti u saobraćaju', 522),
(655, 'Uslužne delatnosti u kopnenom saobraćaju', 5221),
(656, 'Uslužne delatnosti u vodenom saobraćaju', 5222),
(657, 'Uslužne delatnosti u vazdušnom saobraćaju', 5223),
(658, 'Manipulacija teretom', 5224),
(659, 'Ostale prateće delatnosti u saobraćaju', 5229),
(660, 'Poštanske aktivnosti', 53),
(661, 'Poštanske aktivnosti javnog servisa', 531),
(662, 'Poštanske aktivnosti javnog servisa', 5310),
(663, 'Poštanske aktivnosti komercijalnog servisa', 532),
(664, 'Poštanske aktivnosti komercijalnog servisa', 5320),
(666, 'Smeštaj', 55),
(667, 'Hoteli i sličan smeštaj', 551),
(668, 'Hoteli i sličan smeštaj', 5510),
(669, 'Odmarališta i slični objekti za kraći boravak', 552),
(670, 'Odmarališta i slični objekti za kraći boravak', 5520),
(671, 'Delatnost kampova, auto-kampova i kampova za turističke prikolice ', 553),
(672, 'Delatnost kampova, auto-kampova i kampova za turističke prikolice', 5530),
(673, 'Ostali smeštaj', 559),
(674, 'Ostali smeštaj', 5590),
(675, 'Delatnost pripremanja i posluživanja hrane i pića', 56),
(676, 'Delatnosti restorana i pokretnih ugostiteljskih objekta', 561),
(677, 'Delatnosti restorana i pokretnih ugostiteljskih objekta', 5610),
(678, 'Ketering i ostale usluge pripremanja i posluživanja hrane', 562),
(679, 'Ketering', 5621),
(680, 'Ostale usluge pripremanja i posluživanja hrane', 5629),
(681, 'Usluge pripremanja i posluživanja pića', 563),
(682, 'Usluge pripremanja i posluživanja pića', 5630),
(684, 'Izdavačke delatnosti', 58),
(685, 'Izdavanje knjiga, časopisa i druge izdavačke delatnosti', 581),
(686, 'Izdavanje knjiga', 5811),
(687, 'Izdavanje imenika i adresara', 5812),
(688, 'Izdavanje novina', 5813),
(689, 'Izdavanje časopisa i periodičnih izdanja', 5814),
(690, 'Ostala izdavačka delatnost', 5819),
(691, 'Izdavanje softvera', 582),
(692, 'Izdavanje računarskih igara', 5821),
(693, 'Izdavanje ostalih softvera', 5829),
(694, 'Kinematografska i televizijska produkcija, snimanje zvučnih zapisa i izdavanje muzičkih zapisa', 59),
(695, 'Kinematografska i televizijska produkcija', 591),
(696, 'Proizvodnja kinematografskih dela, audio-vizuelnih proizvoda i televizijskog programa', 5911),
(697, 'Delatnosti koje slede nakon faze snimanja u proizvodnji kinematografskih dela i televizijskog programa', 5912),
(698, 'Distribucija kinematografskih dela, audio-vizuelnih dela i televizijskog programa', 5913),
(699, 'Delatnost prikazivanja kinematografskih dela', 5914),
(700, 'Snimanje i izdavanje zvučnih zapisa i muzike', 592),
(701, 'Snimanje i izdavanje zvučnih zapisa i muzike', 5920),
(702, 'Programske aktivnosti i emitovanje', 60),
(703, 'Emitovanje radio-programa', 601),
(704, 'Emitovanje radio-programa', 6010),
(705, 'Proizvodnja i emitovanje televizijskog programa', 602),
(706, 'Proizvodnja i emitovanje televizijskog programa', 6020),
(707, 'Telekomunikacije', 61),
(708, 'Kablovske telekomunikacije', 611),
(709, 'Kablovske telekomunikacije', 6110),
(710, 'Bežične telekomunikacije', 612),
(711, 'Bežične telekomunikacije', 6120),
(712, 'Satelitske telekomunikacije', 613),
(713, 'Satelitske telekomunikacije', 6130),
(714, 'Ostale telekomunikacione delatnosti', 619),
(715, 'Ostale telekomunikacione delatnosti', 6190),
(716, 'Računarsko programiranje, konsultantske i s tim povezane delatnosti', 62),
(717, 'Računarsko programiranje, konsultantske i s tim povezane delatnosti', 620),
(718, 'Računarsko programiranje', 6201),
(719, 'Konsultantske delatnosti u oblasti informacione tehnologije', 6202),
(720, 'Upravljanje računarskom opremom', 6203),
(721, 'Ostale usluge informacione tehnologije', 6209),
(722, 'Informacione uslužne delatnosti', 63),
(723, 'Obrada podataka, hosting i s tim povezane delatnosti; veb portali', 631),
(724, 'Obrada podataka, hosting i sl.', 6311),
(725, 'Veb portali', 6312),
(726, 'Ostale informacione uslužne delatnosti', 639),
(727, 'Delatnosti novinskih agencija', 6391),
(728, 'Informacione uslužne delatnosti na drugom mestu nepomenute', 6399),
(730, 'Finansijske usluge, osim osiguranja i penzijskih fondova', 64),
(731, 'Monetarno posredovanje', 641),
(732, 'Centralna banka', 6411),
(733, 'Ostalo monetarno posredovanje', 6419),
(734, 'Delatnost holding kompanija', 642),
(735, 'Delatnost holding kompanija', 6420),
(736, 'Poverenički fondovi (trastovi), investicioni fondovi i slični finansijski entiteti', 643),
(737, 'Poverenički fondovi (trastovi), investicioni fondovi i slični finansijski entiteti', 6430),
(738, 'Ostale finansijske usluge, osim osiguranja i penzijskih fondova', 649),
(739, 'Finansijski lizing', 6491),
(740, 'Ostale usluge kreditiranja', 6492),
(741, 'Ostale nepomenute finansijske usluge, osim osiguranja i penzijskih fondova', 6499),
(742, 'Osiguranje, reosiguranje i penzijski fondovi, osim obaveznog socijalnog osiguranja', 65),
(743, 'Osiguranje', 651),
(744, 'Životno osiguranje', 6511),
(745, 'Neživotno osiguranje', 6512),
(746, 'Reosiguranje', 652),
(747, 'Reosiguranje', 6520),
(748, 'Penzijski fondovi', 653),
(749, 'Penzijski fondovi', 6530),
(750, 'Pomoćne delatnosti u pružanju finansijskih usluga i osiguranju', 66),
(751, 'Pomoćne delatnosti u pružanju finansijskih usluga, osim osiguranja i penzijskih fondova', 661),
(752, 'Finansijske i robne berze', 6611),
(753, 'Brokerski poslovi s hartijama od vrednosti i berzanskom robom', 6612),
(754, 'Ostale pomoćne delatnosti u pružanju finansijskih usluga, osim osiguranja i penzijskih fondova', 6619),
(755, 'Pomoćne delatnosti u osiguranju i penzijskim fondovima', 662),
(756, 'Obrada odštetnih zahteva i procenjivanje rizika i šteta', 6621),
(757, 'Delatnost zastupnika i posrednika u osiguranju', 6622),
(758, 'Ostale pomoćne delatnosti u osiguranju i penzijskim fondovima', 6629),
(759, 'Upravljanje fondovima', 663),
(760, 'Upravljanje fondovima', 6630),
(762, 'Poslovanje nekretninama', 68),
(763, 'Kupovina i prodaja vlastitih nekretnina', 681),
(764, 'Kupovina i prodaja vlastitih nekretnina', 6810),
(765, 'Iznajmljivanje vlastitih ili iznajmljenih nekretnina i upravljanje njima', 682),
(766, 'Iznajmljivanje vlastitih ili iznajmljenih nekretnina i upravljanje njima', 6820),
(767, 'Poslovanje nekretninama za naknadu', 683),
(768, 'Delatnost agencija za nekretnine', 6831),
(769, 'Upravljanje nekretninama za naknadu', 6832),
(771, 'Pravni i računovodstveni poslovi', 69),
(772, 'Pravni poslovi', 691),
(773, 'Pravni poslovi', 6910),
(774, 'Računovodstveni, knjigovodstveni i revizorski poslovi; poresko savetovanje', 692),
(775, 'Računovodstveni, knjigovodstveni i revizorski poslovi; poresko savetovanje', 6920),
(776, 'Upravljačke delatnosti; savetovanje u vezi sa upravljanjem', 70),
(777, 'Upravljanje ekonomskim subjektom', 701),
(778, 'Upravljanje ekonomskim subjektom', 7010),
(779, 'Menadžerski konsultantski poslovi', 702),
(780, 'Delatnost komunikacija i odnosa s javnošću', 7021),
(781, 'Konsultantske aktivnosti u vezi s poslovanjem i ostalim upravljanjem', 7022),
(782, 'Arhitektonske i inženjerske delatnosti; inženjersko ispitivanje i analize', 71),
(783, 'Arhitektonske i inženjerske delatnosti i tehničko savetovanje', 711),
(784, 'Arhitektonska delatnost', 7111),
(785, 'Inženjerske delatnosti i tehničko savetovanje', 7112),
(786, 'Tehničko ispitivanje i analize', 712),
(787, 'Tehničko ispitivanje i analize', 7120),
(788, 'Naučno istraživanje i razvoj', 72),
(789, 'Istraživanje i eksperimentalni razvoj u prirodnim i tehničko-tehnološkim naukama', 721),
(790, 'Istraživanje i eksperimentalni razvoj u biotehnologiji', 7211),
(791, 'Istraživanje i razvoj u ostalim prirodnim i tehničko-tehnološkim naukama', 7219),
(792, 'Istraživanje i razvoj u društvenim i humanističkim naukama', 722),
(793, 'Istraživanje i razvoj u društvenim i humanističkim naukama', 7220),
(794, 'Reklamiranje i istraživanje tržišta', 73),
(795, 'Reklamiranje', 731),
(796, 'Delatnost reklamnih agencija', 7311),
(797, 'Medijsko predstavljanje', 7312),
(798, 'Istraživanje tržišta i ispitivanje javnog mnjenja', 732),
(799, 'Istraživanje tržišta i ispitivanje javnog mnjenja', 7320),
(800, 'Ostale stručne, naučne i tehničke delatnosti', 74),
(801, 'Specijalizovane dizajnerske delatnosti', 741),
(802, 'Specijalizovane dizajnerske delatnosti', 7410),
(803, 'Fotografske usluge', 742),
(804, 'Fotografske usluge', 7420),
(805, 'Prevođenje i usluge tumača', 743),
(806, 'Prevođenje i usluge tumača', 7430),
(807, 'Ostale stručne, naučne i tehničke delatnosti', 749),
(808, 'Ostale stručne, naučne i tehničke delatnosti', 7490),
(809, 'Veterinarske delatnosti', 75),
(810, 'Veterinarska delatnost', 750),
(811, 'Veterinarska delatnost', 7500),
(813, 'Iznajmljivanje i lizing', 77),
(814, 'Iznajmljivanje i lizing motornih vozila', 771),
(815, 'Iznajmljivanje i lizing automobila i lakih motornih vozila', 7711),
(816, 'Iznajmljivanje i lizing kamiona', 7712),
(817, 'Iznajmljivanje i lizing predmeta za ličnu upotrebu i upotrebu u domaćinstvu', 772),
(818, 'Iznajmljivanje i lizing opreme za rekreaciju i sport', 7721),
(819, 'Iznajmljivanje video-kaseta i kompakt-diskova', 7722),
(820, 'Iznajmljivanje i lizing ostalih predmeta za ličnu upotrebu i upotrebu u domaćinstvu', 7729),
(821, 'Iznajmljivanje i lizing mašina, opreme i materijalnih dobara', 773),
(822, 'Iznajmljivanje i lizing poljoprivrednih mašina i opreme', 7731),
(823, 'Iznajmljivanje i lizing mašina i opreme za građevinarstvo', 7732),
(824, 'Iznajmljivanje i lizing kancelarijskih mašina i kancelarijske opreme (uključujući računare)', 7733),
(825, 'Iznajmljivanje i lizing opreme za vodeni transport', 7734),
(826, 'Iznajmljivanje i lizing opreme za vazdušni transport', 7735),
(827, 'Iznajmljivanje i lizing ostalih mašina, opreme i materijalnih dobara', 7739),
(828, 'Lizing intelektualne svojine i sličnih proizvoda, autorskih dela i predmeta srodnih prava', 774),
(829, 'Lizing intelektualne svojine i sličnih proizvoda, autorskih dela i predmeta srodnih prava', 7740),
(830, 'Delatnosti zapošljavanja', 78),
(831, 'Delatnost agencija za zapošljavanje', 781),
(832, 'Delatnost agencija za zapošljavanje', 7810),
(833, 'Delatnost agencija za privremeno zapošljavanje', 782),
(834, 'Delatnost agencija za privremeno zapošljavanje', 7820),
(835, 'Ostalo ustupanje ljudskih resursa', 783),
(836, 'Ostalo ustupanje ljudskih resursa', 7830),
(837, 'Delatnost putničkih agencija, tur-operatora, usluge rezervacije i prateće aktivnosti', 79),
(838, 'Delatnost putničkih agencija i tur-operatora', 791),
(839, 'Delatnost putničkih agencija', 7911),
(840, 'Delatnost tur-operatora', 7912),
(841, 'Ostale usluge rezervacije i delatnosti povezane s njima', 799),
(842, 'Ostale usluge rezervacije i delatnosti povezane s njima', 7990),
(843, 'Zaštitne i istražne delatnosti', 80),
(844, 'Delatnost privatnog obezbeđenja', 801),
(845, 'Delatnost privatnog obezbeđenja', 8010),
(846, 'Usluge sistema obezbeđenja', 802),
(847, 'Usluge sistema obezbeđenja', 8020),
(848, 'Istražne delatnosti', 803),
(849, 'Istražne delatnosti', 8030),
(850, 'Usluge održavanja objekata i okoline', 81),
(851, 'Usluge održavanja objekata', 811),
(852, 'Usluge održavanja objekata', 8110),
(853, 'Usluge čišćenja', 812),
(854, 'Usluge redovnog čišćenja zgrada', 8121),
(855, 'Usluge ostalog čišćenja zgrada i opreme', 8122),
(856, 'Usluge ostalog čišćenja', 8129),
(857, 'Usluge uređenja i održavanja okoline', 813),
(858, 'Usluge uređenja i održavanja okoline', 8130),
(859, 'Kancelarijsko-administrativne i druge pomoćne poslovne delatnosti', 82),
(860, 'Kancelarijsko-administrativne i pomoćne delatnosti', 821),
(861, 'Kombinovane kancelarijsko-administrativne usluge', 8211),
(862, 'Fotokopiranje, pripremanje dokumenata i druga specijalizovana kancelarijska podrška', 8219),
(863, 'Delatnost pozivnih centara', 822),
(864, 'Delatnost pozivnih centara', 8220),
(865, 'Organizovanje sastanaka i sajmova', 823),
(866, 'Organizovanje sastanaka i sajmova', 8230),
(867, 'Poslovne, pomoćne, uslužne i ostale delatnosti', 829),
(868, 'Delatnost agencija za naplatu potraživanja i kreditnih biroa', 8291),
(869, 'Usluge pakovanja', 8292),
(870, 'Ostale uslužne aktivnosti podrške poslovanju', 8299),
(872, 'Javna uprava i odbrana; obavezno socijalno osiguranje', 84),
(873, 'Državna uprava, ekonomska i socijalna politika ', 841),
(874, 'Delatnost državnih organa', 8411),
(875, 'Uređivanje delatnosti subjekata koji pružaju zdravstvenu zaštitu, usluge u obrazovanju i kulturi i druge društvene usluge, osim obaveznog socijalnog osiguranja', 8412),
(876, 'Uređenje poslovanja i doprinos uspešnijem poslovanju u oblasti ekonomije', 8413),
(877, 'Pomoćne aktivnosti za funkcionisanje države', 842),
(878, 'Spoljni poslovi', 8421),
(879, 'Poslovi odbrane', 8422),
(880, 'Sudske i pravosudne delatnosti', 8423),
(881, 'Obezbeđivanje javnog reda i bezbednosti', 8424),
(882, 'Delatnost vatrogasnih jedinica', 8425),
(883, 'Obavezno socijalno osiguranje', 843),
(884, 'Obavezno socijalno osiguranje', 8430),
(886, 'Obrazovanje', 85),
(887, 'Predškolsko obrazovanje', 851),
(888, 'Predškolsko obrazovanje', 8510),
(889, 'Osnovno obrazovanje', 852),
(890, 'Osnovno obrazovanje', 8520),
(891, 'Srednje obrazovanje', 853),
(892, 'Srednje opšte obrazovanje', 8531),
(893, 'Srednje stručno obrazovanje', 8532),
(894, 'Visoko obrazovanje', 854),
(895, 'Obrazovanje posle srednjeg koje nije visoko', 8541),
(896, 'Visoko obrazovanje', 8542),
(897, 'Ostalo obrazovanje', 855),
(898, 'Sportsko i rekreativno obrazovanje', 8551),
(899, 'Umetničko obrazovanje', 8552),
(900, 'Delatnost škola za vozače', 8553),
(901, 'Ostalo obrazovanje', 8559),
(902, 'Pomoćne obrazovne delatnosti', 856),
(903, 'Pomoćne obrazovne delatnosti', 8560),
(905, 'Zdravstvene delatnosti', 86),
(906, 'Delatnost bolnica', 861);
INSERT INTO `APR` (`PKDelatnosti`, `naziv`, `sifraDelatnosti`) VALUES
(907, 'Delatnost bolnica', 8610),
(908, 'Medicinska i stomatološka praksa', 862),
(909, 'Opšta medicinska praksa', 8621),
(910, 'Specijalistička medicinska praksa', 8622),
(911, 'Stomatološka praksa', 8623),
(912, 'Ostala zdravstvena zaštita', 869),
(913, 'Ostala zdravstvena zaštita', 8690),
(914, 'Socijalna zaštita sa smeštajem', 87),
(915, 'Delatnosti smeštajnih ustanova s medicinskom negom', 871),
(916, 'Delatnosti smeštajnih ustanova s medicinskom negom', 8710),
(917, 'Socijalno staranje u smeštajnim ustanovama za lica s teškoćama u razvoju, duševno obolele osobe i osobe s bolestima zavisnosti', 872),
(918, 'Socijalno staranje u smeštajnim ustanovama za lica s teškoćama u razvoju, duševno obolele osobe i osobe s bolestima zavisnosti', 8720),
(919, 'Rad ustanova za stara lica i lica s posebnim potrebama', 873),
(920, 'Rad ustanova za stara lica i lica s posebnim potrebama', 8730),
(921, 'Ostali oblici socijalne zaštite sa smeštajem', 879),
(922, 'Ostali oblici socijalne zaštite sa smeštajem', 8790),
(923, 'Socijalna zaštita bez smeštaja', 88),
(924, 'Socijalna zaštita bez smeštaja za stara lica i lica s posebnim potrebama', 881),
(925, 'Socijalna zaštita bez smeštaja za stara lica i lica s posebnim potrebama', 8810),
(926, 'Ostala socijalna zaštita bez smeštaja', 889),
(927, 'Delatnost dnevne brige o deci', 8891),
(928, 'Ostala nepomenuta socijalna zaštita bez smeštaja', 8899),
(930, 'Stvaralačke, umetničke i zabavne delatnosti', 90),
(931, 'Stvaralačke, umetničke i zabavne delatnosti', 900),
(932, 'Izvođačka umetnost', 9001),
(933, 'Druge umetničke delatnosti u okviru izvođačke umetnosti', 9002),
(934, 'Umetničko stvaralaštvo', 9003),
(935, 'Rad umetničkih ustanova', 9004),
(936, 'Delatnost biblioteka, arhiva, muzeja galerija i zbirki i ostale kulturne delatnosti', 91),
(937, 'Rad biblioteka, arhiva, muzeja, galerija i zbirki, zavoda za zaštitu spomenika kulture i ostale kulturne delatnosti ', 910),
(938, 'Delatnosti biblioteka i arhiva', 9101),
(939, 'Delatnost muzeja galerija i zbirki', 9102),
(940, 'Zaštita i održavanje nepokretnih kulturnih dobara, kulturno-istorijskih lokacija, zgrada i sličnih turističkih spomenika', 9103),
(941, 'Delatnost botaničkih i zooloških vrtova i zaštita prirodnih vrednosti', 9104),
(942, 'Kockanje i klađenje', 92),
(943, 'Kockanje i klađenje', 920),
(944, 'Kockanje i klađenje', 9200),
(945, 'Sportske, zabavne i rekreativne delatnosti', 93),
(946, 'Sportske delatnosti', 931),
(947, 'Delatnost sportskih objekata', 9311),
(948, 'Delatnost sportskih klubova', 9312),
(949, 'Delatnost fitnes klubova', 9313),
(950, 'Ostale sportske delatnosti', 9319),
(951, 'Ostale zabavne i rekreativne delatnosti', 932),
(952, 'Delatnost zabavnih i tematskih parkova', 9321),
(953, 'Ostale zabavne i rekreativne delatnosti', 9329),
(955, 'Delatnosti udruženja', 94),
(956, 'Delatnost poslovnih i profesionalnih organizacija i poslodavaca', 941),
(957, 'Delatnosti poslovnih udruženja i udruženja poslodavaca', 9411),
(958, 'Delatnosti strukovnih udruženja', 9412),
(959, 'Delatnost sindikata', 942),
(960, 'Delatnost sindikata', 9420),
(961, 'Delatnost ostalih organizacija na bazi učlanjenja', 949),
(962, 'Delatnost verskih organizacija', 9491),
(963, 'Delatnost političkih organizacija', 9492),
(964, 'Delatnost ostalih organizacija na bazi učlanjenja', 9499),
(965, 'Popravka računara i predmeta za ličnu upotrebu i upotrebu u domaćinstvu', 95),
(966, 'Popravka računara i komunikacione opreme', 951),
(967, 'Popravka računara i periferne opreme', 9511),
(968, 'Popravka komunikacione opreme', 9512),
(969, 'Popravka predmeta za ličnu upotrebu i upotrebu u domaćinstvu', 952),
(970, 'Popravka elektronskih aparata za široku upotrebu', 9521),
(971, 'Popravka aparata za domaćinstvo i kućne i baštenske opreme', 9522),
(972, 'Popravka obuće i predmeta od kože', 9523),
(973, 'Održavanje i popravka nameštaja', 9524),
(974, 'Popravka satova i nakita', 9525),
(975, 'Popravka ostalih ličnih predmeta i predmeta za domaćinstvo', 9529),
(976, 'Ostale lične uslužne delatnosti', 96),
(977, 'Ostale lične uslužne delatnosti', 960),
(978, 'Pranje i hemijsko čišćenje tekstilnih i krznenih proizvoda', 9601),
(979, 'Delatnost frizerskih i kozmetičkih salona', 9602),
(980, 'Pogrebne i srodne delatnosti', 9603),
(981, 'Delatnost nege i održavanja tela', 9604),
(982, 'Ostale nepomenute lične uslužne delatnosti', 9609),
(984, 'Delatnost domaćinstava koja zapošljavaju poslugu', 97),
(985, 'Delatnost domaćinstava koja zapošljavaju poslugu', 970),
(986, 'Delatnost domaćinstava koja zapošljavaju poslugu', 9700),
(987, 'Delatnost domaćinstava koja proizvode robu i usluge za sopstvene potrebe', 98),
(988, 'Delatnost domaćinstava koja proizvode robu za sopstvene potrebe', 981),
(989, 'Delatnost domaćinstava koja proizvode robu za sopstvene potrebe', 9810),
(990, 'Delatnost domaćinstava koja obezbeđuju usluge za sopstvene potrebe', 982),
(991, 'Delatnost domaćinstava koja obezbeđuju usluge za sopstvene potrebe', 9820),
(993, 'Delatnost eksteritorijalnih organizacija i tela', 99),
(994, 'Delatnost eksteritorijalnih organizacija i tela', 990),
(995, 'Delatnost eksteritorijalnih organizacija i tela', 9900);

-- --------------------------------------------------------

--
-- Table structure for table `Kompanija`
--

CREATE TABLE `Kompanija` (
  `PKKompanije` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `PIB` varchar(100) NOT NULL,
  `FKDelatnosti` int(11) NOT NULL COMMENT 'Interna sifra jer se ove iz APRa ponavljaju'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Kompanija`
--

INSERT INTO `Kompanija` (`PKKompanije`, `naziv`, `PIB`, `FKDelatnosti`) VALUES
(2, 'Krstić i sin', '225883', 628),
(3, 'Dugo konačište', '555333', 980),
(4, 'Muzička škola \"Nihad Kantić Šike\"', '123456', 899),
(5, 'Muzej Terija Dejvisa', '434343', 936);

-- --------------------------------------------------------

--
-- Table structure for table `Modul`
--

CREATE TABLE `Modul` (
  `PKModula` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `FKSmera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Modul`
--

INSERT INTO `Modul` (`PKModula`, `naziv`, `FKSmera`) VALUES
(3, 'Informacioni sistemi', 1),
(4, 'Informacione tehnologije', 1),
(5, 'Softversko inženjerstvo', 1),
(6, 'Elektronsko poslovanje', 1),
(7, 'Poslovna analitika', 1),
(8, 'Informaciono inženjerstvo', 1),
(9, 'Finansijski menadžment', 2),
(10, 'Lin organizacija poslovanja', 2),
(11, 'Marketing menadžment i komunikacije', 2),
(12, 'Menadžment kvaliteta i standardizacija', 2),
(13, 'Operacioni menadžment', 2),
(14, 'Projektni menadžment', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Praksa`
--

CREATE TABLE `Praksa` (
  `PKPrakse` int(11) NOT NULL,
  `FKKompanije` int(11) NOT NULL,
  `FKStudenta` int(11) NOT NULL,
  `datumPocetka` date NOT NULL,
  `datumZavrsetka` date NOT NULL,
  `komentar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Praksa`
--

INSERT INTO `Praksa` (`PKPrakse`, `FKKompanije`, `FKStudenta`, `datumPocetka`, `datumZavrsetka`, `komentar`) VALUES
(3, 2, 1, '2020-06-06', '2024-03-03', 'Vozi Misko!');

-- --------------------------------------------------------

--
-- Table structure for table `Smer`
--

CREATE TABLE `Smer` (
  `PKSmera` int(11) NOT NULL,
  `Naziv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Smer`
--

INSERT INTO `Smer` (`PKSmera`, `Naziv`) VALUES
(1, 'Informacioni sistem i tehnologije'),
(2, 'Menadžment i organizacija');

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `PKStudenta` int(11) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `brojIndeksa` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `stepenStudija` smallint(6) NOT NULL,
  `godinaStudija` smallint(6) NOT NULL,
  `FKModula` int(11) NOT NULL,
  `budzet` tinyint(1) NOT NULL,
  `FKSmera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`PKStudenta`, `ime`, `prezime`, `brojIndeksa`, `email`, `telefon`, `stepenStudija`, `godinaStudija`, `FKModula`, `budzet`, `FKSmera`) VALUES
(1, 'Luka', 'Jelisavac', '2022/0554', 'lj20220554@student.fon.bg.ac.rs', NULL, 1, 2, 5, 1, 1),
(2, 'Marko', 'Mijailović', '2022/0034', 'mm20220034@student.fon.bg.ac.rs', NULL, 1, 2, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Ugovor`
--

CREATE TABLE `Ugovor` (
  `PKUgovora` int(11) NOT NULL,
  `datumPotpisivanja` date NOT NULL,
  `datumIsteka` date NOT NULL,
  `sadrzaj` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UgovorSaKompanijom`
--

CREATE TABLE `UgovorSaKompanijom` (
  `PKZbogMareta` int(11) NOT NULL,
  `FKUgovora` int(11) NOT NULL,
  `FKKompanije` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `APR`
--
ALTER TABLE `APR`
  ADD PRIMARY KEY (`PKDelatnosti`);

--
-- Indexes for table `Kompanija`
--
ALTER TABLE `Kompanija`
  ADD PRIMARY KEY (`PKKompanije`),
  ADD KEY `Kompanija_APR_FK` (`FKDelatnosti`);

--
-- Indexes for table `Modul`
--
ALTER TABLE `Modul`
  ADD PRIMARY KEY (`PKModula`),
  ADD KEY `Modul_Smer_FK` (`FKSmera`);

--
-- Indexes for table `Praksa`
--
ALTER TABLE `Praksa`
  ADD PRIMARY KEY (`PKPrakse`),
  ADD KEY `Praksa_Student_FK` (`FKStudenta`),
  ADD KEY `Praksa_Kompanija_FK` (`FKKompanije`);

--
-- Indexes for table `Smer`
--
ALTER TABLE `Smer`
  ADD PRIMARY KEY (`PKSmera`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`PKStudenta`),
  ADD KEY `Student_Modul_FK` (`FKModula`),
  ADD KEY `Student_Smer_FK` (`FKSmera`);

--
-- Indexes for table `Ugovor`
--
ALTER TABLE `Ugovor`
  ADD PRIMARY KEY (`PKUgovora`);

--
-- Indexes for table `UgovorSaKompanijom`
--
ALTER TABLE `UgovorSaKompanijom`
  ADD PRIMARY KEY (`PKZbogMareta`),
  ADD KEY `UgovorSaKompanijom_Kompanija_FK` (`FKKompanije`),
  ADD KEY `UgovorSaKompanijom_Ugovor_FK` (`FKUgovora`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `APR`
--
ALTER TABLE `APR`
  MODIFY `PKDelatnosti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=996;

--
-- AUTO_INCREMENT for table `Kompanija`
--
ALTER TABLE `Kompanija`
  MODIFY `PKKompanije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Modul`
--
ALTER TABLE `Modul`
  MODIFY `PKModula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Praksa`
--
ALTER TABLE `Praksa`
  MODIFY `PKPrakse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Smer`
--
ALTER TABLE `Smer`
  MODIFY `PKSmera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Student`
--
ALTER TABLE `Student`
  MODIFY `PKStudenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Ugovor`
--
ALTER TABLE `Ugovor`
  MODIFY `PKUgovora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UgovorSaKompanijom`
--
ALTER TABLE `UgovorSaKompanijom`
  MODIFY `PKZbogMareta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Kompanija`
--
ALTER TABLE `Kompanija`
  ADD CONSTRAINT `Kompanija_APR_FK` FOREIGN KEY (`FKDelatnosti`) REFERENCES `APR` (`PKDelatnosti`);

--
-- Constraints for table `Modul`
--
ALTER TABLE `Modul`
  ADD CONSTRAINT `Modul_Smer_FK` FOREIGN KEY (`FKSmera`) REFERENCES `Smer` (`PKSmera`);

--
-- Constraints for table `Praksa`
--
ALTER TABLE `Praksa`
  ADD CONSTRAINT `Praksa_Kompanija_FK` FOREIGN KEY (`FKKompanije`) REFERENCES `Kompanija` (`PKKompanije`),
  ADD CONSTRAINT `Praksa_Student_FK` FOREIGN KEY (`FKStudenta`) REFERENCES `Student` (`PKStudenta`);

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `Student_Modul_FK` FOREIGN KEY (`FKModula`) REFERENCES `Modul` (`PKModula`),
  ADD CONSTRAINT `Student_Smer_FK` FOREIGN KEY (`FKSmera`) REFERENCES `Smer` (`PKSmera`);

--
-- Constraints for table `UgovorSaKompanijom`
--
ALTER TABLE `UgovorSaKompanijom`
  ADD CONSTRAINT `UgovorSaKompanijom_Kompanija_FK` FOREIGN KEY (`FKKompanije`) REFERENCES `Kompanija` (`PKKompanije`),
  ADD CONSTRAINT `UgovorSaKompanijom_Ugovor_FK` FOREIGN KEY (`FKUgovora`) REFERENCES `Ugovor` (`PKUgovora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
