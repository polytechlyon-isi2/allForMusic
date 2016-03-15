drop table if exists t_article;

create table t_article (
    art_id integer not null primary key auto_increment,
    art_name varchar(100) not null,
    art_desc varchar(2000) not null,
    art_price integer not null,
    art_dispo varchar(100) not null,
    art_cat varchar(100) COLLATE utf8_unicode_ci NOT NULL
) engine=innodb character set utf8 collate utf8_unicode_ci;