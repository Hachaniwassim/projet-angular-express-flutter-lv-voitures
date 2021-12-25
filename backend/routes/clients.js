const express = require('express');
const router = express.Router();

const ClientController = require('./../controllers/client')

router.get('/', ClientController.all);
router.get('/:id', ClientController.get);
router.post('/', ClientController.create);
router.put('/:id', ClientController.update);
router.delete('/:id', ClientController.delete);

module.exports = router;
