const Client = require('./../models/Client');

// get all a
exports.all = (req, res) => {
  Client.find()
    .then(clients=> res.status(200).json(clients))
    .catch(err => res.status(400).json({error: err.message}));
};

// get by id
exports.get = (req, res, next) => {
    Client.findOne({ _id: req.params.id })
      .then(client => res.status(200).json(client))
      .catch(error => res.status(404).json({ error }));
  };

  // store a new Client
exports.create = (req, res, next) => {
  const client= new Client({
    ...req.body
  });
 client.save()
    .then(() => res.status(201).json({ message: ' Client created  !'}))
    .catch(error => res.status(400).json({ error }));
};

// update a Client by id
exports.update = (req, res, next) => {
    Client.updateOne({ _id: req.params.id }, { ...req.body, _id: req.params.id })
    .then(() => res.status(200).json({ message: 'Client updated !'}))
    .catch(error => res.status(400).json({ error }));
};

// delete a Client by id
exports.delete = (req, res, next) => {
    Client.deleteOne({ _id: req.params.id })
    .then(() => res.status(200).json({ message: 'Client deleted !'}))
    .catch(error => res.status(400).json({ error }));
};
