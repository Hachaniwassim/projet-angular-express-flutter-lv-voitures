  
    const mongoose = require('mongoose');
    const voitureSchema = new mongoose.Schema({
    matricule: {type: String, required: true},
    modele: {type: String, required: true},
    marque: {type: String, required: true},
    puissance: {type: String, required: true},
    kilometrage: {type: String, required: true},
    prix: {type: Number, required: true},
      });
      
    module.exports = mongoose.model('Voiture', voitureSchema,'voitures');