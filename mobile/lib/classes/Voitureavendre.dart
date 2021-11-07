class Voitureavendre {
  String _matricule;
  String _modele;
  String _couleur;
  DateTime _datedernierentretien;

  Voitureavendre(
      this._matricule, this._modele, this._couleur, this._datedernierentretien);

  DateTime get datedernierentretien => _datedernierentretien;

  set datedernierentretien(DateTime value) {
    _datedernierentretien = value;
  }

  String get couleur => _couleur;

  set couleur(String value) {
    _couleur = value;
  }

  String get modele => _modele;

  set modele(String value) {
    _modele = value;
  }

  String get matricule => _matricule;

  set matricule(String value) {
    _matricule = value;
  }
}