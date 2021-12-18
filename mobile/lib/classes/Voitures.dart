
class Voitures{
    int _matricule;
    String _marque;
    String _modele;
    String _puissance;
    String  _kilometrage;
    bool _etat;
    String _prix;
    int _quantite;
    String _couleur;
    DateTime _date_dernier_entretien;

    Voitures(
      this._matricule,
      this._marque,
      this._modele,
      this._puissance,
      this._kilometrage,
      this._etat,
      this._prix,
      this._quantite,
      this._couleur,
      this._date_dernier_entretien);

    DateTime get date_dernier_entretien => _date_dernier_entretien;

  set date_dernier_entretien(DateTime value) {
    _date_dernier_entretien = value;
  }

  String get couleur => _couleur;

  set couleur(String value) {
    _couleur = value;
  }

  int get quantite => _quantite;

  set quantite(int value) {
    _quantite = value;
  }

   String get prix => _prix;

  set prix( String value) {
    _prix = value;
  }

  bool get etat => _etat;

  set etat(bool value) {
    _etat = value;
  }

    String get kilometrage => _kilometrage;

  set kilometrage( String value) {
    _kilometrage = value;
  }

  String get puissance => _puissance;

  set puissance(String value) {
    _puissance = value;
  }

  String get modele => _modele;

  set modele(String value) {
    _modele = value;
  }

  String get marque => _marque;

  set marque(String value) {
    _marque = value;
  }

  int get matricule => _matricule;

  set matricule(int value) {
    _matricule = value;
  }
}