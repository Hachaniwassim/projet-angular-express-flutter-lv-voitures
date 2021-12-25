const Voiture = require('./../models/voiture_rent');


// get all  rent cars
router.get('/', (req, res) => {
    Voiture.find()
      .then(voitures => res.status(200).json(voitures))
      .catch(err => res.status(400).json({error: err.message}));
  });
  // get a rent car by id
  router.get('/:id', (req, res, next) => {
      Voiture.findOne({ _id: req.params.id })
          .then(voiture => res.status(200).json(voiture))
          .catch(error => res.status(404).json({ error }));
      });
      // store a new  rent car
  router.post('/', (req, res, next) => {
      const voiture = new Voiture({
        ...req.body
      });
      course.save()
        .then(() => res.status(201).json({ message: 'Car created  !'}))
        .catch(error => res.status(400).json({ error }));
    });
    // update a rent car by id
  router.put('/:id', (req, res, next) => {
      voiture.updateOne({ _id: req.params.id }, { ...req.body, _id: req.params.id })
        .then(() => res.status(200).json({ message: 'Car updated !'}))
        .catch(error => res.status(400).json({ error }));
    });
    
    // delete a rent car by id
  router.delete('/:id', (req, res, next) => {
      Voiture.deleteOne({ _id: req.params.id })
        .then(() => res.status(200).json({ message: 'Car deleted !'}))
        .catch(error => res.status(400).json({ error }));
    });