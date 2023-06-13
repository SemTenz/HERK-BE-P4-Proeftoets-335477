<?php

class Leerling extends BaseController
{
    private $LeerlingModel;

    public function __construct()
    {
        $this->LeerlingModel = $this->model('LeerlingModel');
    }

    public function overzichtrijlespakketen()
    {
        $result = $this->LeerlingModel->getLeerling();
        $rows = "";
        foreach ($result as $Leerling) {
            $rows .= "<tr>
                        <td>$Leerling->voornaam $Leerling->tussenvoegsel $Leerling->Achternaam</td>
                        <td>$Leerling->Mobiel</td>                  
                      </tr>";
        }
        
        $data = [
            'title' => 'Overzicht RijlesPakketen Leerlingen',
            'rows' => $rows
        ];

        $this->view('Leerling/overzichtrijlespakketen', $data);
    }
}