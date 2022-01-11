-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 07:01 PM
-- Server version: 5.7.32-log
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpleblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `added_on`) VALUES
(1, 'Stephan', 'Greenfelder', 'rstreich@example.net', '2000-04-18 17:53:39'),
(2, 'Lexie', 'Dickens', 'josephine.pfeffer@example.org', '2005-07-14 06:46:35'),
(3, 'Carleton', 'Batz', 'christiansen.lance@example.com', '2016-10-23 08:57:28'),
(4, 'Lou', 'Mayert', 'harris.rodger@example.com', '2003-03-08 16:53:33'),
(5, 'Lonie', 'Schroeder', 'damian.rempel@example.com', '1972-10-25 03:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teaser` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `teaser`, `content`, `post_date`) VALUES
(1, 1, 'Qui qui nisi voluptas commodi id.', 'Est quae molestias aut illum molestiae soluta.', 'Tempore dolorum qui vero eveniet. Illum iste dolores incidunt. Facilis reiciendis libero temporibus.', '1998-05-05 19:48:37'),
(2, 2, 'Vitae ea hic ut eos earum.', 'Aut voluptas et magni quia sint.', 'Sint ut aut alias nobis ut eum aliquid. Nostrum possimus quod facilis ut optio voluptas necessitatibus. Consectetur et quod consequuntur maxime architecto. Aut sequi provident excepturi magnam voluptas ut ea.', '1985-07-23 00:15:51'),
(3, 3, 'Vero excepturi iusto autem maiores.', 'Facere et ut consequatur dolore eum omnis a laboriosam.', 'Accusamus quia vel et commodi iste a nesciunt nam. Consequuntur vel reprehenderit eum nobis. Qui similique maiores nesciunt iusto in.', '1990-03-17 14:39:34'),
(4, 4, 'Illum eligendi accusantium pariatur animi beatae.', 'Fuga molestiae sint consectetur illo voluptatem.', 'Quas officia eaque ut aut sit. Id recusandae eum quae dignissimos ea pariatur corporis.', '1991-08-21 23:07:05'),
(5, 5, 'In eaque in aut.', 'Excepturi est saepe praesentium assumenda.', 'Veniam ullam consequuntur omnis dolor aut doloribus. Et voluptatem molestias et nihil sequi repellat corporis. Blanditiis sunt libero minima.', '2008-10-29 13:11:32'),
(6, 1, 'Eius voluptatem tempora reiciendis odio eum ab deserunt.', 'Cumque veniam odio quia tempora illum.', 'Temporibus recusandae quia fugit sunt rerum eum rerum. Eum consectetur harum et itaque. Autem illo et exercitationem neque dolor ducimus consequatur. Corrupti corrupti ratione quia voluptatem enim. Sunt nobis consequatur dolores necessitatibus ipsum beatae vero.', '2021-11-19 10:14:28'),
(7, 2, 'Et dolores vel unde dignissimos quos voluptatum adipisci eaque.', 'Nemo qui fugiat voluptatibus corrupti laborum eveniet.', 'Eos tempora natus provident perferendis et doloremque. Iusto voluptatibus nihil dolores blanditiis tenetur alias. Nobis sint quisquam aut sit. Hic qui debitis vero quia nulla voluptates.', '1983-03-01 20:18:58'),
(8, 3, 'Eligendi nemo possimus modi ab autem nobis.', 'Deserunt voluptate est veritatis mollitia et qui.', 'Est nihil temporibus cumque qui esse sint nostrum. Et ex qui atque dolorem. Quos et sequi velit maxime modi.', '2014-01-19 04:42:45'),
(9, 4, 'Sit non exercitationem hic est ut.', 'Magnam non sunt modi et.', 'Pariatur eaque inventore aliquam ducimus. Possimus quo soluta velit perferendis fugit. Eius et officiis fuga dicta. Eum ad et dolore perspiciatis qui rem.', '1991-12-24 10:32:44'),
(10, 5, 'Eligendi aut dolorem rerum ipsam deserunt.', 'Ducimus veniam animi at.', 'Voluptas esse esse sapiente numquam magni autem autem. Et ut quisquam dolorem mollitia earum rem.', '1972-10-17 15:14:46'),
(11, 1, 'Nisi ipsa aut sunt nihil dolorem eos.', 'Deleniti voluptatem nihil earum ut.', 'Iusto ut qui et est et doloremque quos. Et molestias dolores dolores praesentium deleniti. Minima sit incidunt vel id quis incidunt sint molestiae. Cum nesciunt ea nostrum ad voluptatem fuga. Ullam aut consequatur libero illo.', '1970-01-01 20:58:56'),
(12, 2, 'Quam animi nobis similique id.', 'Adipisci quisquam quis necessitatibus reprehenderit sunt est', 'Eveniet quidem et quasi nihil provident voluptas. Nemo autem reiciendis consequatur. Ut qui dolorem quia quia. Cumque quis dolor eveniet ullam autem sit.', '1999-12-02 23:32:48'),
(13, 3, 'Quam rerum laudantium ex eum deserunt perferendis veritatis quisquam.', 'Sit odit id quia sit minus non vitae.', 'Non et adipisci dolor architecto iusto. Quae laboriosam aut provident quia nostrum corporis. Hic repudiandae autem non. Excepturi amet sint voluptas temporibus et.', '1997-01-16 20:55:46'),
(14, 4, 'Et aliquid officia repellat laudantium assumenda repudiandae.', 'Harum necessitatibus sapiente ea reprehenderit.', 'Corporis aspernatur eligendi ea facere distinctio. Nam et ut iure non repellendus commodi. Natus ad sed ipsam perspiciatis qui.', '2001-12-28 09:19:24'),
(15, 5, 'Sed ad aut doloremque eos eum.', 'Consequatur assumenda eligendi eligendi velit.', 'Qui aut qui et qui magnam nam corrupti ipsam. Vero adipisci aut rem quaerat consequatur quis. Dicta debitis est nemo accusantium magni.', '2000-09-26 08:52:30'),
(16, 1, 'Praesentium cum voluptatem eos praesentium necessitatibus ab eum vero.', 'Voluptas velit sunt consequatur tempore at.', 'Nihil excepturi sed sunt velit eveniet est. Voluptatem et quia laborum aut numquam id similique nam. Alias dolores beatae dolores quasi aut dolore voluptate. Molestias labore tempora dolore ratione nesciunt.', '1993-05-28 22:57:38'),
(17, 2, 'Omnis ducimus voluptatem cupiditate et accusamus et possimus porro.', 'Quaerat iure non quis ipsa aliquam officiis.', 'Quod consequuntur in unde nesciunt eveniet esse sequi. Possimus rerum nulla quam possimus et modi est sed. Aperiam harum nostrum in ducimus illo. Quidem voluptate ea earum eos et vitae et.', '1973-05-14 07:45:47'),
(18, 3, 'Veritatis quidem ullam debitis culpa autem.', 'Placeat sed dolor ut sit possimus ad ut eius.', 'Mollitia ut nobis rerum eum facilis. Aspernatur qui velit voluptates in distinctio. Nihil est beatae officia ipsam omnis at blanditiis. Et ipsam recusandae labore quia libero et.', '1990-03-25 12:07:15'),
(19, 4, 'Mollitia tempora vitae voluptatem.', 'Eos sit itaque perspiciatis ea accusantium.', 'Provident omnis quo molestiae. Cumque odit quisquam ex quas natus laboriosam. Est voluptatem id facilis dolor quia. Cum omnis adipisci mollitia.', '1978-02-04 07:20:24'),
(20, 5, 'Consequatur sapiente recusandae non rerum dolore.', 'Molestiae sed pariatur eveniet ipsam.', 'Similique est nisi autem quo dolorum ea in. Et perspiciatis placeat eos quod dolorem soluta exercitationem. Dolor amet qui a asperiores.', '2007-03-10 04:33:12'),
(21, 1, 'Aut aspernatur ullam quas aperiam.', 'Sit dolor culpa necessitatibus exercitationem dolor quaerat.', 'Officia repudiandae soluta vitae quaerat. Iste et tenetur dignissimos sint eum quidem. Dignissimos numquam itaque ipsa rerum repudiandae error.', '1984-06-14 14:53:04'),
(22, 2, 'Explicabo dolore a dolorem aut quia.', 'Iure aliquam magnam voluptas odio id.', 'Quam corrupti ut ut vero accusantium et. Et quo a occaecati fuga ullam. Architecto ad quo perferendis quaerat excepturi cumque numquam quia. Ab consequatur soluta consequatur quos voluptas iure vel.', '1977-11-24 05:22:15'),
(23, 3, 'Rerum qui fugiat sit vel.', 'Eius a quibusdam et maxime ipsum aut.', 'Error architecto sunt et minima. Ducimus velit eos soluta nisi voluptate. A dolorum fuga omnis non.', '1976-06-28 18:54:00'),
(24, 4, 'Doloribus repellendus enim rem vel suscipit explicabo hic.', 'Cumque repellat ducimus officiis voluptas magnam.', 'Dolores voluptas sed est neque nobis minus. Tenetur nostrum dolorem ipsa et unde quasi magnam. Quae est quia consequatur corporis. Est quibusdam perferendis est aliquam officia expedita suscipit maxime. Qui dolores debitis esse voluptas.', '2010-02-03 07:08:45'),
(25, 5, 'Rerum voluptas corporis et est enim laborum sunt.', 'Eveniet omnis eos sint sit tempora occaecati tenetur.', 'Maiores esse aut itaque ipsam et autem. Voluptas omnis tempora et minus. Facere animi et enim sapiente sit odio.', '2008-01-09 13:23:20'),
(26, 1, 'Neque itaque harum sit sequi explicabo.', 'Saepe quisquam nobis architecto ipsam quis in.', 'Ipsum explicabo tenetur aut praesentium debitis et voluptatem. Quia nostrum dolorem voluptatem perspiciatis. Quas suscipit eius est consequatur. Voluptate atque dolores quia aliquam.', '2003-03-15 08:31:18'),
(27, 2, 'Quos nisi porro hic quae.', 'Ex porro eligendi laboriosam molestias excepturi.', 'Amet facilis impedit adipisci enim. Et impedit ipsam nihil qui et ut sed. Minus autem praesentium voluptas.', '1972-08-19 10:05:00'),
(28, 3, 'Accusamus dignissimos sit optio.', 'Omnis et rerum doloribus officiis dolorum.', 'Quis quod quae ut. Necessitatibus sed necessitatibus molestiae fuga tempora et. Rerum harum ea deleniti natus cum et nisi.', '1978-05-11 12:51:42'),
(29, 4, 'Quasi qui dolorem et explicabo qui et.', 'Quia pariatur et quisquam tempore sint vero beatae officiis.', 'Qui quod molestias similique est. Voluptatem voluptas non adipisci non velit aut. Delectus esse dolor ex est dolores consequatur ut. Quo in et qui totam nobis sapiente explicabo qui.', '2002-06-07 01:31:17'),
(30, 5, 'Saepe debitis deserunt voluptate neque commodi modi.', 'Odit est molestias et id facilis quidem.', 'Et tempora eum similique dolores assumenda quis saepe. Doloremque voluptates quam sapiente ducimus maiores sit ut.', '1978-05-17 11:21:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
