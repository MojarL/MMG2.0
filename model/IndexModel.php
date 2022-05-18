<?php

class IndexModel{
    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=v2;charset=utf8', 'root', '');//'u458991335_MMG', 'V@I^*eIpmq4^' //'root', ''
    }

    function getBandsLike($str){
        $query = $this->db->prepare("SELECT * FROM bandas AS b 
                                    INNER JOIN discos AS d 
                                    ON b.id_banda = d.bandas_id_banda 
                                    where nombre_banda LIKE '%$str%' 
                                    OR nombre_disco LIKE '%$str%' 
                                    GROUP BY bandas_id_banda
                                    ORDER BY nombre_banda LIMIT 10
                                    ");
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    function getBandsPage($id, $until){
        $query = $this->db->prepare("SELECT * FROM bandas LIMIT $id,$until");
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }
}