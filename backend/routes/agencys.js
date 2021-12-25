const express = require('express');
const router = express.Router();

const AgencyController = require('./../controllers/agency')

router.get('/', AgencyController.all);
router.get('/:id', AgencyController.get);
router.post('/', AgencyController.create);
router.put('/:id', AgencyController.update);
router.delete('/:id', AgencyController.delete);

module.exports = router;
