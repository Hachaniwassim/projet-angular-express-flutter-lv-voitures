class Voitures{
    Long? _matricule;
    String? _marque;
    String? _modele;
    String? _puissance;
    Float? _kilometrage;
    Boolean? _etat;
    Float? _prix;
    int? _quantite;
    String? _couleur;
    Date? _date_dernier_entretien;

    Voitures( this._matricule,this._marque,this._modele,this._puissance,this._kilometrage,this._etat, this._prix,this._quantite,this._couleur,this._date_dernier_entretien);
   
    // getter and setter matricule voiture 

     Long get matricule => _matricule ;

     set matricule(Long value)
     {
         _matricule =value;
     }

   // getter and setter marque voiture 
     String get marque => _marque.toString();

     set marque(String value){
         _marque = value;
     }
     // getter and setter modele voiture 
     String get modele => _modele;

     set modele(String value){
         _modele= value;
     }
     // getter and setter puissance voiture 
     String get puissance => _puissance;

     set puissance(String value){
         _puissance= value;
     }
     // getter and setter kilometrage voiture 
     Float get kilometrage => _kilometrage;

     set kilometrage(Float value){
         _kilometrage = value;
     }

    // getter and setter etat voiture 

     Boolean get etat => _etat;

     set etat(Boolean value){
         _etat= value;
     }
     // getter and setter prix voiture 
     Float get prix => _prix;
     
     set prix(Float value){
         _prix= value;
     }
     // getter and setter quantité voiture 
     int get quantite => _quantite;

     set quantite(int value){
         quantité = value;
     }
     // getter and setter couleur voiture 
     String get couleur =>_couleur;

     set couleur(String value){
         couleur = value;
     }
     // getter and setter   date_dernier_entretien marque voiture 
     Date get date_dernier_entretien => _date_dernier_entretien;
    
     set date_dernier_entretien(Date value){
         date_dernier_entretien = value;
     }



}