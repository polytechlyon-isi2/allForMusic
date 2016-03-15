create database if not exists allformusic character set utf8 collate utf8_unicode_ci;
use allformusic;

grant all privileges on allformusic.* to 'allformusic_user'@'localhost' identified by 'secret';
