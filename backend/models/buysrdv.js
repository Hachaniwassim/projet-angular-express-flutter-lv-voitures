const mongoose = require('mongoose');

const buysrdvSchema = new mongoose.Schema({
    Nom_Voiture: {type: String, required: true},
    Nom_utilisateur: {type: String, required: true},
    email: {type: String, required: true},
    Date_rdv: {type: String, required: true},
    localisation: {type: String, required: true},
});

module.exports = mongoose.model('Buysrdv', buysrdvSchema , 'buysrdvs');