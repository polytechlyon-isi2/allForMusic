<?php

// Home page
$app->get('/', function () use ($app) {
    $categorys = $app['dao.category']->findAll();
    return $app['twig']->render('index.html.twig', array('categorys' => $categorys));
})->bind('home');

// Article details with comments
$app->get('/article/{id}', function ($id) use ($app) {
    $article = $app['dao.article']->find($id);
    return $app['twig']->render('article.html.twig', array('article' => $article));
})->bind('article');;

$app->get('/category/{cat}', function ($cat) use ($app) {
    $articles = $app['dao.article']->findCat($cat);
    return $app['twig']->render('category.html.twig', array('articles' => $articles));
})->bind('category');;