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
        $sql = "SELECT ET.voornaam, ET.tussenvoegsel, ET.Achternaam, E.Mobiel from Leerling E 
        inner join LeerlingPerLesPakket exp ON exp.LeerlingId=E.Id
        inner join LesPakket ET ON exp.LesPakketId=ET.Id;";

        $this->db->query($sql);
        return $this->db->resultSet();
    }

}