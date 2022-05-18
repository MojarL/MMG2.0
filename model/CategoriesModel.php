<?php

class CategoriesModel{
    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=v2;charset=utf8', 'root', '');//'u458991335_MMG', 'V@I^*eIpmq4^' //'root', ''
    }

    function countBandas(){
        $query = $this->db->prepare("SELECT COUNT(*) AS suma FROM bandas");
        $query->execute();
        return $query->fetch(PDO::FETCH_OBJ);
    }

    function getBandas($page, $until){
        $query = $this->db->prepare("SELECT * FROM bandas AS b 
                                    INNER JOIN discos AS d 
                                    ON b.id_banda = d.bandas_id_banda 
                                    LIMIT $page,$until"); 

        //SELECT * FROM bandas AS b INNER JOIN discos AS d ON b.id_banda = d.bandas_id_banda;
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    function getBandsAZ($page, $until, $char){
        $query = $this->db->prepare("SELECT * FROM bandas AS b 
                                    INNER JOIN discos AS d
                                    ON b.id_banda = d.bandas_id_banda 
                                    WHERE b.nombre_banda LIKE '$char%'
                                    ORDER BY b.nombre_banda
                                    "); 
                                    
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    function getDiscsAZ($page, $until){
        $query = $this->db->prepare("SELECT * FROM bandas AS b 
                                    INNER JOIN discos AS d 
                                    ON b.id_banda = d.bandas_id_banda 
                                    LIMIT $page,$until"); 
                                    

        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    function getGenresAZ($page, $until){
        $query = $this->db->prepare("SELECT * FROM bandas AS b 
                                    INNER JOIN discos AS d 
                                    ON b.id_banda = d.bandas_id_banda 
                                    LIMIT $page,$until"); 
                                    
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    function getPopularDiscs($page, $until){
        $query = $this->db->prepare("SELECT * FROM bandas AS b 
                                    INNER JOIN discos AS d 
                                    ON b.id_banda = d.bandas_id_banda 
                                    LIMIT $page,$until"); 
                                    
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

}