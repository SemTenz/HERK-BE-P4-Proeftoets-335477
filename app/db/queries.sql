select L.voornaam, L.tussenvoegsel, L.Achternaam, L.Mobiel, LP.AantalLessen, LP.Prijs, lpl.StartDatumRijlessen, lpl.DatumRijbewijsBehaald from Leerling L 
inner join LeerlingPerLesPakket lpl ON lpl.LeerlingId=L.Id
inner join LesPakket LP ON lpl.LesPakketId=LP.Id;
