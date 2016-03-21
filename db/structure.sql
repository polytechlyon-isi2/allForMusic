drop table if exists t_article;

CREATE TABLE `t_article` (
  `art_id` int(11) NOT NULL,
  `art_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_desc` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `art_price` int(11) NOT NULL,
  `art_dispo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_cat` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;