const Blog = require('./../models/Blog');

// get all a
exports.all = (req, res) => {
  Blog.find()
    .then(blogs=> res.status(200).json(blogs))
    .catch(err => res.status(400).json({error: err.message}));
};

// get by id
exports.get = (req, res, next) => {
    Blog.findOne({ _id: req.params.id })
      .then(blog => res.status(200).json(blog))
      .catch(error => res.status(404).json({ error }));
  };

  // store 
exports.create = (req, res, next) => {
  const blog= new Blog({
    ...req.body
  });
 blog.save()
    .then(() => res.status(201).json({ message: ' Blog created  !'}))
    .catch(error => res.status(400).json({ error }));
};

// update by id
exports.update = (req, res, next) => {
    Blog.updateOne({ _id: req.params.id }, { ...req.body, _id: req.params.id })
    .then(() => res.status(200).json({ message: 'Blog updated !'}))
    .catch(error => res.status(400).json({ error }));
};

// delete a Blog by id
exports.delete = (req, res, next) => {
   Blog.deleteOne({ _id: req.params.id })
    .then(() => res.status(200).json({ message: 'Blog deleted !'}))
    .catch(error => res.status(400).json({ error }));
};
