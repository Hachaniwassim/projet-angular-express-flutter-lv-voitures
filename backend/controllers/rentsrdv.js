const Voiture = require('./../models/rentsrdv');


// get all 
exports.all = (req, res) => {
  Voiture.find()
    .then( voitures => res.status(200).json( voitures))
    .catch(err => res.status(400).json({error: err.message}));
};

// get  by id
exports.get = (req, res, next) => {
  Voiture.findOne({ _id: req.params.id })
      .then( voiture => res.status(200).json( voiture))
      .catch(error => res.status(404).json({ error }));
  };

  // store a new 
exports.create = (req, res, next) => {
  const voiture = new  Voiture({
    ...req.body
  });
  voiture.save()
    .then(() => res.status(201).json({ message: 'rendez-vous  created  !'}))
    .catch(error => res.status(400).json({ error }));
};

// update 
exports.update = (req, res, next) => {
  Voiture.updateOne({ _id: req.params.id }, { ...req.body, _id: req.params.id })
    .then(() => res.status(200).json({ message: 'rendez-vous updated !'}))
    .catch(error => res.status(400).json({ error }));
};

// delete  by id
exports.delete = (req, res, next) => {
  Voiture.deleteOne({ _id: req.params.id })
    .then(() => res.status(200).json({ message: 'rendez-vous deleted !'}))
    .catch(error => res.status(400).json({ error }));
};
