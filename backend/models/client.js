const mongoose = require('mongoose');

const clientSchema = new mongoose.Schema({
  name: {type: String, required: true},
  mail: {type: String, required: true},
 description: {type: String, required: true},
 image: {type: String, required: true},
 city: {type: String, required: true},
 job: {type: String, required: true}
});


module.exports = mongoose.model('Client', clientSchema );