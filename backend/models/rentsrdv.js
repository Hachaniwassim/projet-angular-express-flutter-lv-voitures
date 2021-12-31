const mongoose = require('mongoose');

const voitureSchema = new mongoose.Schema({
    Nom_Voiture: {type: String, required: true},
    Nom_utilisateur: {type: String, required: true},
    email: {type: String, required: true},
    Date_debut: {type: String, required: true},
    Date_fin: {type: String, required: true},
});

module.exports = mongoose.model('Rentsrdv', voitureSchema , 'rentsrdvs');