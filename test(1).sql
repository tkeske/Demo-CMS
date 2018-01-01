-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 01. led 2018, 20:42
-- Verze serveru: 10.1.29-MariaDB
-- Verze PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `test`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `obrazky` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vypisuji data pro tabulku `article`
--

INSERT INTO `article` (`id`, `title`, `text`, `slug`, `date`, `obrazky`) VALUES
(1, 'červeňoučký', 'sd', 'červeňoučký', '', ''),
(2, 'červená', 'červená', 'červená', '26-Dec-2017', ''),
(3, 'Dolor sit amet', 'Dolor sit ametDolor sit amet', 'Dolor sit amet', '26-Dec-2017', ''),
(4, 'adsds', 'adsads', 'adsds', '26-Dec-2017', ''),
(8, 'dfsf', 'dfsdsf', 'dfsf', '26-Dec-2017', ''),
(9, 'dfsffdfdsgd', 'dfsdsfdf', 'dfsffdfdsgd', '26-Dec-2017', ''),
(10, 'lorem ipsum', 'Lorem Ipsum je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.', 'lorem ipsum', '26-Dec-2017', ''),
(11, 'lorem ipsumsas', 'Lorem Ipsum je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.', 'lorem ipsumsas', '27-Dec-2017', ''),
(12, 'lorem ipsumsa', 'Lorem Ipsum je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.', 'lorem ipsumsa', '27-Dec-2017', ''),
(13, 'Lipsum', ' Lorem ipsum (zkráceně lipsum) je označení pro standardní pseudolatinský text užívaný v grafickém designu a navrhování jako demonstrativní výplňový text při vytváření pracovních ukázek grafických návrhů (např. internetových stránek, rozvržení časopisů či všech druhů reklamních materiálů). Lipsum tak pracovně znázorňuje text v ukázkových maketách (tzv. mock-up) předtím, než bude do hotového návrhu vložen smysluplný obsah.\n\nPokud by se pro stejný účel použil smysluplný text, bylo by těžké hodnotit pouze vzhled, aniž by se pozorovatel nechal svést ke čtení obsahu. Pokud by byl naopak použit nesmyslný, ale pravidelný text (např. opakování „asdf asdf asdf…“), oko by při posuzování vzhledu bylo vyrušováno pravidelnou strukturou textu, která se od běžného textu liší. Text lorem ipsum na první pohled připomíná běžný text, slova jsou různě dlouhá, frekvence písmen je podobná běžné řeči, interpunkce vypadá přirozeně atd. ', 'Lipsum', '27-Dec-2017', ''),
(14, 'Testik', ' Lorem ipsum (zkráceně lipsum) je označení pro standardní pseudolatinský text užívaný v grafickém designu a navrhování jako demonstrativní výplňový text při vytváření pracovních ukázek grafických návrhů (např. internetových stránek, rozvržení časopisů či všech druhů reklamních materiálů). Lipsum tak pracovně znázorňuje text v ukázkových maketách (tzv. mock-up) předtím, než bude do hotového návrhu vložen smysluplný obsah.\n\nPokud by se pro stejný účel použil smysluplný text, bylo by těžké hodnotit pouze vzhled, aniž by se pozorovatel nechal svést ke čtení obsahu. Pokud by byl naopak použit nesmyslný, ale pravidelný text (např. opakování „asdf asdf asdf…“), oko by při posuzování vzhledu bylo vyrušováno pravidelnou strukturou textu, která se od běžného textu liší. Text lorem ipsum na první pohled připomíná běžný text, slova jsou různě dlouhá, frekvence písmen je podobná běžné řeči, interpunkce vypadá přirozeně atd. ', 'Testik', '27-Dec-2017', ''),
(16, 'Lipsums Lipsums Lipsums Lipsums', ' Lorem ipsum (zkráceně lipsum) je označení pro standardní pseudolatinský text užívaný v grafickém designu a navrhování jako demonstrativní výplňový text při vytváření pracovních ukázek grafických návrhů (např. internetových stránek, rozvržení časopisů či všech druhů reklamních materiálů). Lipsum tak pracovně znázorňuje text v ukázkových maketách (tzv. mock-up) předtím, než bude do hotového návrhu vložen smysluplný obsah.\n\nPokud by se pro stejný účel použil smysluplný text, bylo by těžké hodnotit pouze vzhled, aniž by se pozorovatel nechal svést ke čtení obsahu. Pokud by byl naopak použit nesmyslný, ale pravidelný text (např. opakování „asdf asdf asdf…“), oko by při posuzování vzhledu bylo vyrušováno pravidelnou strukturou textu, která se od běžného textu liší. Text lorem ipsum na první pohled připomíná běžný text, slova jsou různě dlouhá, frekvence písmen je podobná běžné řeči, interpunkce vypadá přirozeně atd. ', 'Lipsums Lipsums Lipsums Lipsums', '27-Dec-2017', ''),
(20, 'edit434', 'obsahedit43', 'edit434', '30-Dec-2017', ''),
(33, 'Adminer', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', 'Adminer', '30-Dec-2017', ''),
(34, 'Testovací článek', 'Existuje mnoho variant s pasážemi Lorem Ipsum, nicméně valná většina trpí neduhy v podobě snahy o vtipný text či použití naprosto náhodných slov, což nevypadá zrovna uvěřitelně. Pokud plánujete použít pasáž z Lorem Ipsum, měli byste mít jistotu, že v textu nebude nic, co by jej mohlo narušovat. Všechny generátory Lorem Ipsum na internetu mají tendenci opakovat kusy textu podle potřeby, díky čemuž je tento prvním pravým generátorem svého druhu. Používá totiž slovník více jak 200 latinských slov, která jsou kombinována do vět tak, aby text vypadal rozumně. Vzniklý text je potom prostý opakujících se pasáží, vloženého humoru nebo zkomolenin vzniklých z čísel a jiných znaků.', 'Testovací článek', '31-Dec-2017', ''),
(35, 'Testovací článek 2', 'Existuje mnoho variant s pasážemi Lorem Ipsum, nicméně valná většina trpí neduhy v podobě snahy o vtipný text či použití naprosto náhodných slov, což nevypadá zrovna uvěřitelně. Pokud plánujete použít pasáž z Lorem Ipsum, měli byste mít jistotu, že v textu nebude nic, co by jej mohlo narušovat. Všechny generátory Lorem Ipsum na internetu mají tendenci opakovat kusy textu podle potřeby, díky čemuž je tento prvním pravým generátorem svého druhu. Používá totiž slovník více jak 200 latinských slov, která jsou kombinována do vět tak, aby text vypadal rozumně. Vzniklý text je potom prostý opakujících se pasáží, vloženého humoru nebo zkomolenin vzniklých z čísel a jiných znaků.', 'Testovací článek 2', '31-Dec-2017', ''),
(36, 'Lipsumse', 'Existuje mnoho variant s pasážemi Lorem Ipsum, nicméně valná většina trpí neduhy v podobě snahy o vtipný text či použití naprosto náhodných slov, což nevypadá zrovna uvěřitelně. Pokud plánujete použít pasáž z Lorem Ipsum, měli byste mít jistotu, že v textu nebude nic, co by jej mohlo narušovat. Všechny generátory Lorem Ipsum na internetu mají tendenci opakovat kusy textu podle potřeby, díky čemuž je tento prvním pravým generátorem svého druhu. Používá totiž slovník více jak 200 latinských slov, která jsou kombinována do vět tak, aby text vypadal rozumně. Vzniklý text je potom prostý opakujících se pasáží, vloženého humoru nebo zkomolenin vzniklých z čísel a jiných znaků.', 'Lipsumse', '31-Dec-2017', ''),
(37, 'daadsdasas1', 'dfs', 'daadsdasas1', '31-Dec-2017', ''),
(38, 'Testovací lčánek', 'dasdsa', 'Testovací lčánek', '31-Dec-2017', '[\"C:\\\\xampp\\\\htdocs\\\\apk\\\\app\\\\presenters..\\/..\\/..\\/www\\/images\\/75a48c3df501e36.38935101.png\",\"C:\\\\xampp\\\\htdocs\\\\apk\\\\app\\\\presenters..\\/..\\/..\\/www\\/images\\/15a48c3df51b192.96084366.png\"]'),
(39, 'Testovaní', 'TestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaníTestovaní', 'Testovaní', '31-Dec-2017', '[\"\\/apk\\/www\\/\\/images\\/205a48cf58634768.56833052.png\",\"\\/apk\\/www\\/\\/images\\/115a48cf5866ed20.14335143.png\"]'),
(41, 'daadsdasasadsdsadsaaad', 'ssddssa', 'daadsdasasadsdsadsaaad', '31-Dec-2017', '[\"C:\\\\xampp\\\\htdocs\\\\apk\\\\app\\\\presenters..\\/..\\/..\\/www\\/images\\/135a48d2ad3a1788.26324063.png\"]'),
(43, 'dsadasdsaa', 'dasdsasd', 'dsadasdsaa', '31-Dec-2017', '[\"C:\\\\xampp\\\\htdocs\\\\apk\\\\app\\\\presenters..\\/..\\/..\\/www\\/images\\/205a48cfd401d0e5.71489703.png\"]'),
(46, 'dalsi  dalsi', 'dalsi  dalsi', 'dalsi  dalsi', '31-Dec-2017', '[\"15a48d7410b7c82.19821229.png\",\"65a48d7410d26c5.23374222.png\",\"185a48d93354c689.20557469.png\",\"05a48d94f71b9f2.66679026.png\",\"65a48da565e7440.28635979.png\",\"55a48daa1bd8fe6.56958708.png\"]'),
(47, 'článek bez obrázků', 'článek bez obrázků', 'článek bez obrázků', '31-Dec-2017', ''),
(48, 'čláenk bez obrazu', 'čláenk bez obrazu', 'čláenk bez obrazu', '31-Dec-2017', '[\"75a48e20ca8bbb4.52598702.png\",\"195a48e20caac0f6.71934660.png\"]'),
(49, 'článek s obrázky', 'článek s obrázky', 'článek s obrázky', '31-Dec-2017', '[\"105a48e072133117.63681599.png\",\"45a48e07215a622.31321851.png\"]'),
(50, 'článek bez obrazů 2', 'článek bez obrazů 2', 'článek bez obrazů 2', '31-Dec-2017', '[\"145a48e324925918.52088647.png\",\"115a48e324940ab9.10235629.png\",\"135a48e34f26b2e7.88949181.png\",\"65a48e34f284dd1.33299756.png\"]'),
(51, 'článek bez obrazů 3', 'článek bez obrazů 3', 'článek bez obrazů 3', '31-Dec-2017', '[]'),
(52, 'Lipsum again', 'Je obecně známou věcí, že člověk bývá při zkoumání grafického návrhu rozptylován okolním textem, pokud mu dává nějaký smysl. Úkolem Lorem Ipsum je pak nahradit klasický smysluplný text vhodnou bezvýznamovou alternativou s relativně běžným rozložením slov. To jej dělá narozdíl od opakujícího se \"Tady bude text. Tady bude text...\" mnohem více čitelnějším. V dnešní době je Lorem Ipsum používáno spoustou DTP balíků a webových editorů coby výchozí model výplňového textu. Ostatně si zkuste zadat frázi \"lorem ipsum\" do vyhledavače a sami uvidíte. Během let se objevily různé varianty a odvozeniny od klasického Lorem Ipsum, někdy náhodou, někdy účelně (např. pro pobavení čtenáře).', 'Lipsum again', '31-Dec-2017', '[\"115a48f6dd470e97.92657064.png\"]'),
(53, 'And again...', 'Je obecně známou věcí, že člověk bývá při zkoumání grafického návrhu rozptylován okolním textem, pokud mu dává nějaký smysl. Úkolem Lorem Ipsum je pak nahradit klasický smysluplný text vhodnou bezvýznamovou alternativou s relativně běžným rozložením slov. To jej dělá narozdíl od opakujícího se \"Tady bude text. Tady bude text...\" mnohem více čitelnějším. V dnešní době je Lorem Ipsum používáno spoustou DTP balíků a webových editorů coby výchozí model výplňového textu. Ostatně si zkuste zadat frázi \"lorem ipsum\" do vyhledavače a sami uvidíte. Během let se objevily různé varianty a odvozeniny od klasického Lorem Ipsum, někdy náhodou, někdy účelně (např. pro pobavení čtenáře).', 'And again...', '01-Jan-2018', '[\"95a4a5b04852db5.25478210.png\"]'),
(54, 'Again lipsum', 'Je obecně známou věcí, že člověk bývá při zkoumání grafického návrhu rozptylován okolním textem, pokud mu dává nějaký smysl. Úkolem Lorem Ipsum je pak nahradit klasický smysluplný text vhodnou bezvýznamovou alternativou s relativně běžným rozložením slov. To jej dělá narozdíl od opakujícího se \"Tady bude text. Tady bude text...\" mnohem více čitelnějším. V dnešní době je Lorem Ipsum používáno spoustou DTP balíků a webových editorů coby výchozí model výplňového textu. Ostatně si zkuste zadat frázi \"lorem ipsum\" do vyhledavače a sami uvidíte. Během let se objevily různé varianty a odvozeniny od klasického Lorem Ipsum, někdy náhodou, někdy účelně (např. pro pobavení čtenáře).', 'Again lipsum', '31-Dec-2017', '[\"95a48f70e766408.64261030.png\",\"15a48f70e78bfb2.57662522.png\"]');

-- --------------------------------------------------------

--
-- Struktura tabulky `article_category`
--

CREATE TABLE `article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vypisuji data pro tabulku `article_category`
--

INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 4),
(12, 5),
(13, 6),
(16, 2),
(16, 4),
(16, 6),
(16, 7),
(20, 6),
(33, 1),
(33, 4),
(34, 5),
(35, 1),
(35, 2),
(35, 4),
(36, 9),
(36, 22),
(37, 2),
(38, 2),
(39, 2),
(39, 4),
(41, 2),
(43, 1),
(46, 1),
(47, 1),
(48, 2),
(49, 2),
(50, 2),
(51, 4),
(52, 2),
(53, 4),
(54, 36),
(54, 37);

-- --------------------------------------------------------

--
-- Struktura tabulky `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vypisuji data pro tabulku `category`
--

INSERT INTO `category` (`id`, `jmeno`) VALUES
(1, 'Lorem Ipsum'),
(2, 'admin'),
(4, 'Lorem'),
(5, 'asasassa'),
(6, 'Testik'),
(7, 'Dalsi'),
(9, 'Kategorie18'),
(22, 'Kategorie9'),
(24, 'Testovací'),
(35, 'katka'),
(36, 'MVC'),
(37, 'MVVM'),
(38, 'Kategorie42');

-- --------------------------------------------------------

--
-- Struktura tabulky `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `nick` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `obsah` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vypisuji data pro tabulku `coment`
--

INSERT INTO `coment` (`id`, `ref_id`, `nick`, `obsah`, `status`, `date`) VALUES
(1, 1, 'sdffds', 'dfsdfsfd', '', ''),
(2, 9, 'fdsdsf', 'dfsdfs', '', ''),
(3, 9, 'axas', 'as', '', ''),
(4, 9, 'dsdfs', 'dfsfddfsdf', 'approved', '26-Dec-2017'),
(5, 9, 'test', 'test', 'approved', '26-Dec-2017'),
(6, 9, 'test', 'test', 'approved', '26-Dec-2017'),
(7, 9, 'test', 'test', 'approved', '26-Dec-2017'),
(8, 9, 'test', 'test', 'approved', '26-Dec-2017'),
(9, 9, 'test', 'test', 'approved', '26-Dec-2017'),
(10, 9, 'test', 'test', 'approved', '26-Dec-2017'),
(11, 12, 'laudon', 'laudon', 'approved', '26-Dec-2017'),
(39, 14, 'admin', 'test', 'approved', '30-Dec-2017'),
(43, 16, 'admin', 'test', 'approved', '30-Dec-2017'),
(44, 33, 'x\\x\\', 'yx\\', 'approved', '30-Dec-2017'),
(45, 33, 'maybe', 'maybemaybemaybemaybe', 'approved', '30-Dec-2017'),
(46, 33, 'admin', '<b>info</b>', 'approved', '30-Dec-2017'),
(51, 20, 'Testing', 'kompozicekompozice', 'approved', '30-Dec-2017'),
(52, 13, 'admin', 'admin', 'approved', '30-Dec-2017'),
(53, 13, 'admin', 'admin', 'blocked', '30-Dec-2017'),
(54, 13, 'admin', 'admin', 'approved', '30-Dec-2017'),
(55, 12, 'admin', 'admin', 'blocked', '30-Dec-2017'),
(56, 11, 'admin', 'admin', 'blocked', '30-Dec-2017'),
(58, 16, 'dfddf', 'dfdf', 'blocked', '30-Dec-2017'),
(59, 33, 'dfdf', 'dfdf', 'blocked', '30-Dec-2017'),
(60, 33, 'n@n.cz', 'test', 'blocked', '31-Dec-2017'),
(61, 54, 'admin', 'Testík', 'blocked', '01-Jan-2018');

-- --------------------------------------------------------

--
-- Struktura tabulky `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `ip_adresa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datum` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vypisuji data pro tabulku `counter`
--

INSERT INTO `counter` (`id`, `ip_adresa`, `datum`) VALUES
(19, '127.0.0.1', '1514552876'),
(20, '127.0.0.1', '1514552897'),
(21, '127.0.0.2', '1500000000'),
(22, '127.0.0.4', '1514553503'),
(23, '127.0.0.5', '1500000000'),
(24, '127.0.0.1', '1514553964'),
(25, '127.0.0.1', '1514554695'),
(26, '127.0.0.1', '1514556939'),
(27, '127.0.0.1', '1514556982'),
(28, '127.0.0.1', '1514556987'),
(29, '127.0.0.1', '1514557008'),
(30, '127.0.0.1', '1514557011'),
(31, '127.0.0.1', '1514561980'),
(32, '127.0.0.1', '1514562042'),
(33, '127.0.0.1', '1514562076'),
(34, '127.0.0.1', '1514562212'),
(35, '127.0.0.1', '1514562227'),
(36, '127.0.0.1', '1514562264'),
(37, '127.0.0.1', '1514562279'),
(38, '127.0.0.1', '1514562288'),
(39, '127.0.0.1', '1514567549'),
(40, '127.0.0.1', '1514567580'),
(41, '::1', '1514625600'),
(42, '::1', '1514625646'),
(43, '::1', '1514625697'),
(44, '::1', '1514625852'),
(45, '::1', '1514626545'),
(46, '::1', '1514627073'),
(47, '::1', '1514627349'),
(48, '::1', '1514627827'),
(49, '::1', '1514633564'),
(50, '::1', '1514634080'),
(51, '::1', '1514634145'),
(52, '::1', '1514634158'),
(53, '::1', '1514634162'),
(54, '::1', '1514634164'),
(55, '::1', '1514634172'),
(56, '::1', '1514634176'),
(57, '::1', '1514634177'),
(58, '::1', '1514634185'),
(59, '::1', '1514634186'),
(60, '::1', '1514634189'),
(61, '::1', '1514634193'),
(62, '::1', '1514634205'),
(63, '::1', '1514634207'),
(64, '::1', '1514634208'),
(65, '::1', '1514634209'),
(66, '::1', '1514634210'),
(67, '::1', '1514634211'),
(68, '::1', '1514634230'),
(69, '::1', '1514634268'),
(70, '::1', '1514634319'),
(71, '::1', '1514634347'),
(72, '::1', '1514634365'),
(73, '::1', '1514634372'),
(74, '::1', '1514634373'),
(75, '::1', '1514634380'),
(76, '::1', '1514634384'),
(77, '::1', '1514634385'),
(78, '::1', '1514634393'),
(79, '::1', '1514634394'),
(80, '::1', '1514634397'),
(81, '::1', '1514634400'),
(82, '::1', '1514634404'),
(83, '::1', '1514634418'),
(84, '::1', '1514634420'),
(85, '::1', '1514634421'),
(86, '::1', '1514634422'),
(87, '::1', '1514634423'),
(88, '::1', '1514634424'),
(89, '::1', '1514634432'),
(90, '::1', '1514634931'),
(91, '::1', '1514634959'),
(92, '::1', '1514635260'),
(93, '::1', '1514635295'),
(94, '::1', '1514635355'),
(95, '::1', '1514635477'),
(96, '::1', '1514635826'),
(97, '::1', '1514636095'),
(98, '::1', '1514636218'),
(99, '::1', '1514636270'),
(100, '::1', '1514636322'),
(101, '::1', '1514638931'),
(102, '::1', '1514639013'),
(103, '::1', '1514639049'),
(104, '::1', '1514639498'),
(105, '::1', '1514639596'),
(106, '::1', '1514642190'),
(107, '::1', '1514642250'),
(108, '::1', '1514642535'),
(109, '::1', '1514642808'),
(110, '::1', '1514642896'),
(111, '::1', '1514642905'),
(112, '::1', '1514643009'),
(113, '::1', '1514643042'),
(114, '::1', '1514643047'),
(115, '::1', '1514643094'),
(116, '::1', '1514643102'),
(117, '::1', '1514644110'),
(118, '::1', '1514644474'),
(119, '::1', '1514644545'),
(120, '::1', '1514644775'),
(121, '::1', '1514646374'),
(122, '::1', '1514646416'),
(123, '::1', '1514646421'),
(124, '::1', '1514646433'),
(125, '::1', '1514646571'),
(126, '::1', '1514646773'),
(127, '::1', '1514646852'),
(128, '::1', '1514646958'),
(129, '::1', '1514646976'),
(130, '::1', '1514646991'),
(131, '::1', '1514647052'),
(132, '::1', '1514647075'),
(133, '::1', '1514647082'),
(134, '::1', '1514647096'),
(135, '::1', '1514647439'),
(136, '::1', '1514647473'),
(137, '::1', '1514647544'),
(138, '::1', '1514647569'),
(139, '::1', '1514647597'),
(140, '::1', '1514647621'),
(141, '::1', '1514647645'),
(142, '::1', '1514647677'),
(143, '::1', '1514647687'),
(144, '::1', '1514647765'),
(145, '::1', '1514647801'),
(146, '::1', '1514647869'),
(147, '::1', '1514647958'),
(148, '::1', '1514647995'),
(149, '::1', '1514648002'),
(150, '::1', '1514648021'),
(151, '::1', '1514648044'),
(152, '::1', '1514648067'),
(153, '::1', '1514648092'),
(154, '::1', '1514648135'),
(155, '::1', '1514648170'),
(156, '::1', '1514648190'),
(157, '::1', '1514648222'),
(158, '::1', '1514648226'),
(159, '::1', '1514648264'),
(160, '::1', '1514648268'),
(161, '::1', '1514648274'),
(162, '::1', '1514648293'),
(163, '::1', '1514648488'),
(164, '::1', '1514648645'),
(165, '::1', '1514650208'),
(166, '::1', '1514652043'),
(167, '::1', '1514652050'),
(168, '::1', '1514652078'),
(169, '::1', '1514652095'),
(170, '::1', '1514652122'),
(171, '::1', '1514652188'),
(172, '::1', '1514652241'),
(173, '::1', '1514653131'),
(174, '::1', '1514653163'),
(175, '::1', '1514653399'),
(176, '::1', '1514653571'),
(177, '::1', '1514654240'),
(178, '::1', '1514654251'),
(179, '::1', '1514654263'),
(180, '::1', '1514654278'),
(181, '::1', '1514654285'),
(182, '::1', '1514654365'),
(183, '::1', '1514654384'),
(184, '::1', '1514654392'),
(185, '::1', '1514654809'),
(186, '::1', '1514654874'),
(187, '::1', '1514655030'),
(188, '::1', '1514655054'),
(189, '::1', '1514655064'),
(190, '::1', '1514655179'),
(191, '::1', '1514655200'),
(192, '::1', '1514655230'),
(193, '::1', '1514655241'),
(194, '::1', '1514655251'),
(195, '::1', '1514655257'),
(196, '::1', '1514656530'),
(197, '::1', '1514656603'),
(198, '::1', '1514711342'),
(199, '::1', '1514711644'),
(200, '::1', '1514711657'),
(201, '::1', '1514713085'),
(202, '::1', '1514713175'),
(203, '::1', '1514713272'),
(204, '::1', '1514713288'),
(205, '::1', '1514713303'),
(206, '::1', '1514713373'),
(207, '::1', '1514713555'),
(208, '::1', '1514713566'),
(209, '::1', '1514713606'),
(210, '::1', '1514713614'),
(211, '::1', '1514713615'),
(212, '::1', '1514713717'),
(213, '::1', '1514713730'),
(214, '::1', '1514713732'),
(215, '::1', '1514713789'),
(216, '::1', '1514713806'),
(217, '::1', '1514713807'),
(218, '::1', '1514713821'),
(219, '::1', '1514713833'),
(220, '::1', '1514713910'),
(221, '::1', '1514714083'),
(222, '::1', '1514714099'),
(223, '::1', '1514714100'),
(224, '::1', '1514714126'),
(225, '::1', '1514714141'),
(226, '::1', '1514714164'),
(227, '::1', '1514714186'),
(228, '::1', '1514714201'),
(229, '::1', '1514714214'),
(230, '::1', '1514714230'),
(231, '::1', '1514714457'),
(232, '::1', '1514714462'),
(233, '::1', '1514714462'),
(234, '::1', '1514714479'),
(235, '::1', '1514714498'),
(236, '::1', '1514714499'),
(237, '::1', '1514714515'),
(238, '::1', '1514714523'),
(239, '::1', '1514714529'),
(240, '::1', '1514714536'),
(241, '::1', '1514714888'),
(242, '::1', '1514714889'),
(243, '::1', '1514714905'),
(244, '::1', '1514714918'),
(245, '::1', '1514714921'),
(246, '::1', '1514714922'),
(247, '::1', '1514715171'),
(248, '::1', '1514715206'),
(249, '::1', '1514715207'),
(250, '::1', '1514715302'),
(251, '::1', '1514715325'),
(252, '::1', '1514715328'),
(253, '::1', '1514715329'),
(254, '::1', '1514715453'),
(255, '::1', '1514715484'),
(256, '::1', '1514720761'),
(257, '::1', '1514720837'),
(258, '::1', '1514720996'),
(259, '::1', '1514721845'),
(260, '::1', '1514721870'),
(261, '::1', '1514724160'),
(262, '::1', '1514724278'),
(263, '::1', '1514724367'),
(264, '::1', '1514724410'),
(265, '::1', '1514724460'),
(266, '::1', '1514724495'),
(267, '::1', '1514724514'),
(268, '::1', '1514724542'),
(269, '::1', '1514724574'),
(270, '::1', '1514724591'),
(271, '::1', '1514724596'),
(272, '::1', '1514724641'),
(273, '::1', '1514724647'),
(274, '::1', '1514724653'),
(275, '::1', '1514724658'),
(276, '::1', '1514724722'),
(277, '::1', '1514724735'),
(278, '::1', '1514724747'),
(279, '::1', '1514724788'),
(280, '::1', '1514724800'),
(281, '::1', '1514724822'),
(282, '::1', '1514724831'),
(283, '::1', '1514725494'),
(284, '::1', '1514725916'),
(285, '::1', '1514725951'),
(286, '::1', '1514725980'),
(287, '::1', '1514726054'),
(288, '::1', '1514726089'),
(289, '::1', '1514726118'),
(290, '::1', '1514726250'),
(291, '::1', '1514726256'),
(292, '::1', '1514726283'),
(293, '::1', '1514726321'),
(294, '::1', '1514726347'),
(295, '::1', '1514727017'),
(296, '::1', '1514727030'),
(297, '::1', '1514727075'),
(298, '::1', '1514727082'),
(299, '::1', '1514730752'),
(300, '::1', '1514730875'),
(301, '::1', '1514731163'),
(302, '::1', '1514731282'),
(303, '::1', '1514732237'),
(304, '::1', '1514732380'),
(305, '::1', '1514732387'),
(306, '::1', '1514732397'),
(307, '::1', '1514732403'),
(308, '::1', '1514732410'),
(309, '::1', '1514732417'),
(310, '::1', '1514732427'),
(311, '::1', '1514732433'),
(312, '::1', '1514732441'),
(313, '::1', '1514732487'),
(314, '::1', '1514732506'),
(315, '::1', '1514796997'),
(316, '::1', '1514799379'),
(317, '::1', '1514799644'),
(318, '::1', '1514799774'),
(319, '::1', '1514799783'),
(320, '::1', '1514799922'),
(321, '::1', '1514800112'),
(322, '::1', '1514800454'),
(323, '::1', '1514808531'),
(324, '::1', '1514809966'),
(325, '::1', '1514809967'),
(326, '::1', '1514809985'),
(327, '::1', '1514810085'),
(328, '::1', '1514810405'),
(329, '::1', '1514810421'),
(330, '::1', '1514810555'),
(331, '::1', '1514810574'),
(332, '::1', '1514810583'),
(333, '::1', '1514810596'),
(334, '::1', '1514821818'),
(335, '::1', '1514822002'),
(336, '::1', '1514822003'),
(337, '::1', '1514822407'),
(338, '::1', '1514830949'),
(339, '::1', '1514831279'),
(340, '::1', '1514832731'),
(341, '::1', '1514832748'),
(342, '::1', '1514832989'),
(343, '::1', '1514833607'),
(344, '::1', '1514833921'),
(345, '::1', '1514834695'),
(346, '::1', '1514834711'),
(347, '::1', '1514834725'),
(348, '::1', '1514834751'),
(349, '::1', '1514834752');

-- --------------------------------------------------------

--
-- Struktura tabulky `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vypisuji data pro tabulku `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$vRG1l9iCnVPyyOHbP7EPyON1SNjR/o8derMthANRWqXH/lDMzVmgC', 'admin'),
(8, 'c@c.cz', '$2y$10$Ey7s/yir3UtQTi.bFnUKtOKnmquSvO7k/Xqc3fm4kI8a7EYQiMCrC', 'user'),
(13, 'test@test.cz', '$2y$10$t8ojM5rQ7IsP4JBmNE5jj.t2DKpTeiGcphLA7D15ynq2/DndeSLh.', 'user'),
(14, 'test@test.czc', '$2y$10$O9WCxKczRhiB0jji/Yug/eC5UVOAzznYOfpv/jkLK9owtiaYk66WK', 'user'),
(22, 'tester@tester.cz', '$2y$10$zao2DUc9MafwusJLRB52eeB78O4beMjdpZy5jmYpS4Co6IJ1AveeW', 'user'),
(23, 'new@new.com', '$2y$10$8TSCa8nOtnxP6cmpIFBFO.0yxaexAAbjU.Uk1.yXHRW.ZdNQUxxjm', 'user'),
(24, 'new@new.comc', '$2y$10$Rcwp0C5T/oo0VNdlDZzcIu5ch1.zWeyVDt5z77km4dn9JnbMDmAw.', 'user'),
(26, 'test@pest.cz', '$2y$10$ffIR4A3rY7B0NKhGcyUx5eSU/luMOQD8DKNF2sKlGmkisIUMrNlxC', 'admin'),
(27, 'uzivatel@domena.com', '$2y$10$Jl1B0R/rzFpoo0VfkObI1uxr0I5w5Np2PowIqW7B1qcDvM8XjYPiG', 'user'),
(28, 'n@n.cz', '$2y$10$dW9wdqITFWRdiRjxdBoiFemoLM2T6iODeZEXkdzbux37nwEEUG.Na', 'user'),
(29, 'admin1@admin.net', '$2y$10$JltjhQaqzPJLc7QTfc60eOaGqODHWwGQ97L88MZgvF1QrhiyOF06u', 'admin'),
(30, 'n@n.czc', '$2y$10$dIuXnULc3pAPtvYBFhw.euC2jUBEIGQ1d2SdQWqKoWjrWRtKfPUXS', 'admin'),
(31, 'register@me.cz', '$2y$10$C6zmhGcwa9sUCKNg8cEJa.lA/yF1ZbKcw.LQFNkJvMtSwiNX4StvC', 'user');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_23A0E66989D9B62` (`slug`);

--
-- Klíče pro tabulku `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `IDX_53A4EDAA7294869C` (`article_id`),
  ADD KEY `IDX_53A4EDAA12469DE2` (`category_id`);

--
-- Klíče pro tabulku `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F86E9D221B741A9` (`ref_id`);

--
-- Klíče pro tabulku `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pro tabulku `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pro tabulku `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pro tabulku `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT pro tabulku `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `FK_53A4EDAA12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_53A4EDAA7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `coment`
--
ALTER TABLE `coment`
  ADD CONSTRAINT `FK_F86E9D221B741A9` FOREIGN KEY (`ref_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
