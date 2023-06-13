<?php

class LeerlingModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getLeerling()
    {
        $sql = "SELECT L.voornaam, L.tussenvoegsel, L.Achternaam, L.Mobiel from Leerling L 
        inner join LeerlingPerLesPakket lpl ON lpl.LeerlingId=L.Id
        inner join LesPakket L ON lpl.LesPakketId=L.Id;";

        $this->db->query($sql);
        return $this->db->resultSet();
    }

}