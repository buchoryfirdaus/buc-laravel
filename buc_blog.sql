-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2023 at 03:46 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buc_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(2, 'Hacker', 'hacker', '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(3, 'Personal', 'Personal', '2023-06-28 23:43:00', '2023-06-28 23:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_27_034351_create_posts_table', 1),
(6, '2022_10_28_024536_create_categories_table', 1),
(7, '2023_07_03_031441_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Incidunt incidunt nulla provident est.', 'consequuntur-consectetur-beatae-ipsa-expedita-in-aut-ex', NULL, 'Voluptatem reprehenderit vel impedit adipisci tempora. Dolore nostrum nostrum qui repudiandae eveniet corporis laudantium. Et sapiente tempore non tenetur excepturi consequatur dicta.', '<p>Odit saepe et culpa cum neque voluptatum. Recusandae consequatur qui eum eos quo maxime. Accusamus eum natus minima voluptatem. Quae quam eum aut enim et necessitatibus. Ut odio ut quia sit atque minima aspernatur eius.</p><p>Facere itaque cupiditate laborum id eum. Expedita voluptatem beatae a eos. Voluptatem saepe consequatur et est maiores id. Aut laboriosam quia dolorem fugit expedita. Sunt explicabo alias voluptatum officia id sunt eius.</p><p>Placeat voluptatem doloribus ab excepturi enim. Qui distinctio officia ullam iusto maxime. Corrupti repellendus hic atque voluptatem. Quas est assumenda repellat rerum id.</p><p>Ab nihil molestiae explicabo perspiciatis qui omnis quas. Voluptatem nihil vero et. Itaque aliquid impedit reiciendis quam voluptates perferendis iure.</p><p>Ullam voluptate cum qui accusamus atque. Numquam repudiandae optio tempore voluptatibus sit. Quis id et vitae nihil. Eos suscipit optio optio et.</p><p>Adipisci occaecati magnam dolor. Molestias veritatis sed maiores. Pariatur aliquam nihil odit quo ut fuga et.</p><p>Suscipit nisi ad ut omnis vel pariatur deserunt. Quis minus rerum cupiditate non qui illum omnis vero.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(2, 1, 2, 'Aut perspiciatis voluptatem.', 'non-officia-autem-laboriosam-aut-praesentium-officia-ut', NULL, 'Quisquam ipsa cupiditate sed nihil perspiciatis. Voluptatem molestiae reprehenderit quia quia voluptas consequatur cumque doloribus. Aut veniam quidem placeat eaque vel exercitationem sed totam.', '<p>Neque voluptas nostrum nihil quis animi expedita. Distinctio deserunt aut earum rerum est. Voluptas aut consequatur molestias facilis sed omnis fuga.</p><p>Rem sed fugiat atque quis placeat praesentium. Sequi repellat doloremque ducimus inventore maiores. Similique aliquam quae dolorem.</p><p>Voluptate aut magni qui sequi. Et praesentium fugiat accusamus minima incidunt. Qui provident mollitia aspernatur incidunt dignissimos.</p><p>Quod vel distinctio eum nemo sint eligendi. Molestiae ut voluptas perspiciatis voluptatem sint. Odio esse odio qui minus pariatur earum cumque.</p><p>Labore molestiae consequuntur et voluptatibus. Quisquam nulla exercitationem delectus. Voluptas sequi explicabo numquam.</p><p>Doloremque unde dicta distinctio sed atque quis quibusdam nobis. Quas ut ut voluptates est numquam ipsam odio. Repudiandae fuga sunt quam reprehenderit nemo maxime sunt. Fugiat cum nemo non saepe.</p><p>Eum a autem aperiam quos deleniti. Est facilis consectetur mollitia neque numquam adipisci nihil ut. Animi maxime aut sunt voluptas. Et facere rerum quisquam dicta quibusdam.</p><p>Nisi aliquid impedit recusandae repellat non aperiam non veniam. In perferendis in voluptas suscipit laboriosam dignissimos non. Magnam sunt sunt non quia repudiandae deleniti numquam.</p><p>Libero ut quia omnis et hic. Recusandae ad placeat sed veritatis officiis dolor.</p><p>Quo iusto est esse. Voluptatem tenetur nihil consequatur. Qui rerum odio aspernatur possimus cum. Quia qui non quae perspiciatis distinctio autem.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(3, 2, 3, 'Dolores cum sint.', 'vel-recusandae-accusantium-sint-impedit-nobis-ut', NULL, 'Tempore necessitatibus nesciunt ratione et voluptatum enim necessitatibus. Non sequi voluptatem nihil qui ea molestiae. Corporis laboriosam quis minus et dolorem sit porro.', '<p>Quis officiis repellat enim non. Voluptate voluptates mollitia nulla rem est quo. Sunt saepe eum culpa sed molestiae corrupti.</p><p>Nemo voluptas voluptatibus omnis unde aut nesciunt aut suscipit. Nostrum qui natus quod nemo quos qui. Est inventore similique mollitia voluptates amet harum voluptatem. Et possimus necessitatibus incidunt earum voluptates placeat.</p><p>Cum nulla est odit cumque enim quod soluta autem. Ut quisquam officia aliquid iusto quis quidem. Officia velit magnam consequatur aspernatur et. Sunt et voluptas inventore soluta corrupti nam.</p><p>Est numquam libero voluptas. Voluptatum numquam recusandae voluptates facilis magni nemo.</p><p>Sunt rerum reprehenderit soluta officia. Et amet sit aut perspiciatis occaecati. Nemo provident fugit quo sunt neque doloremque odio voluptatum. Quis nihil impedit nihil doloremque expedita eos excepturi non. Amet necessitatibus quam sed voluptatem recusandae sit alias.</p><p>Quia id aut repellendus. Consequuntur earum perspiciatis voluptatum unde nisi eos consequatur. In sunt omnis atque consequatur.</p><p>Et consequuntur sed modi voluptas itaque sed dolorum. Similique commodi possimus vero et quod vel veniam quis. Odit veniam dolor ut dolorum voluptas corporis.</p><p>Excepturi sunt vitae voluptatem ipsa enim quibusdam. Ut expedita aut quae quia sunt aut libero.</p><p>Et inventore rem dicta vel. Quae cumque numquam temporibus consequatur ut ut reprehenderit. Eum iste minima quis est dolorem animi. Et animi odio quam in numquam id suscipit est.</p><p>Est accusantium impedit dolores minus non. Sapiente qui vel quae sit. Magni omnis exercitationem voluptatibus aut.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(4, 1, 2, 'At et est odit.', 'inventore-aliquam-perspiciatis-rerum-qui', NULL, 'Quia blanditiis facilis voluptatem vel quia quam ut. Nisi iure nostrum ipsum sit neque. Deserunt excepturi similique ut nulla similique qui. Et omnis repudiandae et quibusdam quas totam.', '<p>Qui et laudantium mollitia quia dolores dolorum quia doloribus. Voluptas quis sit optio. Natus autem quia qui est. Deleniti quae praesentium cum dolorum in et quia.</p><p>Quo laboriosam labore iure nihil nihil accusamus. Rem a ea excepturi voluptates. Occaecati ea beatae excepturi quo similique iusto doloremque exercitationem. At quaerat nobis molestiae nisi minus explicabo.</p><p>Minus sequi quis maiores nostrum corporis. Harum sapiente eveniet non aliquid provident. Voluptate nulla sit voluptatum ut temporibus dignissimos suscipit qui.</p><p>Voluptates aut nulla deleniti excepturi harum necessitatibus. Quia voluptatem earum cumque vero et. Repellendus perferendis aliquid voluptatibus perspiciatis dolorum ut architecto. Libero atque eos hic in qui.</p><p>Voluptas omnis doloribus commodi ullam et. Qui est ipsa corrupti consequatur ut. Reiciendis qui ut quos deleniti minus nostrum culpa. Error dolore expedita laboriosam qui et laborum adipisci.</p><p>Et molestiae impedit magni dicta inventore similique et. Rerum qui aut tempora laboriosam nihil. Saepe est maiores autem voluptas nemo dolore doloremque.</p><p>Animi dolor officiis dolor animi culpa suscipit ratione et. Debitis neque nam quas omnis commodi ducimus ab. Ducimus laborum dolore dicta quaerat delectus. Culpa minus harum et quia.</p><p>Quis deserunt quibusdam ea animi aperiam. Quos ipsam recusandae qui quia. Quisquam unde eos vel et nemo odio voluptatum. Enim sit ea molestiae ut adipisci pariatur. Eaque totam a velit consequatur magnam.</p><p>Dignissimos ullam aut id ut est. Nemo eum ipsa enim aut accusamus. Reprehenderit ut rerum alias ullam ratione magni modi.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(5, 2, 1, 'Rem voluptatibus omnis est.', 'eum-similique-sed-ullam-laborum', NULL, 'Ut qui quidem quibusdam rerum quam. Perspiciatis eveniet asperiores dolorem aut. Ut provident a alias sed.', '<p>Dolor sint nisi totam facere. Commodi in corrupti consequatur velit saepe.</p><p>Molestias consequatur possimus enim et nostrum. Expedita eos expedita eum praesentium impedit voluptas. Aut voluptas aut explicabo veniam tempore accusamus debitis.</p><p>Ad perspiciatis eos numquam pariatur animi eveniet beatae delectus. Et nemo veniam aut dolore impedit et. Dolorem est omnis omnis. Dicta quibusdam et culpa qui molestias.</p><p>Vero omnis autem maiores omnis necessitatibus quos atque debitis. Saepe facilis doloribus eum ut corporis suscipit.</p><p>Ducimus sit aliquid non et earum. Necessitatibus ut non accusamus laboriosam dolore atque debitis. Nulla voluptas accusantium id accusantium.</p><p>Sapiente ut aut aut natus laboriosam saepe. Reprehenderit qui sunt eveniet rem. Neque ut quasi nihil quis. Sed dolorem omnis eveniet sunt nihil est illum.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(6, 1, 1, 'Cum iure in.', 'sint-deserunt-molestias-ab-animi-quis-ullam-commodi-adipisci', NULL, 'Est facilis deleniti alias ea et. Iusto autem autem libero architecto inventore optio. Aperiam maiores ratione odit magni rerum officia. Atque nam praesentium rerum itaque sequi et. Similique dolorum officia dolores magni et.', '<p>Ab est veniam est sit. Reiciendis impedit minima et. Aut ut ea debitis. Sit soluta eum dolorum in aperiam qui adipisci.</p><p>Est nam at excepturi accusamus atque maiores. Sed enim adipisci quaerat natus velit quis laudantium. Occaecati non magni dolor est cumque nostrum praesentium maiores.</p><p>Dolores ea odio sit illo quis quis deleniti est. Quia necessitatibus qui quisquam est cumque enim aliquid sed. Vero aspernatur eligendi corrupti exercitationem odio. Qui molestiae numquam est non earum omnis aut.</p><p>Quibusdam repellendus eum qui voluptates. Et rerum voluptas harum fugiat. Nam maiores alias est eius totam non. Ratione autem sed alias aut commodi quas omnis.</p><p>Dignissimos fugiat ea minima aperiam vel labore eum autem. Nisi fugiat sit vero nemo aspernatur qui. At est eos error aut eaque ex. Maxime et architecto hic adipisci omnis ullam iusto consequatur.</p><p>Maxime amet quia tenetur rerum voluptates. Et accusantium qui omnis natus quia sed. Dolor corrupti asperiores fugiat.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(7, 3, 3, 'Nemo neque dolorum ut.', 'at-quia-aut-et-dolorem-eius-excepturi-ratione-ut', NULL, 'Voluptatum tempore dolor nihil et consequatur saepe ex deserunt. Et fugiat provident nesciunt rerum placeat sunt ut provident. Delectus at provident tempore dolor et. Architecto quia qui eveniet reiciendis consequatur.', '<p>Sed tenetur perferendis sed dolores blanditiis non. Quis deleniti perspiciatis voluptates nihil libero ratione esse dolores. Eaque iste aut quaerat explicabo et autem.</p><p>Consequuntur officia dolorem non. Cumque ex mollitia ut sed voluptatem. Neque illo ea nobis molestias qui. Velit aut explicabo labore et ut temporibus. Beatae itaque delectus commodi iusto id cumque.</p><p>Enim accusantium sit rerum tenetur qui itaque aspernatur. Et a voluptatem nulla nihil. Eum itaque qui et id ipsa.</p><p>Pariatur et est et. Numquam hic totam impedit fugit sint praesentium ullam. Omnis eligendi nulla delectus est.</p><p>Vel est quod non numquam voluptate ut. Dolorum blanditiis cumque soluta tenetur dolorem nostrum culpa. Vero quae sequi quibusdam et et. Velit mollitia eaque facilis repellat optio id dolorem.</p><p>Pariatur architecto velit explicabo reiciendis sequi. Omnis nihil esse et ratione laborum. Et aut cumque ex impedit vero rem praesentium. Facere ab sint qui.</p><p>Voluptas reprehenderit voluptatem et dolores delectus. Esse aspernatur rerum voluptas cumque eum. Id quis animi quam quia adipisci ut. Odio ea saepe id sed porro.</p><p>Similique ea qui aut nemo qui possimus. Exercitationem nulla et ut eos quia quia. Iste consequatur quis eos.</p><p>Est alias reprehenderit pariatur dignissimos non tempore autem recusandae. Aut officia dolor ut qui itaque. Vel dolores dignissimos tenetur mollitia et expedita.</p><p>Minima officia eum quis. Molestiae temporibus nobis dolor repellendus sint alias quod. Sunt quae possimus eveniet odit aut sed. Nisi porro saepe in cupiditate possimus architecto omnis.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(8, 1, 2, 'Consequatur sint qui non iste ut aut quo.', 'mollitia-dicta-nesciunt-soluta-quidem-sed-minus-magnam', NULL, 'Quas nostrum rerum corrupti officiis eum. Nisi repellendus illo quidem dolorem dolores perspiciatis autem.', '<p>Recusandae molestiae quos et eum et et. Vero quae et repudiandae iusto est quisquam nostrum velit. Saepe animi est ut optio est. Delectus perspiciatis iste repellendus ullam asperiores error quis omnis.</p><p>Doloremque quia est eius qui hic. Dignissimos itaque dolorem ea reprehenderit. Eum est incidunt perferendis reprehenderit.</p><p>Est veniam beatae voluptatem ut optio accusantium aut. Soluta consequuntur ab beatae corporis quaerat. Et doloribus quo et et suscipit ut doloribus similique. Commodi iusto facilis saepe aperiam ut iste excepturi.</p><p>Eius corporis qui error. Quibusdam veritatis est qui odio aliquid est. Possimus blanditiis eum est aut.</p><p>Nam enim et aut. Eum facilis omnis perferendis omnis dignissimos sapiente inventore. Quam perferendis laboriosam voluptas fugit quos. Numquam pariatur officia consequatur similique et ratione repellendus.</p><p>Necessitatibus voluptas ea atque corrupti. Hic dolores ipsa est recusandae laudantium ex facere. Ut quia expedita recusandae eveniet. Iusto sint vero id consectetur fugit veritatis.</p><p>Cumque dolor occaecati aut saepe odit et. Est rerum nesciunt excepturi id praesentium. Quis quibusdam iure dicta deserunt quaerat. Deleniti officiis ut est odio labore.</p><p>Esse vel est optio. Nobis error voluptas quo eos. Omnis pariatur minima reiciendis ut iste sit fugit dolore.</p><p>Officiis suscipit nemo quisquam quis explicabo alias. Totam illum qui aut ut dignissimos voluptatem. Aspernatur ullam deleniti quia nihil iste quaerat consectetur.</p><p>Laudantium porro possimus temporibus. Aliquam enim fuga eum optio dignissimos sed. Tempora vel animi laudantium sed nulla et dolor.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(9, 1, 3, 'Ut asperiores nihil excepturi minus quis maxime iure.', 'eum-nobis-eius-dolorem-nam-esse-perspiciatis', NULL, 'Aut maxime cupiditate optio sunt et. Doloremque maxime molestiae adipisci dolores in exercitationem similique. Qui explicabo fugiat similique quibusdam id enim repudiandae.', '<p>Porro et eos vero. Laudantium alias quia provident a sunt fuga.</p><p>Eos fugit fuga perferendis et eveniet sunt iste. Qui enim explicabo totam nobis tempore fuga error. Est molestias porro delectus incidunt. Non repudiandae ut cupiditate et.</p><p>Non qui ullam laborum voluptates saepe maiores. In aliquid ea aliquam. Temporibus explicabo voluptatem autem.</p><p>Est nihil rerum nulla aut. Blanditiis sint ut cum quod cum aut aperiam. Eum doloremque sunt pariatur voluptatem.</p><p>Labore nihil consectetur amet ratione. Dolore aut explicabo enim et expedita. Ab omnis deleniti in voluptate blanditiis occaecati.</p><p>Esse amet quas nulla minus repellendus aperiam distinctio. Eaque rerum quia error non expedita. Id corrupti voluptatem id quae ipsam occaecati.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(10, 1, 1, 'Blanditiis repellat aut et corrupti amet quis.', 'iste-soluta-quo-iure-libero-hic-est', NULL, 'Id repellendus neque voluptates excepturi optio. Rerum iste reprehenderit dolore dolores odit aut ut. Eos aliquid dolore nesciunt ullam quo qui ut. Incidunt architecto et eos iure quae pariatur quis.', '<p>Quaerat et officiis consequatur eius. Perferendis est fuga vel voluptas distinctio. Est ex at aperiam perferendis quia.</p><p>Numquam consectetur minima quasi laudantium occaecati enim ut. Qui aut ut architecto quo quo. Eveniet nobis totam sed eos dolorem quo incidunt.</p><p>In sequi culpa quo aspernatur. Blanditiis distinctio est voluptatem sint est. Autem dolorem qui aperiam dolorem ea aliquam.</p><p>Reiciendis consequatur quibusdam voluptatem nostrum ut. Sapiente distinctio ut ut nulla sint nesciunt. Alias non perspiciatis voluptas quis voluptatem. Minima dolor fugit quos ut voluptatem molestiae neque ullam. Magni minima magnam commodi sed dicta.</p><p>Qui et deserunt soluta reiciendis voluptas qui voluptatibus. Voluptates qui earum et ad. Eum quam magni qui assumenda omnis et. Est quasi repudiandae autem ipsum.</p><p>Accusantium nihil et ipsam aliquid inventore ut cum dolor. Excepturi eius voluptatum atque aut esse maiores. Sunt ut harum facere praesentium magnam quas.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(11, 1, 2, 'Eaque vel quo fugit.', 'quo-aperiam-unde-mollitia-eum', NULL, 'Quas sunt commodi voluptates. Voluptatem ad alias qui. Veritatis quia nesciunt quo. Reiciendis voluptate possimus dolor dolorem temporibus perferendis ab. Dolorum laudantium et ea natus sit assumenda.', '<p>Vel sint quod et maiores officia. Ut officia sit vel dolor ipsam quia consequatur.</p><p>Et quibusdam itaque quo sed odio. Tenetur qui expedita dolorem officiis. Sequi maxime corrupti ad corporis. Dignissimos culpa sed dolores rem rerum.</p><p>Quia nesciunt et doloremque placeat officiis nostrum sed nihil. Quis explicabo ut est nisi. Architecto eum quia iusto non praesentium recusandae.</p><p>Voluptatum porro et quis optio. Voluptate veritatis modi quia eos voluptas eum doloremque.</p><p>Rerum ut ex laboriosam vitae quia consequuntur. Eveniet animi qui vitae aliquid sed aspernatur ut. Nam ut adipisci et deleniti similique illo eligendi. Est assumenda et inventore necessitatibus saepe fuga.</p><p>Minus dolores quos maxime quo et. Enim necessitatibus tenetur dolor in. Corporis expedita necessitatibus rerum excepturi voluptatum quia aut et.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(12, 2, 3, 'A quas quia praesentium vitae sint.', 'tenetur-blanditiis-velit-iure-cupiditate-sit-temporibus', NULL, 'Enim et nam nisi. Necessitatibus et et ullam ab et natus quo. Atque deleniti maiores consequatur ea.', '<p>Veniam et sed exercitationem. Assumenda impedit rem doloribus. Illum omnis modi aut placeat fugiat dolore dolore.</p><p>Soluta quis debitis dicta qui. Repellat a quia harum voluptas. Atque eligendi cupiditate aliquid consequatur libero non autem qui. Mollitia sint dolorum labore dicta perspiciatis.</p><p>Praesentium ex architecto quibusdam autem et impedit. Id sint illum eos. Animi aspernatur dolore et perspiciatis a molestiae odit.</p><p>Iusto nam culpa pariatur et ex nostrum. Qui sed officia nulla aliquid ut. Ut enim aliquid eaque et dolores ipsum non.</p><p>Id veniam sunt accusantium enim rem. Autem nemo odio corrupti et ea sapiente soluta. Dicta corrupti repellendus vero totam error.</p><p>Sed est et rerum quia nobis iusto cum. Et et quam laudantium labore nam repellendus. Quisquam veniam aut illo velit ut. Expedita ex nam soluta consequuntur aliquid quod autem.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(13, 1, 1, 'Quia dolorem non tempore.', 'eius-nemo-consequatur-id-culpa-magni-ut-repellat', NULL, 'Labore dicta aut ea facilis velit. Suscipit rerum dolor voluptates est. Repellat harum culpa et deserunt.', '<p>Illum sed maxime eveniet repellat earum. Veniam consequuntur ea enim. Hic suscipit natus nisi non nostrum delectus facilis. Non esse possimus quia delectus ut odio modi.</p><p>Maxime neque ea libero accusantium accusamus voluptas. Sunt tenetur provident voluptatem distinctio nemo quidem cupiditate. Molestiae qui eos et facere debitis eos. Expedita dolores modi sit impedit.</p><p>Eligendi laudantium consequatur esse qui adipisci ipsam tenetur. Occaecati quasi corporis nesciunt distinctio.</p><p>Voluptatem voluptas quia quisquam. Qui eius rerum suscipit est.</p><p>Minima magni sed impedit. Repudiandae eius aliquid officiis sint asperiores quia. Impedit optio aperiam dolorem cum tempore ut quaerat.</p><p>Omnis aut placeat unde eos ad. Qui blanditiis sint cupiditate doloremque qui non. Quasi laboriosam saepe alias voluptates labore. Tenetur molestiae quia iure voluptatem et. Consequuntur ad et et id perferendis corporis.</p><p>Est corporis repellendus et error eos consequatur. Magni nobis dolorem id quasi temporibus qui nihil mollitia. Vel ullam explicabo quam.</p><p>In doloremque qui deleniti. Dolore dolores deleniti dignissimos rem. Sint sit cumque sit aut.</p><p>Ipsa et omnis sit et non repudiandae molestias. Magnam ut sint quidem quod a nostrum voluptate. Non commodi ipsam veritatis a et. Et eaque quisquam at quidem reprehenderit sit earum.</p><p>Est numquam sunt cumque nostrum voluptatum laudantium. Sunt ut temporibus aut voluptas neque labore ea. Quos est fugiat modi asperiores.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(14, 2, 3, 'Nesciunt natus corporis quia suscipit.', 'nostrum-vel-saepe-doloremque-perspiciatis-tenetur-deleniti', NULL, 'Nulla explicabo facere ea velit repudiandae quisquam. Aperiam doloribus inventore sed ut quae in.', '<p>Nisi laboriosam alias ut rerum eveniet animi architecto excepturi. Sit explicabo aut omnis sunt cupiditate. Eos iure excepturi voluptatum ut culpa qui modi aut. Libero sint illum ut fugiat.</p><p>Repellat quas non qui quaerat necessitatibus dolor. Enim excepturi culpa qui quo aut. Debitis sed nihil quidem delectus similique. Voluptatem rerum velit reiciendis qui id. Dolore nihil qui delectus aut impedit.</p><p>Ut eum nam sint nisi ipsam velit. Impedit soluta sint nobis eligendi voluptate.</p><p>Aliquam dignissimos similique iste soluta laboriosam quia et. Alias sit ducimus enim corporis. Laborum ut quae sed repellendus eos. Eum expedita itaque nostrum aperiam sunt adipisci adipisci.</p><p>Voluptate veritatis odio omnis. Fuga cum dolorum velit est qui rerum. Quae pariatur quis vel autem tenetur. Esse architecto beatae qui ea.</p><p>Dolor repellat totam aut quo ducimus ut ut. Illum quisquam quis vel totam sunt facilis. Vel consequatur rerum explicabo voluptates tempora. Sint non nostrum accusamus quia ut et.</p><p>Modi architecto dolores vel veniam ratione quas. Dolores omnis est natus minima repellat aliquam. Vel fuga minima reiciendis quos.</p><p>Reprehenderit alias et qui. Dignissimos quia sit optio nesciunt. Aut quis non nam cumque. Optio inventore eum esse eos voluptatem illum. Impedit dignissimos labore facilis aspernatur omnis soluta natus id.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(15, 1, 1, 'Non quibusdam quis vel accusantium et.', 'vel-eveniet-sunt-nisi-id', NULL, 'Voluptatum corrupti expedita neque eos at ut. Eius repellendus deserunt voluptatem modi. Aut explicabo non nisi sit aliquid voluptatum. Nihil quidem incidunt et itaque excepturi expedita rerum.', '<p>Quo aliquid rerum officiis. Magnam odio itaque debitis totam sunt magnam ratione odio. Non nostrum molestiae non aspernatur. Maxime cupiditate dolore corporis ratione.</p><p>Non alias maxime maiores. Aut vel ad eius sapiente et cum fugit. Et saepe omnis dolorem est exercitationem. Nam fugiat sit non.</p><p>Provident ab inventore rem. Animi sapiente ea ut ex ducimus dolore accusamus. Possimus id eum est consequatur commodi.</p><p>Debitis ducimus eum neque non dolores neque. Officia sapiente nisi sunt officiis itaque ea numquam. Est vel consequuntur et aspernatur qui.</p><p>Sapiente sint cum quia enim cupiditate quis. Unde provident qui voluptas.</p><p>Ipsam consequatur voluptas enim id. Optio ducimus vero recusandae quasi ut. Voluptas ut saepe eos blanditiis non occaecati quo. Reprehenderit rerum consequuntur blanditiis ipsam laudantium quisquam eum.</p><p>Iure consequuntur ut sint est sit. Cupiditate voluptatem qui aliquam quae quis dolores hic. Sunt optio corrupti officiis et.</p><p>Asperiores possimus asperiores aut quasi dolorem id necessitatibus. Nostrum itaque porro vel molestiae ex possimus. Sunt voluptatum sunt quo pariatur eveniet. Cupiditate non sapiente quos unde.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(16, 1, 2, 'Porro tenetur doloribus voluptatem facere.', 'voluptates-ut-nobis-reprehenderit-aperiam', NULL, 'Quod reprehenderit repudiandae magni hic. Optio quibusdam quidem doloribus quibusdam eos et. Vel veniam hic qui tenetur ut dignissimos.', '<p>Eveniet perferendis commodi eligendi doloremque. Voluptatibus corporis qui saepe minima ullam. Hic est reiciendis voluptatum nobis veniam inventore consequatur. Quia in in vel quia repellendus sint et.</p><p>Nisi voluptas tempore aut veniam dicta sint nihil. Velit ut mollitia saepe ratione. Dolorem non sint eius aut. Iusto et ipsam repudiandae sit iste ab error.</p><p>Esse quam aperiam quasi repellendus quo. Vero sequi velit repellendus alias qui illum aut. Cumque similique eligendi alias aut vitae magni. At expedita commodi impedit accusamus aut est.</p><p>Repudiandae dolorem aut repudiandae incidunt. Qui fugit praesentium incidunt esse. Omnis expedita in natus.</p><p>Enim dolorum adipisci est qui. Aut officia et voluptatem possimus et. Itaque aperiam tempora incidunt minima autem voluptatem. Commodi dolores accusantium eaque optio.</p><p>Libero consectetur cumque nisi est vel ab ullam. Eaque est ut in sit voluptatibus provident autem. Sed praesentium qui expedita nesciunt sed. Consequatur quia quia et ipsam. Rerum et quos debitis odit.</p><p>Ipsam voluptas consequatur provident possimus vero quod. Quam dolore non eum nisi. Ut quia voluptatem illo ratione error.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(17, 1, 2, 'Voluptatum distinctio possimus qui deserunt veritatis enim.', 'voluptatum-dolorem-a-ut-pariatur-hic-ut', NULL, 'Cumque qui qui aspernatur reiciendis. Recusandae voluptas eveniet enim incidunt dicta nobis. Deserunt voluptas architecto illo veniam ipsam sed repellendus.', '<p>Ullam suscipit et dolore error voluptatem possimus fugit eaque. Placeat quas modi minus. Ut vitae pariatur vel et.</p><p>Rem laborum sit dolores qui eum possimus perspiciatis. Totam ea iure accusantium dolorum. Sed officia commodi asperiores dignissimos odit eveniet. Ut recusandae expedita corrupti dolores.</p><p>Vitae nulla delectus est at. Voluptatibus omnis suscipit ipsam eos quia. Ab temporibus et necessitatibus ut sunt alias quod.</p><p>Nemo cum ipsum beatae minus vel. Numquam sint in omnis consequatur eos et. Necessitatibus at ut ipsum explicabo occaecati.</p><p>Illum sed perspiciatis quia sequi eveniet nesciunt esse ipsum. Ea repellat qui autem. Labore fugit qui qui nesciunt dolorem sed. Quisquam repellendus amet aut.</p><p>Sed cupiditate corrupti quo maiores dignissimos. Totam rerum sed quo aut et eveniet.</p><p>Nesciunt nihil non et voluptatem qui. Veniam doloremque repellat occaecati voluptas enim quia. Ullam rerum ut omnis blanditiis magnam.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(18, 1, 3, 'Est officiis ullam velit.', 'quod-qui-eum-laborum-numquam', NULL, 'In minima saepe aut id adipisci dicta. Id ea sit error tenetur consequatur tempore veritatis. Quas quia voluptas reiciendis non molestiae sequi rerum. Ea dolorum modi perspiciatis iure ad.', '<p>Numquam officiis laudantium quo eum. Quaerat ex ipsa numquam aut. Minus sunt molestiae enim commodi molestias hic ratione.</p><p>Deleniti iure saepe natus quisquam. Non inventore dolor quis sint ipsa ipsa voluptas. Veritatis unde eos vel repellat quisquam totam.</p><p>Corporis velit aut ipsum dignissimos tempore. Ex nam optio soluta inventore id. Quaerat hic est quam nam.</p><p>Dolores sunt amet maxime nihil ut dolore distinctio. Consequatur voluptas similique commodi cumque voluptatem. Fuga perferendis maxime a ipsum sapiente nostrum.</p><p>Et dolorum sed dignissimos non nesciunt illo id delectus. Esse veritatis ut voluptatibus repellendus sed culpa quos. Odit corrupti dignissimos amet et.</p><p>Accusantium maxime minus aspernatur explicabo id nihil blanditiis voluptates. Hic animi reprehenderit necessitatibus quia nemo consequatur dolor. Officia dolorem sit autem provident. Exercitationem voluptatem saepe optio a culpa voluptas.</p><p>Mollitia magnam aut tempore iusto perspiciatis. Laudantium laborum rem sit eos doloremque in reiciendis. Dolores provident magnam est quia vel ut officiis.</p><p>Nobis adipisci quibusdam pariatur voluptatibus illum et tempora consectetur. Ut nisi cumque commodi cupiditate quas quas quo. Ea voluptas vitae ut. Perspiciatis similique sed est laudantium.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(19, 3, 3, 'Sunt pariatur voluptatem.', 'similique-voluptas-repellat-hic-molestiae-et-dolorem', NULL, 'Voluptatum nihil consequatur id laboriosam consequatur. Sit hic repudiandae mollitia quis qui et quia.', '<p>Veritatis enim blanditiis qui ipsam cumque eius cupiditate. Esse veniam perferendis dignissimos a. Sequi voluptas nihil a non vitae sequi consequatur.</p><p>Architecto sunt perferendis ad velit maiores provident. Quasi aspernatur voluptas asperiores aliquid sit. Iusto temporibus ut est non. Nulla adipisci doloremque quisquam voluptates. Harum modi quam voluptas magni laborum consequatur.</p><p>Et odit minima veritatis animi doloribus ut ea. Aut et repellendus delectus non magnam consequatur voluptatem cumque.</p><p>Consectetur quo sit numquam. Vel debitis quia quidem.</p><p>Labore porro praesentium et iusto qui dolor. Autem voluptates et laborum ea sunt. Qui aut molestias ipsam sunt earum nisi. Maiores repellendus omnis incidunt inventore id similique.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(20, 1, 2, 'Nemo id porro nesciunt eum molestiae excepturi.', 'fugiat-cupiditate-ut-quo-ea-quidem', NULL, 'Nam repudiandae est aut. Veniam fuga et itaque pariatur. Quasi reiciendis beatae dolor sit. Iusto totam omnis laudantium officia.', '<p>Consequatur dolorem eum deserunt temporibus dignissimos similique ut. Ut sit ad alias. Omnis est dolor adipisci voluptas recusandae.</p><p>Necessitatibus sint velit ducimus quibusdam modi provident. Nesciunt molestias magni nulla. In iste culpa id delectus dolorem.</p><p>Velit sapiente animi quod possimus ipsa perferendis nisi fugiat. A id provident numquam dolor ducimus. Et voluptate quas quos placeat qui. Non laboriosam possimus error consequatur ea et fuga.</p><p>Perspiciatis voluptas consequatur ut itaque officia voluptatem. Ullam inventore qui consequuntur ut. Porro accusantium est dolores fugiat.</p><p>Id omnis quibusdam repellat nesciunt sed. Aspernatur aut delectus ut a accusamus ullam maiores minus. Eum reprehenderit vitae sunt facilis.</p><p>Perspiciatis exercitationem velit quo et magnam soluta. Voluptatem quis voluptas neque delectus. Accusantium dolores nisi dolorem et. Consequatur sequi quibusdam velit.</p><p>Qui inventore qui placeat sed eius. Minima cumque labore velit laborum unde necessitatibus. Quia ut sint blanditiis eum sint repellendus.</p><p>Et nam deleniti sed. Molestias eligendi sit deleniti commodi qui mollitia id. Quam et sit quasi rerum nulla rerum.</p>', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00'),
(22, 2, 1, 'new lagi nich', 'new-lagi-nich', 'post-images/fxuCUsQOOpYuvqaxh7aNj6nMSE1BlpfpbFhJ4TnD.jpg', 'new lagi nih bro', '<div>new lagi nih bro</div>', NULL, '2023-06-29 00:34:21', '2023-06-29 23:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Buchory Firdaus', 'buchoryafirdaus', 'buchoryaf@gmail.com', NULL, '$2y$10$oiBFuvBPzSgOManeDbdOiu4QA8rud9UYWg9Zdxtyatw4lNQQ.fVq2', NULL, '2023-06-28 23:43:00', '2023-06-28 23:43:00', 1),
(2, 'Vera Ira Puspasari S.IP', 'wijayanti.maryanto', 'thakim@gmail.com', '2023-06-28 23:43:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y25pGCilhQ19ujSCqqIuwPN9eWDy3Vg78Pp5URQ2TP80TVKSxbSkQOrZDjOL', '2023-06-28 23:43:00', '2023-06-28 23:43:00', 0),
(3, 'Endra Luluh Waskita S.Gz', 'dadap.winarsih', 'bahuwarna.hardiansyah@gmail.com', '2023-06-28 23:43:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f6NtPfD5olBvIVo69iPuphx78HJJbUSvzfhnK0DTtvz5io8HdFwiSDusa41I', '2023-06-28 23:43:00', '2023-06-28 23:43:00', 0),
(4, 'Kenari Simanjuntak S.Sos', 'teddy.mayasari', 'nasrullah32@gmail.com', '2023-06-28 23:43:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cx2syEzxSH5GFzUEtsekeM36DWd1RebSKQ9ZM0JAOYpaiVgiHBYYC5mnSaHc', '2023-06-28 23:43:00', '2023-06-28 23:43:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
