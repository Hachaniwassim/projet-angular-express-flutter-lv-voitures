class Voiturealouer{
  String _marque;
  String _modele;
  String _couleur;
  DateTime _datederniereentretien;

  Voiturealouer(
      this._marque, this._modele, this._couleur, this._datederniereentretien);

  DateTime get datederniereentretien => _datederniereentretien;

  set datederniereentretien(DateTime value) {
    _datederniereentretien = value;
  }

  String get couleur => _couleur;

  set couleur(String value) {
    _couleur = value;
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