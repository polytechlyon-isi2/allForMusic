<?php
use Symfony\Component\HttpFoundation\Request;
use allformusic\Form\Type\UserType;
use allformusic\Domain\User;


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

// Login form
$app->get('/login', function(Request $request) use ($app) {
    return $app['twig']->render('login.html.twig', array(
        'error'         => $app['security.last_error']($request),
        'last_username' => $app['session']->get('_security.last_username'),
    ));
})->bind('login');

$app->match('/signin', function(Request $request) use ($app) {
    $user = new User();
    $userForm = $app['form.factory']->create(new UserType(), $user);
    $userForm->handleRequest($request);
    if ($userForm->isSubmitted() && $userForm->isValid()) {
        // generate a random salt value
        $salt = substr(md5(time()), 0, 23);
        $user->setSalt($salt);
        $plainPassword = $user->getPassword();
        // find the default encoder
        $encoder = $app['security.encoder.digest'];
        // compute the encoded password
        $password = $encoder->encodePassword($plainPassword, $user->getSalt());
        $user->setPassword($password); 
        $app['dao.user']->save($user);
        $app['session']->getFlashBag()->add('success', 'The user was successfully created.');
    }
    return $app['twig']->render('signin.html.twig', array(
        'title' => 'New user',
        'userForm' => $userForm->createView()));
})->bind('signin');