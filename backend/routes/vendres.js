const express = require('express');
const router = express.Router();

const VendreController = require('../controllers/vendre')


router.get('/', VendreController.all);
router.get('/:id', VendreController.get);
router.post('/', VendreController.create);
router.put('/:id', VendreController.update);
router.delete('/:id', VendreController.delete);

module.exports = router;