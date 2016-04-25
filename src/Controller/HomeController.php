<?php

namespace allformusic\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Request;
use allformusic\Domain\User;
use allformusic\Form\Type\UserType;
use allformusic\Form\Type\SigninType;

class HomeController {

    
    public function homeAction(Application $app) {
        $categorys = $app['dao.category']->findAll();
    return $app['twig']->render('index.html.twig', array('categorys' => $categorys));
    }

    public function articleAction($id,Request $request, Application $app) {
    $article = $app['dao.article']->find($id);
    return $app['twig']->render('article.html.twig', array('article' => $article));
    }
    
    public function categoryAction($cat, Application $app) {
    $articles = $app['dao.article']->findCat($cat);
    return $app['twig']->render('category.html.twig', array('articles' => $articles));
    }
    
    public function loginAction(Request $request, Application $app) {
    return $app['twig']->render('login.html.twig', array(
        'error'         => $app['security.last_error']($request),
        'last_username' => $app['session']->get('_security.last_username'),
    ));
    }
    
    public function signinAction(Request $request, Application $app) {
    $user = new User();
    $userForm = $app['form.factory']->create(new SigninType(), $user);
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
    return $app['twig']->render('user_form.html.twig', array(
        'title' => 'New user',
        'userForm' => $userForm->createView()));
    }
    
    public function cartAction(Request $request, Application $app) {
		return $app['twig']->render('cart.html.twig');
	}
    
    public function addCartAction($id, Request $request, Application $app) {
		$cart = $app['session']->get('shoppingCart');
		$article = $app['dao.article']->find($id);
        if(!empty($cart[$id])){
			$app['session']->getFlashBag()->add('error', 'Article déjà dans le panier.');
		}
        if($article->getDispo()=='Pas disponible'){
			$app['session']->getFlashBag()->add('error', 'Article non disponible');
		}
		else{
			$cart[$id]=$article;
			$app['session']->getFlashBag()->add('success', 'Article ajouté au panier.');

		$app['session']->set('shoppingCart', $cart);
		$prices = array_map(function($b) {
			return is_object($b) ? $b->getPrice() : $b['price'];
		}, $cart);
		$app['session']->set('shoppingCartAmount', array_sum($prices));
        }
		return $this->articleAction($id, $request, $app);
	}
    
    
    
    public function deleteCartAction($id, Request $request, Application $app) {
		$cart = $app['session']->get('shoppingCart');
		$article = $app['dao.article']->find($id);
			unset($cart[$id]);
			$app['session']->getFlashBag()->add('success', 'Article supprimé.');
		$app['session']->set('shoppingCart', $cart);        
		$prices = array_map(function($b) {
			return is_object($b) ? $b->getPrice() : $b['price'];
		}, $cart);
		$app['session']->set('shoppingCartAmount', array_sum($prices));
		return $this->cartAction($request, $app);
	}
    
    
    
    
    
    
}