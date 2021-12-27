const Vendre = require('./../models/Vendre');


// get all 
exports.all = (req, res) => {
  Vendre.find()
    .then( Vendres => res.status(200).json( Vendres))
    .catch(err => res.status(400).json({error: err.message}));
};

// get  by id
exports.get = (req, res, next) => {
  Vendre.findOne({ _id: req.params.id })
      .then( Vendre => res.status(200).json( Vendre))
      .catch(error => res.status(404).json({ error }));
  };

  // store a new 
exports.create = (req, res, next) => {
  const vendre = new  Vendre({
    ...req.body
  });
  vendre.save()
    .then(() => res.status(201).json({ message: 'voiteure a Vendre  created  !'}))
    .catch(error => res.status(400).json({ error }));
};

// update 
exports.update = (req, res, next) => {
  Vendre.updateOne({ _id: req.params.id }, { ...req.body, _id: req.params.id })
    .then(() => res.status(200).json({ message: 'voiture a Vendre updated !'}))
    .catch(error => res.status(400).json({ error }));
};

// delete  by id
exports.delete = (req, res, next) => {
  Vendre.deleteOne({ _id: req.params.id })
    .then(() => res.status(200).json({ message: 'Vendre  deleted !'}))
    .catch(error => res.status(400).json({ error }));
};
