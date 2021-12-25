const express = require('express');
const router = express.Router();

const RentController = require('./../controllers/rent')


router.get('/', RentController.all);
router.get('/:id', RentController.get);
router.post('/', RentController.create);
router.put('/:id', RentController.update);
router.delete('/:id', RentController.delete);

module.exports = router;