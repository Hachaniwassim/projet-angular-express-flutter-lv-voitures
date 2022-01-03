const express = require('express');
const router = express.Router();

const VoitureController = require('../controllers/vvoiture')


router.get('/', VoitureController.all);
router.get('/:id', VoitureController.get);
router.post('/', VoitureController.create);
router.put('/:id', VoitureController.update);
router.delete('/:id', VoitureController.delete);

module.exports = router;