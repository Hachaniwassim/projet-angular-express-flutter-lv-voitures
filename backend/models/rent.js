const mongoose = require('mongoose');

const voitureSchema = new mongoose.Schema({
  id: {type: Number, required: true},
  title: {type: String, required: true},
  description: {type: String, required: true},
  image: {type: String, required: true},
  Kilometrage: {type: String, required: true},
  price: {type: String, required: true},
});

module.exports = mongoose.model('Rent', voitureSchema);