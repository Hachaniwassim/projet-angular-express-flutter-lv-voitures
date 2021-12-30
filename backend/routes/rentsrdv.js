const express = require('express');
const router = express.Router();

const RentrdvController = require('./../controllers/rentsrdv')


router.get('/', RentrdvController.all);
router.get('/:id', RentrdvController.get);
router.post('/', RentrdvController.create);
router.put('/:id', RentrdvController.update);
router.delete('/:id', RentrdvController.delete);

module.exports = router;