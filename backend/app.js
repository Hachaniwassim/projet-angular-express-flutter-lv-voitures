const express = require('express');
const rentRouter = require('./routes/rents');
const agencyRouter = require('./routes/agencys');
const clientRouter = require('./routes/clients');
const teamRouter = require('./routes/teams');
const voitureRouter = require('./routes/voitures');
const vendreRouter = require('./routes/vendres');
const blogRouter = require('./routes/blogs');
const userRouter = require('./routes/users');
const rentsrdvrouter = require('./routes/rentsrdv');
const buysrdvrouter = require('./routes/buysrdvs');


const mongoose = require('mongoose');

const app = express();

mongoose.connect('mongodb://localhost:27017/final-project',
  { useNewUrlParser: true,
    useUnifiedTopology: true })
  .then(() => console.log('Connected successfully to MongoDB !'))
  .catch(() => console.log('Connection failed to MongoDB !'));
 app.use(express.json());

  app.use((req, res, next) => { 
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content, Accept, Content-Type, Authorization');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
    next();
  });
  
  app.use('/api/rents', rentRouter);
  app.use('/api/agencys', agencyRouter);
  app.use('/api/clients', clientRouter);
  app.use('/api/teams', teamRouter);
  app.use('/api/voitures', voitureRouter);
  app.use('/api/vendres', vendreRouter);
  app.use('/api/blogs', blogRouter);
  app.use('/api/auth', userRouter);
  app.use('/api/rentsrdvs', rentsrdvrouter);
  app.use('/api/buysrdvs', buysrdvrouter);


module.exports = app;