import 'package:mobile/classes/utilisateur.dart';

class Client extends Utilisateur{
  String? _email;
  String? _mot_de_passe;

  Client(String nom, String prenom, String tel, String adresse)
      : super(nom, prenom, tel, adresse);




}