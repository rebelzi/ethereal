-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2021 pada 08.30
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assistant_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programing', 'web-programing', '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(2, 'Web Desain', 'web-desain', '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(3, 'Personal', 'personal', '2021-12-28 21:46:43', '2021-12-28 21:46:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_20_011253_create_posts_table', 1),
(6, '2021_12_21_073938_create_categories_table', 1),
(7, '2021_12_29_072017_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
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
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Est aut et voluptatem itaque molestiae voluptas.', 'nihil-molestiae-vel-quos-qui-accusamus-consequatur-quam', NULL, 'Autem et qui exercitationem provident minima odit. Itaque qui nulla ducimus. Facere explicabo quia autem alias aut vel minus quam. Tenetur velit eveniet quam fugit neque totam.', '<p>Magnam dolor qui quos maiores. Saepe consequuntur sunt ex amet et quasi. Vel modi eum quis vero dicta id. Perferendis aut quisquam natus debitis.</p><p>Explicabo voluptatem vitae numquam rem illo. Sunt ipsa assumenda delectus expedita eum qui. Voluptates alias deleniti cupiditate voluptate maiores libero.</p><p>Veritatis praesentium eaque ducimus impedit. Non debitis harum sed libero eius voluptas dignissimos. Nisi maiores ut totam blanditiis dolores. Dolorem fuga qui sapiente ab.</p><p>Beatae facere esse repudiandae ab culpa omnis cupiditate. Et in qui unde ad et maiores. Facere necessitatibus aut est enim accusantium quia fuga.</p><p>A voluptas error in et ut. Id ut numquam velit inventore nam omnis. Quia labore quisquam aut necessitatibus.</p><p>Eum autem aut officia omnis aut iste. Vel aut quo eligendi reiciendis. Optio ut omnis tempora molestias quia voluptatem animi aut. Mollitia hic quisquam voluptatibus maxime.</p><p>Exercitationem blanditiis et dolor labore deserunt quidem id. Accusamus et velit a odio deleniti nostrum. Debitis dolorum qui quidem fugiat laborum et molestiae.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(2, 2, 2, 'Fugiat consequatur dolorum illo.', 'suscipit-a-perspiciatis-consequatur-molestiae', NULL, 'Rerum quisquam dolorum dignissimos dolores quis assumenda alias. Asperiores magnam laboriosam quia quas id. Quis pariatur rerum impedit quisquam explicabo pariatur. Soluta quo dolorum iure quibusdam id.', '<p>In voluptas et impedit vero deserunt. Qui omnis nihil officia inventore eum est. Eaque quis repellat ipsum doloremque. Mollitia aliquam aut reiciendis beatae. Sequi cupiditate in ab sunt et.</p><p>Quis necessitatibus expedita voluptates sed sed iste quod. Atque placeat dicta est nisi doloremque enim. Blanditiis beatae praesentium est non.</p><p>Et maxime neque aut animi accusantium eius at. Voluptatum ut iusto aut quis eos quasi. Aliquid eos rerum exercitationem dicta.</p><p>Dolor est quia est quae sint expedita perferendis repudiandae. Explicabo unde debitis minus eveniet magnam labore quaerat harum. Commodi vel sit et ex. Odit perferendis perspiciatis non possimus voluptas eligendi. Laudantium perspiciatis provident consequatur.</p><p>Tenetur laboriosam et non nulla qui nobis eius. Fugit est quam quas. Recusandae occaecati quisquam aspernatur qui assumenda sint neque.</p><p>Maiores nemo ducimus sed quae ducimus. Maiores odit laudantium laboriosam rerum qui est eius et. Soluta sunt excepturi sint ut. Temporibus quasi sed aut voluptas.</p><p>In omnis voluptatem odit quisquam sit. Perspiciatis nostrum qui quia repudiandae. Cupiditate minus sequi perferendis ex. Aut asperiores id quam officiis expedita.</p><p>Consequatur sed error omnis repellat eum voluptatem quo. Voluptatem sit consequatur quis iure dolorum iste. Praesentium consequatur nemo delectus reiciendis sit totam facilis qui.</p><p>Ipsam repudiandae ea est eius porro. Quod neque voluptas rerum asperiores reiciendis sunt iusto. Tenetur molestias quo consectetur enim dolore maxime.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(3, 2, 3, 'Quo delectus omnis quia.', 'laboriosam-voluptatem-et-sint', NULL, 'Sed natus voluptatum nesciunt eum. Omnis ipsa animi voluptatibus recusandae maiores necessitatibus quae. Harum et doloremque aliquam sunt voluptatem aut. Placeat modi placeat ipsa.', '<p>Animi laboriosam dicta alias aut non. Doloribus beatae laudantium velit quae dolorum excepturi nesciunt ab. Ut fuga corporis incidunt optio et earum.</p><p>Doloribus fuga consequatur quaerat distinctio. Corporis aut est tenetur ut non suscipit. Facere hic a illo vitae consequatur. Doloribus sit eos dolor repellendus et et distinctio facilis.</p><p>Quo ut eligendi ducimus quod ducimus qui. Voluptatum fugiat autem odit eos adipisci qui. Repellat dolorem est minima ut eos saepe. Ipsam aliquid culpa praesentium nemo est consequatur eveniet et. In eius ipsa et delectus provident tempora et.</p><p>Quis explicabo aut et animi et molestiae atque. Incidunt error similique quidem laborum atque libero.</p><p>Voluptatum ea nemo natus quia. Consectetur et accusamus recusandae expedita esse. Veritatis sit mollitia earum nobis id unde. At voluptas aut officia amet libero libero.</p><p>Cumque et labore ex. Exercitationem saepe ut ex sunt perferendis ad sed. Quis incidunt voluptatem hic iure ut. Perspiciatis rerum aut magnam tenetur.</p><p>Praesentium enim cumque quo odit. Veritatis nihil sunt doloribus vero nobis eum. Blanditiis velit ut molestiae iure adipisci. Ipsa numquam culpa voluptate sint maxime inventore ullam dicta.</p><p>Eos facere maiores voluptatem ipsa. Ratione optio sunt dolorem. Omnis eos et commodi in ut.</p><p>Aut voluptas et sint dolor sint est quasi. Iusto et eum occaecati inventore. Est sint repellendus debitis ad facere qui.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(4, 2, 1, 'Delectus qui est laudantium.', 'iure-eum-quod-soluta-sunt-consequatur', NULL, 'Aspernatur molestiae totam commodi dolores adipisci qui cupiditate. Nam eaque quis id aut. Rem rem porro minus aperiam officia illum.', '<p>Laborum voluptatem sapiente et iure recusandae aut assumenda. Quam adipisci fuga voluptas fuga aut dolorum. Unde hic nihil est nostrum.</p><p>Nesciunt dolorem qui repellat qui quod. Nesciunt atque vitae odio. Qui sunt aut sint distinctio blanditiis laboriosam nihil. Eum eos dolore dolorem.</p><p>Voluptatem quis aliquid qui alias voluptatibus eos sed debitis. Mollitia doloribus quia consequatur corporis facere et. Quae sunt consequatur totam aut commodi sed. Et eius veniam iusto dolores.</p><p>Quia soluta deserunt doloremque quia. Ipsam et labore unde qui quo voluptatem ex.</p><p>Asperiores est aut dolorem nihil. Adipisci ea error et temporibus voluptatem adipisci consequatur.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(5, 1, 3, 'Voluptatibus minus excepturi voluptate neque.', 'asperiores-dolores-voluptatem-consectetur-quia', NULL, 'Amet aut dolores qui assumenda at sed repellendus. Corporis dolore amet animi natus reprehenderit. Omnis dolores omnis non nemo. Veniam soluta unde quis qui accusamus.', '<p>Provident facilis id id praesentium explicabo sint. Ratione tempora facilis quia qui ea. Fuga culpa ipsam illo et sunt adipisci.</p><p>Eligendi minus blanditiis consectetur perferendis. Qui ut iusto deleniti et ad. Fuga magnam sit ducimus quisquam.</p><p>Corporis aut repellat ex modi hic autem. Consequatur aperiam est dolore doloremque illo fuga. Consequatur placeat quia iure hic doloremque. Nam quia eius voluptatum modi dolores.</p><p>Quibusdam adipisci vel explicabo praesentium id. Doloribus dolores distinctio natus. Explicabo nihil deserunt amet repellendus laboriosam.</p><p>Aperiam exercitationem nemo eligendi nam ut consequatur. Velit veritatis reiciendis et magnam qui ad. Veniam distinctio sed earum esse.</p><p>Quisquam sit inventore numquam autem voluptate commodi rem quia. Est vitae eligendi et quod. Pariatur quia et consequatur.</p><p>Dolorum mollitia tempora enim illo officiis eum aut. Placeat sit voluptates nam quas repellendus.</p><p>Porro dolores ut et molestiae saepe quo ut. Sequi nemo maxime ipsam ipsam modi qui. Excepturi consectetur nobis ut eligendi quam repellat perspiciatis. Ut iste reiciendis adipisci. Qui id et accusamus ipsam non distinctio debitis nemo.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(6, 1, 1, 'Qui nulla autem labore dicta nemo veniam enim.', 'in-placeat-cumque-reiciendis-dolorem-iste-et-et-explicabo', NULL, 'Omnis qui laborum blanditiis beatae et. Voluptatem nulla aut quasi distinctio atque quaerat placeat. Dignissimos doloremque nam eaque non reiciendis voluptas itaque.', '<p>Nobis voluptatibus perspiciatis et. Ut ut quae vel minima eos laborum tenetur.</p><p>Autem qui itaque necessitatibus rerum. Dicta et blanditiis perspiciatis velit nemo. Consequatur voluptate ipsum tempore exercitationem facilis.</p><p>Vero a ut totam. Dolor dolore quae quam ad praesentium eaque.</p><p>Et qui et impedit repudiandae. Ut asperiores voluptatem quis autem reprehenderit. Facilis reiciendis ex earum consequatur deleniti quia sit saepe.</p><p>Et excepturi distinctio et. Sint eaque porro excepturi id placeat esse dolore rerum. Laudantium quis sit optio in. Cumque aspernatur quaerat aut nihil suscipit aut.</p><p>Earum omnis non et voluptatem qui. Quod fugit explicabo beatae nihil at. In sequi itaque repellendus minima et modi sapiente.</p><p>Ad tempora placeat rerum consequatur repellat. Et temporibus ut accusantium dolorum architecto in. Quia minus possimus sunt natus nihil. Et laboriosam ab eligendi cum cumque aut quia fugit.</p><p>Saepe atque alias dolorem dolorum molestiae in velit. Possimus laudantium cupiditate dolorum quia sint. Eos et similique ut adipisci ea voluptas nostrum. Et dolor et architecto.</p><p>Consequatur itaque exercitationem cum ex. Hic quia quia dolorum velit. Enim quibusdam nobis debitis enim libero earum adipisci.</p><p>Aliquid pariatur omnis qui ipsum sit. Qui quod quia consequuntur quidem laboriosam. Sunt eos fugiat praesentium libero omnis quia provident.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(7, 2, 3, 'Quaerat perspiciatis et.', 'eveniet-est-asperiores-aut-enim-asperiores-atque-consequuntur', NULL, 'Nihil placeat praesentium dolor est accusamus quo. Laboriosam rerum aspernatur aperiam maiores soluta provident. Unde corrupti omnis eum id consequatur et voluptas. Temporibus quis et accusamus modi porro autem quas.', '<p>Officia reiciendis adipisci quidem velit repellendus. Eaque voluptatem est ab eius minus adipisci molestiae.</p><p>Fuga nobis labore consectetur et aut. Cumque velit at molestiae quod veritatis. In ullam quia et odio debitis ut et minima. Doloremque ducimus consectetur aliquid.</p><p>Pariatur qui dolorum voluptatibus fugiat molestias ut sunt. Odio molestiae soluta et voluptatem. Itaque enim facilis adipisci eos dolore odio dolores ut. Dicta eaque autem perspiciatis quo voluptatum eos sapiente reiciendis.</p><p>Minus quae et autem esse nihil dolorem incidunt. Consequatur fugiat minus officia. Sint totam quas adipisci et in. Quidem nesciunt velit enim illo blanditiis atque.</p><p>Voluptatibus quam quae odit suscipit. Sit molestias expedita temporibus in est aut. Aspernatur aspernatur voluptate sit laudantium dolor dolores et.</p><p>Iusto dolores ea earum consequuntur et reiciendis quo. Tenetur nihil nihil officiis repellat incidunt modi. Quibusdam temporibus hic ipsa repellendus praesentium consequatur quis. Repellendus eum sed quia delectus nostrum.</p><p>Doloribus temporibus libero officia et. Doloremque velit vel alias iure id expedita odit. Aut velit at aut provident fuga sequi in corrupti. Repudiandae temporibus aut velit quae.</p><p>Est ex dolores necessitatibus iure architecto accusantium ratione. Et voluptas atque dicta earum consectetur qui est. Ut est dicta rem eos ea minus. Molestias labore laboriosam labore.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(8, 3, 2, 'Suscipit totam dolores aliquid quidem aut soluta qui.', 'quisquam-maxime-eaque-provident-veniam-molestiae-voluptatibus', NULL, 'Qui dolorem voluptatem vel sit ea culpa cum. Quam quia enim consequatur voluptatem facilis nihil qui. Rerum consequuntur error temporibus dolores nulla quas ut sint. Debitis dolores rem atque eveniet tempora dignissimos repellat qui.', '<p>Dolorem facere occaecati exercitationem ut. Mollitia rerum molestiae cupiditate aut. Quo ex odit quia voluptatem.</p><p>Modi quam eos qui quae ut amet aut. Quo dolores est totam distinctio recusandae. Debitis placeat consequatur dolor quis ducimus quia sunt. Sit reiciendis non et impedit impedit tempore.</p><p>Libero accusantium aut inventore qui laborum. At laudantium vero architecto unde reprehenderit. Culpa hic molestias quisquam quisquam.</p><p>Rerum aut omnis esse dignissimos. Dolores non et quaerat molestiae perferendis exercitationem in. Quia pariatur blanditiis et recusandae repellendus iste et magnam. Ut impedit dolorum facilis sed harum labore.</p><p>Ducimus quam tempora rem illo. Voluptas deleniti similique corrupti. In aut tempora ea. Voluptatem dignissimos et cumque dolorum id aut.</p><p>Aperiam et est consequatur ratione est ut reiciendis tenetur. Molestiae aperiam consequatur qui beatae. Sit consequatur adipisci illo nesciunt dolore.</p><p>Id magni sit sint est. Sint quo dolor assumenda laboriosam veniam. Dolorem fugiat iste natus non deserunt aut ex.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(9, 1, 1, 'Hic facilis id in expedita.', 'impedit-iusto-ea-cum-qui-repellendus-exercitationem', NULL, 'Nemo id amet quis provident repellendus non soluta. Suscipit fuga vitae laborum illum. Inventore molestias tempore et ab hic perferendis iste.', '<p>Alias numquam rerum sapiente ipsa autem sed. Alias sed eos aspernatur. In voluptas consequuntur animi fugit. Necessitatibus voluptas modi omnis dolor molestiae dicta enim.</p><p>Vitae rerum eum temporibus ea perferendis qui. Provident non deleniti autem dolor ut facilis.</p><p>Labore rerum iusto aut. Ducimus voluptatibus iure assumenda et. Assumenda aut ut quia eius architecto.</p><p>Eos vel et voluptas maxime. Illum ea voluptates ea. Repellendus omnis error reiciendis tempora ab qui fuga.</p><p>Velit illum at accusantium asperiores suscipit facere quis. Qui nihil nihil consequatur in ab ea asperiores. Cumque aspernatur adipisci natus iste quam eius fugiat sapiente.</p><p>Fugiat quia eos sed minima quaerat ea. Quasi aspernatur sapiente incidunt corporis occaecati quo. Velit ipsum nihil consequatur nesciunt ducimus vel animi.</p><p>Hic corporis architecto quos qui blanditiis nesciunt dolorem. Et qui voluptas expedita rerum eligendi ducimus est.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(10, 2, 2, 'Sit reprehenderit iure.', 'eaque-fugit-exercitationem-veniam-voluptatem-provident-magnam', NULL, 'Optio ea dolore laborum at possimus molestias voluptas. Amet unde et consequatur alias optio possimus repellat sunt. Maxime molestias necessitatibus similique delectus id fugit.', '<p>Reprehenderit ut culpa atque dolorum. Quo quos ducimus nostrum culpa atque. Dolorum non sint qui. Non accusamus est accusamus mollitia accusantium quae. Ea laboriosam delectus veritatis eos dolores aspernatur.</p><p>Possimus deleniti soluta rem est nihil. Deleniti sed nihil eaque laudantium ipsa. Expedita deserunt ex aut laborum consectetur. Nulla alias cum esse consequatur pariatur eveniet.</p><p>Itaque placeat sed consequatur nihil est odio beatae. Autem laborum amet impedit aliquam rerum dolore accusantium. Praesentium temporibus sint alias sit voluptatem aut. Voluptatem delectus illo nihil pariatur repudiandae minima dignissimos.</p><p>Deleniti debitis vitae fugiat tempore recusandae et. Tempora ut odio accusantium esse. Autem nihil commodi odio eaque repellat voluptate.</p><p>Nostrum sunt et id aut. Quod odio fugit alias quia. Fugiat sequi dolorum tempora et error eum. Illum nihil doloremque delectus consequuntur voluptas in a sunt.</p><p>Autem nesciunt nulla odio aut id. Voluptas consectetur voluptatem dolore occaecati a. Alias sint similique quisquam error. Nesciunt vel necessitatibus aperiam praesentium nesciunt et.</p><p>Quo tempore voluptatem et nesciunt nisi voluptatibus adipisci. Deserunt atque qui earum in ex aspernatur debitis assumenda. Neque ut voluptatibus beatae illo quam sint hic. Consectetur non neque nulla magni dolores minus.</p><p>Sint ut asperiores exercitationem recusandae earum fugit. Hic beatae porro sed ipsum dolorem.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(11, 1, 2, 'Tempore eum non pariatur eveniet rerum.', 'qui-sed-minima-ea-quidem', NULL, 'Inventore nostrum voluptate qui qui consequatur consequatur qui natus. Officia occaecati culpa ad amet et. Saepe ullam non qui voluptas. Debitis explicabo est aut sed ut amet tempore voluptatem.', '<p>Necessitatibus rem voluptatem hic. Sunt qui officiis tempore rem voluptatum dolorem alias. Laboriosam dolores ratione occaecati et cum dolor et id. Esse enim autem sed laudantium quia vitae eos.</p><p>Qui adipisci sunt qui quod. Fuga aliquam quod ut quidem dolores. Officiis et et corporis ut cupiditate necessitatibus eveniet magnam.</p><p>Aperiam qui tenetur nihil dolore. Qui ea possimus est. Aliquid aut voluptate quia illum. Consequatur facere perspiciatis eveniet consequatur.</p><p>Repellat eum et distinctio est vitae reiciendis beatae. Aut velit suscipit et voluptas et.</p><p>Fugiat maiores accusantium voluptatem totam ducimus et aut. Illo eligendi ipsa dolorem reiciendis assumenda fugiat. Quis aliquid numquam consequuntur vitae hic. Voluptatem odit similique deserunt deserunt.</p><p>Est officiis velit sapiente dicta dolore. Facere voluptatibus culpa minus perspiciatis eligendi est. Adipisci quis aperiam ab sapiente voluptas qui. Perspiciatis et consequatur enim sequi quod hic consequatur.</p><p>Occaecati blanditiis ex quia assumenda dolores similique quos. Quis laborum necessitatibus dolorem quaerat explicabo quae. Quia minus quis quaerat reiciendis est alias enim. Nostrum delectus nisi sint voluptatem numquam. Sint consequatur reiciendis omnis ea ratione est.</p><p>Facilis possimus quo pariatur quo ipsam id quia. Consequuntur unde autem dicta tenetur ut aspernatur error. Suscipit odio tenetur doloribus officiis molestiae.</p><p>Nobis at tempore explicabo hic aut cumque dolorem. Eius laboriosam et hic consequatur molestiae. Saepe sapiente doloribus et fugit inventore ex sed distinctio. Provident et provident corrupti est.</p><p>Voluptatibus dolores omnis at blanditiis libero pariatur facilis qui. Voluptatem sed totam eos at minima. Ipsa cupiditate velit repellat cupiditate.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(12, 1, 1, 'Sint rem qui dolorem.', 'voluptatem-quae-laborum-eum-neque-modi-illo-aliquid-corrupti', NULL, 'Animi autem velit accusantium ad aliquam autem pariatur qui. Voluptate iure consequuntur pariatur voluptate voluptates quidem temporibus.', '<p>Illum nihil saepe ea nostrum qui et. Animi et rem voluptas eaque sit. At ducimus minus cum voluptates rem cumque expedita. Neque deleniti asperiores facilis in aut.</p><p>Voluptatibus ea a sunt ex nobis. Excepturi nihil excepturi eos cupiditate. Delectus voluptas autem eos maiores officiis.</p><p>Atque praesentium et aut. Necessitatibus veniam voluptas itaque velit itaque aut. Delectus qui dolorem reiciendis voluptas et.</p><p>Iure distinctio provident nesciunt nisi dolorum quibusdam. Impedit et vitae ducimus. In blanditiis aperiam assumenda cupiditate architecto vel.</p><p>Molestiae sapiente et animi commodi. Voluptatem est consequuntur error provident. Error qui quos facilis impedit.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(13, 2, 1, 'Cupiditate vel quasi ipsam deserunt voluptatibus officia sunt aut libero et.', 'aut-excepturi-non-ab-vel-optio', NULL, 'Laboriosam at adipisci et asperiores qui aut. Distinctio praesentium eligendi qui aliquam quis. Dolor libero velit voluptatem. Sit aut ut nisi possimus esse.', '<p>Occaecati dolores aut commodi reprehenderit iste. Eum ut autem id et dicta. Sed ea eligendi nemo incidunt.</p><p>Inventore repellat vitae eos et. Ab voluptatem deleniti quaerat. Id soluta minus quam eius cum error. Quam praesentium voluptate amet numquam quaerat eveniet.</p><p>Nisi aliquid voluptatem sint inventore. A omnis illum voluptatem dolorem numquam. Ut minus adipisci quod excepturi.</p><p>Perferendis fuga autem provident dolorem. Et consequatur molestias et fuga dicta itaque nemo. Magnam incidunt in saepe consequuntur nisi architecto.</p><p>Cumque unde dolorem et placeat minima occaecati debitis. Eaque facilis enim a dolores consectetur nihil quo. Et doloribus cumque sed et aperiam officiis aut. Recusandae amet dolorem ducimus reprehenderit blanditiis laborum. Officiis eius minima ad error itaque quidem.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(14, 2, 1, 'Consequuntur officia.', 'rerum-voluptatibus-facere-ex-et', NULL, 'Dolorum et totam rerum est in qui molestiae. Vitae reprehenderit labore nostrum nam quo repudiandae sed. Placeat aperiam in omnis quas. Qui ipsa voluptatem itaque assumenda numquam sint.', '<p>Fugit dolores exercitationem eos cumque odit. Suscipit assumenda ut natus incidunt consequatur necessitatibus quod. Error natus aut accusantium dolorem architecto nisi eveniet. Aut voluptatibus consequatur tenetur animi voluptas aspernatur. Quo odit dolor deserunt sunt optio commodi dolorem.</p><p>Veniam dolore in inventore dignissimos et. Recusandae et aut dignissimos qui veritatis est sit. Aliquam laudantium aliquam optio error.</p><p>Provident ea eos porro exercitationem eum et qui. Quibusdam error et libero odio et. Qui enim non tenetur voluptas nihil.</p><p>Cum enim corporis repellat et consectetur odio nihil. Facere eveniet velit laudantium odio exercitationem est. Est veniam quae accusantium et officia.</p><p>Laboriosam quas quo repellendus. Ut qui non aut. Corporis optio sint eveniet ut magni ratione eveniet.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(15, 3, 2, 'Dolores aut nesciunt doloremque qui fuga.', 'libero-dolorum-quos-ullam-qui-rerum', NULL, 'Alias quas delectus assumenda debitis quo tempora. Adipisci non et dolor vel.', '<p>Debitis laboriosam distinctio deleniti amet similique porro nemo delectus. Quibusdam esse id ab officia. Consequatur eligendi dicta id enim deserunt placeat.</p><p>Vero eos omnis optio commodi ut labore ullam quia. Sunt non qui et pariatur.</p><p>Minus omnis est eos magni rem tempore. Molestiae cupiditate eum iusto ducimus necessitatibus minima ipsum repellendus. Dolore voluptatem dolorem quisquam qui neque.</p><p>Necessitatibus eos et blanditiis sit. Et vel quas eveniet autem voluptatibus repellat voluptates nesciunt. Repellendus veritatis ipsum voluptatum suscipit.</p><p>Amet ut tenetur nihil quia eaque quia. Veritatis veniam dolorum aut distinctio. Est aliquam asperiores sit aliquam. Architecto assumenda ut alias excepturi autem voluptate et quas.</p><p>Doloribus qui ut est suscipit et ad recusandae voluptatem. Doloribus soluta rerum sit nobis. Autem dolores vel culpa. Ducimus consectetur voluptatem illum iusto saepe voluptatem.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(16, 2, 2, 'Numquam rerum expedita asperiores et aliquam laboriosam amet.', 'repudiandae-aspernatur-laudantium-accusamus-ratione-et-autem-ut-harum', NULL, 'Optio quo minima deserunt distinctio et sunt vero. Aut ipsam eaque voluptatem nisi magnam. Magni ut minima voluptas cumque quaerat earum perferendis. Harum dolorem dolore aut veritatis aliquam.', '<p>Et fuga sequi occaecati ad. Incidunt dicta voluptas placeat. Placeat voluptas maiores dolor quas ea provident. Quisquam nisi ut maiores voluptatem tempora odio debitis.</p><p>Repellendus saepe consequatur non repellendus vitae neque dolorum. Ut sint similique occaecati autem. Repellendus odio harum nam nesciunt odio. Et aspernatur placeat labore facilis. Voluptatem ex voluptatum id.</p><p>Voluptas accusamus qui et aspernatur excepturi magni. Tempora recusandae recusandae eius quas. Quibusdam voluptas minima distinctio ut quia eveniet. Laudantium eveniet esse quia ea consequatur distinctio.</p><p>Cum facere corporis animi eveniet omnis aliquid. Sed molestiae non in officiis neque saepe repellendus. Quos quo rerum soluta autem. Veritatis incidunt dolores voluptatem provident doloribus ratione est.</p><p>Et et consectetur ipsam aut. Illo quas eaque aperiam dolorem commodi pariatur est. Qui aut doloremque ab ab ut earum.</p><p>Voluptatem beatae eligendi corporis fugit nihil. Incidunt iste non soluta vero iste est quibusdam. Natus sed ab accusantium perspiciatis. Ab asperiores et inventore unde minus et. Voluptatem laborum aut et.</p><p>Autem fuga aut ut qui sed corrupti. Officia in explicabo aliquam pariatur dolores tempore. Aut voluptas tempore illum inventore sed sit. Porro consequatur accusamus atque consequuntur unde eos.</p><p>Perspiciatis inventore ipsa ipsum ab maiores. Qui aut qui accusantium magnam et.</p><p>Omnis voluptas ut aspernatur molestiae inventore. Ut accusamus fugit adipisci aperiam deserunt officia quis. Officiis ut commodi autem et alias rerum.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(17, 2, 3, 'Quas expedita ullam ducimus voluptate quasi qui.', 'enim-unde-et-non-fuga-a-vel', NULL, 'Voluptate in aut qui ipsum. Totam fuga necessitatibus aspernatur ratione.', '<p>A impedit blanditiis quam fugiat est. Quibusdam assumenda non fugiat totam dolorem perspiciatis. Reiciendis rerum rerum velit voluptatem sit.</p><p>Quo adipisci est est tempore voluptatibus quasi animi. Numquam ipsam suscipit saepe odio. Architecto optio eos commodi eaque aut alias. Nihil corrupti quae est quam et ratione.</p><p>Omnis harum aspernatur quibusdam rerum voluptatem necessitatibus rerum est. Aut ut omnis minus provident aliquam rerum. Ratione harum ea iusto rerum nemo voluptas inventore. Aliquid a laboriosam officiis.</p><p>Minima sunt molestiae vel debitis odit minima et. Aperiam magni optio veniam accusamus architecto. Quia et architecto unde molestiae doloremque.</p><p>A est et deserunt nostrum temporibus aut. Sapiente aut aut voluptas a ut enim amet quam. Veritatis porro dolores nihil dolores ratione.</p><p>Voluptatem dolorem qui voluptas id voluptas. In amet aliquam in labore omnis. Similique illo eum dolor vero qui. Eum vero nesciunt nemo dolorem impedit ut.</p><p>Eos omnis a voluptas aut. Sequi molestias ipsa natus reprehenderit. Similique enim est et in dolores veniam.</p><p>Voluptates quo tempora excepturi qui quasi libero. Voluptatibus et accusamus sit rerum excepturi. Sit enim aut accusantium reprehenderit eveniet.</p><p>Reiciendis commodi distinctio quasi mollitia est tempore ratione. Molestiae animi et eos dolores. Modi natus voluptates eveniet expedita et tenetur. Qui est et quibusdam laudantium.</p><p>In ut iure omnis itaque et. Ipsum dolor eligendi quibusdam. Perspiciatis nulla animi sint consequatur.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(18, 3, 1, 'Praesentium ut minima et.', 'maxime-dolor-maxime-quisquam-eum-neque-eum', NULL, 'Facere fugiat non amet est iste ea et. Quibusdam vitae dolor quasi quae assumenda aut tempore. Repellat aut libero inventore rerum sed maxime.', '<p>Assumenda possimus est consequuntur dolore doloribus est deleniti assumenda. Qui sed assumenda voluptas dolor.</p><p>Pariatur quasi ipsa minima itaque iure ut provident. Eius culpa eaque rem consequatur nesciunt et laborum. Temporibus deleniti ut aut aperiam quo voluptatem. Explicabo rerum voluptatem officia quia voluptas pariatur doloremque ut. Earum qui cum vero quos.</p><p>Soluta aspernatur ut autem ea ut. Et iusto vel eveniet aspernatur iusto omnis sunt nobis. Repudiandae rerum distinctio voluptas cupiditate distinctio ea autem. Ipsum perferendis quae illo laborum enim aut. Autem natus accusantium ipsam voluptatibus voluptatem commodi.</p><p>Officiis quam in officia commodi. In ipsa rerum numquam. Voluptatem neque tempore nulla sed voluptatem reprehenderit. Fugit quia sit sit eaque non.</p><p>Quam consequatur distinctio omnis delectus qui cupiditate sit id. Tempora sit dolore perferendis consequatur pariatur omnis. Tenetur non excepturi vel voluptas corrupti adipisci et.</p><p>Ut ipsum qui assumenda et dolores provident sed est. Omnis ipsum laborum officiis quam. Voluptatibus illo aut quidem magni.</p><p>Odio sed ex aut saepe. Dolorum temporibus ducimus voluptatum praesentium exercitationem totam.</p><p>Laborum molestiae modi ut. Eos blanditiis iure veniam et iure libero modi. Reiciendis earum ipsum quia dignissimos veniam dolor voluptatem.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(19, 1, 2, 'Pariatur consequatur a non dolores dolor.', 'consequatur-consequatur-repellendus-ut', NULL, 'Omnis illo voluptates recusandae illo quaerat voluptate. Minus eveniet error est aperiam temporibus. Ut sed qui laudantium molestiae.', '<p>Quae et necessitatibus qui tempora ipsam placeat ea. Ducimus similique tempore iste. Et itaque totam velit quia fugit nam alias. Quisquam consectetur voluptatem excepturi id voluptatem earum sunt autem.</p><p>Possimus excepturi voluptas omnis voluptas facilis architecto. Eveniet laudantium culpa sed facere rerum. Ut quos tenetur architecto hic.</p><p>Facilis facere et id. Doloremque tempore nulla quia ut ut aperiam eius. Quia sunt consequatur occaecati blanditiis. Ad excepturi qui nemo.</p><p>Aut ex tenetur id quo. Repudiandae omnis distinctio minima alias omnis voluptatem. Nisi rerum qui officia recusandae ipsum. Nemo asperiores minus temporibus in necessitatibus quis aliquid.</p><p>Ducimus ut qui rerum ea. Consequatur hic exercitationem dolorem qui vitae labore quaerat. Quam qui quis totam. Vel fugit excepturi quaerat nisi recusandae incidunt.</p><p>Quis deleniti voluptatem aut a iste nesciunt facere. Facere totam pariatur quos dolor blanditiis dolore. Rerum repudiandae iusto voluptas. Dolores ab quo quo culpa.</p><p>Velit sed non tempore optio dolorem consectetur. Alias eveniet amet facilis voluptates quo. Quis tenetur sapiente et assumenda quibusdam facilis sapiente. Deleniti reprehenderit ullam consectetur earum sed quibusdam eaque nihil.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43'),
(20, 2, 3, 'Consequatur vero omnis.', 'iure-et-illo-eos-voluptatum', NULL, 'Aut dolorem laudantium molestias rerum iusto et. Unde explicabo itaque et minus. Adipisci nesciunt deserunt iste in.', '<p>Officia sint ea rerum excepturi sit. Sapiente quia cumque nihil architecto eos. Reprehenderit quaerat minus et expedita nisi provident.</p><p>Est qui debitis quaerat et explicabo. Dolorem blanditiis blanditiis dolor nam ad maxime aut. Sint minus vel et ad corporis culpa consectetur ex. Sapiente omnis architecto molestiae eaque rerum aut sed.</p><p>Quis animi fugiat est rem illo corporis. Consequatur est qui laboriosam ipsam. Maiores illo dicta provident dicta dolorem amet suscipit. Adipisci est sint perspiciatis dolorum nihil tenetur enim.</p><p>Sit eligendi iusto facere eos a. Est rem ut expedita. Dicta dolor cupiditate voluptates quo nihil error et.</p><p>Ut et omnis excepturi reprehenderit laudantium. At cupiditate qui aliquam reiciendis. Molestias velit qui et qui illo. Vero nam fugit illo cum. Dolore laborum aut enim sed minus.</p>', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Muhammad Fauzun Naja', 'Fauzun Naja', 'bangnaja200@gmail.com', NULL, '$2y$10$GS47eVJiQnJnwt99nJLUme1HxzGxEtKd2rohFzMsS1v8nWTxFPX46', NULL, '2021-12-28 21:46:43', '2021-12-28 21:46:43', 1),
(2, 'Padma Chelsea Palastri M.Pd', 'hnasyiah', 'whakim@example.org', '2021-12-28 21:46:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's2dWVhDfFSc2qdlml8pCzq6tSUZqviDGLHqH7LVKcqfDJ0V6KkoqQVmdBOHh', '2021-12-28 21:46:43', '2021-12-28 21:46:43', 0),
(3, 'Nilam Yuniar M.Kom.', 'damanik.amalia', 'rajasa.ella@example.net', '2021-12-28 21:46:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XG888t9BzK', '2021-12-28 21:46:43', '2021-12-28 21:46:43', 0),
(4, 'Chelsea Ida Nasyiah S.Sos', 'thamrin.raisa', 'banawa03@example.net', '2021-12-28 21:46:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YpDUVVqBCa', '2021-12-28 21:46:43', '2021-12-28 21:46:43', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
