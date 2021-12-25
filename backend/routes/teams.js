const express = require('express');
const router = express.Router();

const TeamController = require('./../controllers/team')


router.get('/', TeamController.all);
router.get('/:id', TeamController.get);
router.post('/', TeamController.create);
router.put('/:id', TeamController.update);
router.delete('/:id', TeamController.delete);

module.exports = router;