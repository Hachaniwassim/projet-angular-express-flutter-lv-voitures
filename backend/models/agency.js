const mongoose = require('mongoose');

const agencySchema = new mongoose.Schema({
  owner: {type: String, required: true},
  description: {type: String, required: true},
  image: {type: String, required: true},
  location: {type: String, required: true},
  date_creation: {type: String, required: true}
});

module.exports = mongoose.model('Agency', agencySchema ,'agencys');