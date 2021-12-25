const Agency = require('./../models/Agency');

// get all agencys
exports.all = (req, res) => {
  Agency.find()
    .then(agencys => res.status(200).json(agencys))
    .catch(err => res.status(400).json({error: err.message}));
};

// get a agency by id
exports.get = (req, res, next) => {
  Agency.findOne({ _id: req.params.id })
      .then(agency => res.status(200).json(agency))
      .catch(error => res.status(404).json({ error }));
  };

  // store a new agency
exports.create = (req, res, next) => {
  const agency = new Agency({
    ...req.body
  });
 agency.save()
    .then(() => res.status(201).json({ message: ' Agency created  !'}))
    .catch(error => res.status(400).json({ error }));
};

// update a agency by id
exports.update = (req, res, next) => {
  Agency.updateOne({ _id: req.params.id }, { ...req.body, _id: req.params.id })
    .then(() => res.status(200).json({ message: 'Agency updated !'}))
    .catch(error => res.status(400).json({ error }));
};

// delete a agency by id
exports.delete = (req, res, next) => {
  Agency.deleteOne({ _id: req.params.id })
    .then(() => res.status(200).json({ message: 'Agency deleted !'}))
    .catch(error => res.status(400).json({ error }));
};
