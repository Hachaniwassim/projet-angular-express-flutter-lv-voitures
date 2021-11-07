import 'package:mobile/classes/utilisateur.dart';

class Admin extends Utilisateur{
  String? _email;
  String? _mot_de_passe;

  Admin(String nom, String prenom, String tel, String adresse)
      : super(nom, prenom, tel, adresse);




}