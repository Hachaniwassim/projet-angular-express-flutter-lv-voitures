const express = require('express');
const router = express.Router();

const BlogController = require('./../controllers/blog')

router.get('/',BlogController.all);
router.get('/:id',BlogController.get);
router.post('/',BlogController.create);
router.put('/:id',BlogController.update);
router.delete('/:id',BlogController.delete);

module.exports = router;
