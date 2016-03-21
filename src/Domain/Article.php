<?php

namespace allformusic\Domain;

class Article 
{

    private $id;

    private $name;

    private $desc;
    
    private $price;
        
    private $dispo;

    private $cat;


    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function getName() {
        return $this->name;
    }

    public function setName($name) {
        $this->name = $name;
    }

    public function getDesc() {
        return $this->desc;
    }

    public function setDesc($desc) {
        $this->desc = $desc;
    }
    
    public function getPrice() {
        return $this->price;
    }

    public function setPrice($price) {
        $this->price = $price;
    }
        public function getDispo() {
        return $this->dispo;
    }

    public function setDispo($dispo) {
        $this->dispo = $dispo;
    }
    
        public function getCat() {
        return $this->cat;
    }

    public function setCat($cat) {
        $this->cat = $cat;
    }
}