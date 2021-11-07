import 'dart:ffi';

import 'package:mobile/classes/Voitures.dart';

class Voiturealouer extends Voitures{
  Voiturealouer(int matricule, String marque, String modele, String puissance, Float kilometrage, bool etat, Float prix, int quantite, String couleur, DateTime date_dernier_entretien)
      : super(matricule, marque, modele, puissance, kilometrage, etat, prix, quantite, couleur, date_dernier_entretien);
  
}