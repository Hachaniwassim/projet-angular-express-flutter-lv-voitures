class Utilisateur {
  String _nom;
  String _prenom;
  String _tel;
  String _adresse;

  Utilisateur(this._nom, this._prenom, this._tel, this._adresse);

  String get adresse => _adresse;

  set adresse(String value) {
    _adresse = value;
  }

  String get tel => _tel;

  set tel(String value) {
    _tel = value;
  }

  String get prenom => _prenom;

  set prenom(String value) {
    _prenom = value;
  }

  String get nom => _nom;

  set nom(String value) {
    _nom = value;
  }
}
