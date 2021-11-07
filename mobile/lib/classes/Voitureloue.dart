class Voitureloue{
  String  _marque;
  String _modele;
  String _couleur;
  String _kilometrage;
  DateTime _datedernierentretien;


  Voitureloue(this._marque, this._modele, this._couleur, this._kilometrage,
      this._datedernierentretien);


  String get couleur => _couleur;

  set couleur(String value) {
    _couleur = value;
  }

  DateTime get datedernierentretien => _datedernierentretien;

  set datedernierentretien(DateTime value) {
    _datedernierentretien = value;
  }

  String get kilometrage => _kilometrage;

  set kilometrage(String value) {
    _kilometrage = value;
  }

  String get modele => _modele;

  set modele(String value) {
    _modele = value;
  }

  String get marque => _marque;

  set marque(String value) {
    _marque = value;
  }
}