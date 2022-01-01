const express = require('express');
const router = express.Router();

const BuyrdvController = require('./../controllers/buysrdv')
router.get('/', BuyrdvController.all);
router.get('/:id', BuyrdvController.get);
router.post('/', BuyrdvController.create);
router.put('/:id', BuyrdvController.update);
router.delete('/:id', BuyrdvController.delete);

module.exports = router;