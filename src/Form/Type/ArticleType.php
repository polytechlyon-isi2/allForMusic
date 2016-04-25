<?php

namespace allformusic\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', 'text')
            ->add('desc', 'textarea')
            ->add('price', 'text')
            ->add('cat', 'choice', array(
                'choices' => array('Bass' => 'Bass', 'Guitare' => 'Guitare', 'Piano' => 'Piano', 'Batterie' => 'Batterie', 'Saxophone' => 'Saxophone', 'Violon' => 'Violon', 'Trompette' => 'Trompette', 'Tambour' => 'Tambour')
            ))
            ->add('dispo', 'choice', array(
                'choices' => array('En stock' => 'En stock', 'Pas disponible' => 'Pas disponible')
            ));
    }

    public function getName()
    {
        return 'article';
    }
}