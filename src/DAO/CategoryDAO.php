<?php

namespace allformusic\DAO;

use allformusic\Domain\Category;

class CategoryDAO extends DAO
{
    /**
     * Return a list of all articles, sorted by date (most recent first).
     */
    public function findAll() {
        $sql = "select * from t_category order by cat_id asc";
        $result = $this->getDb()->fetchAll($sql);

        // Convert query result to an array of domain objects
        $categorys = array();
        foreach ($result as $row) {
            $categoryId = $row['cat_id'];
            $categorys[$categoryId] = $this->buildDomainObject($row);
        }
        return $categorys;
    }

    /**
     * Returns an article matching the supplied id.
     */
    public function find($id) {
        $sql = "select * from t_category where cat_id=?";
        $row = $this->getDb()->fetchAssoc($sql, array($id));

        if ($row)
            return $this->buildDomainObject($row);
        else
            throw new \Exception("No category matching id " . $id);
    }

    /**
     * Creates an Article object based on a DB row.
     */
    protected function buildDomainObject($row) {
        $category = new Category();
        $category->setId($row['cat_id']);
        $category->setName($row['cat_name']);
        return $category;
    }
}