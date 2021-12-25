const Team = require('./../models/Team');

// get all  Team
exports.all = (req, res) => {
 Team.find()
    .then(teams => res.status(200).json(teams))
    .catch(err => res.status(400).json({error: err.message}));
};

// get a  Team by id
exports.get = (req, res, next) => {
  Team.findOne({ _id: req.params.id })
      .then(team => res.status(200).json(team))
      .catch(error => res.status(404).json({ error }));
  };

  // store a new  Team
exports.create = (req, res, next) => {
  const team = new  Team({
    ...req.body
  });
 team.save()
    .then(() => res.status(201).json({ message: ' Team created  !'}))
    .catch(error => res.status(400).json({ error }));
};

// update a  Team by id
exports.update = (req, res, next) => {
    Team.updateOne({ _id: req.params.id }, { ...req.body, _id: req.params.id })
    .then(() => res.status(200).json({ message: 'Team updated !'}))
    .catch(error => res.status(400).json({ error }));
};

// delete a Team by id
exports.delete = (req, res, next) => {
    Team.deleteOne({ _id: req.params.id })
    .then(() => res.status(200).json({ message: ' Team deleted !'}))
    .catch(error => res.status(400).json({ error }));
};
