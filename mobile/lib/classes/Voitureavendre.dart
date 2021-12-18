import 'dart:ffi';

import 'package:mobile/classes/Voitures.dart';

class Voitureavendre extends Voitures {
  Voitureavendre(int matricule, String marque, String modele, String puissance, String kilometrage, bool etat, String prix, int quantite, String couleur, DateTime date_dernier_entretien)
  : super(matricule, marque, modele, puissance, kilometrage, etat, prix, quantite, couleur, date_dernier_entretien);
}