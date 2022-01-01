const Buysrdv = require('./../models/Buysrdv');


// get all 
exports.all = (req, res) => {
    Buysrdv.find()
    .then(  buysrdvs => res.status(200).json( buysrdvs))
    .catch(err => res.status(400).json({error: err.message}));
};

// get  by id
exports.get = (req, res, next) => {
    Buysrdv.findOne({ _id: req.params.id })
      .then(  buysrdv => res.status(200).json(  buysrdv))
      .catch(error => res.status(404).json({ error }));
  };

  // store a new 
exports.create = (req, res, next) => {
  const buysrdv = new  Buysrdv({
    ...req.body
  });
  buysrdv.save()
    .then(() => res.status(201).json({ message: 'rendez-vous  created  !'}))
    .catch(error => res.status(400).json({ error }));
};

// update 
exports.update = (req, res, next) => {
    Buysrdv.updateOne({ _id: req.params.id }, { ...req.body, _id: req.params.id })
    .then(() => res.status(200).json({ message: 'rendez-vous updated !'}))
    .catch(error => res.status(400).json({ error }));
};

// delete  by id
exports.delete = (req, res, next) => {
    Buysrdv.deleteOne({ _id: req.params.id })
    .then(() => res.status(200).json({ message: 'rendez-vous deleted !'}))
    .catch(error => res.status(400).json({ error }));
};
