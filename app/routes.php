<?php
use Symfony\Component\HttpFoundation\Request;
use allformusic\Form\Type\UserType;
use allformusic\Domain\User;


// Home page
$app->get('/', "allformusic\Controller\HomeController::homeAction")->bind('home');

$app->match('/article/{id}', "allformusic\Controller\HomeController::articleAction")->bind('article');;

$app->get('/category/{cat}', "allformusic\Controller\HomeController::categoryAction")->bind('category');;

$app->get('/login', "allformusic\Controller\HomeController::loginAction")->bind('login');

$app->match('/signin', "allformusic\Controller\HomeController::signinAction")->bind('signin');

$app->get('/cart', "allformusic\Controller\HomeController::cartAction")->bind('cart');

$app->match('/article/add/{id}', "allformusic\Controller\HomeController::addCartAction")->bind('add');

$app->match('/article/delete/{id}', "allformusic\Controller\HomeController::deleteCartAction")->bind('delete');

$app->get('/admin/article/{id}/delete', "allformusic\Controller\AdminController::deleteArticleAction")->bind('admin_article_delete');
    
$app->get('/admin', "allformusic\Controller\AdminController::indexAction")->bind('admin');
    
$app->match('/admin/article/{id}/edit', "allformusic\Controller\AdminController::editArticleAction")->bind('admin_article_edit');

$app->match('/admin/article/add', "allformusic\Controller\AdminController::addArticleAction")->bind('admin_article_add');

$app->match('/admin/user/add', "allformusic\Controller\AdminController::addUserAction")->bind('admin_user_add');

$app->get('/admin/user/{id}/delete', "allformusic\Controller\AdminController::deleteUserAction")->bind('admin_user_delete');

$app->match('/admin/user/{id}/edit', "allformusic\Controller\AdminController::editUserAction")->bind('admin_user_edit');