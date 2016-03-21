<?php

namespace allformusic\Domain;

class Category 
{

    private $id;

    private $name;

    private $img;

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

    public function getImg() {
        return $this->img;
    }

    public function setImg($img) {
        $this->img = $img;
    }
}