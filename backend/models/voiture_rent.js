const mongoose = require('mongoose');

const voitureSchema = new mongoose.Schema({
  id: {type: number, required: true},
  title: {type: string, required: true},
  description: {type: string, required: true},
  image: {type: string, required: true},
  Kilometrage: {type: number, required: true},
  price: {type: number, required: true},
});

module.exports = mongoose.model('voiture', voitureSchema);