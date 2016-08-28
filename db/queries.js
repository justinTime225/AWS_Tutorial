const promise = require('bluebird');

const options = {
  // Initialization Options
  promiseLib: promise
};

const pgp = require('pg-promise')(options);


// const connectionString = 'pginstance.ctwfwbqhfx8u.us-west-1.rds.amazonaws.com:5432' || 'postgres://localhost:5432/training';
const db = pgp({
  user: 'testground',
  database: 'mytest123',
  password: 'blank',
  host: 'playgroundtest.ctwfwbqhfx8u.us-west-1.rds.amazonaws.com',
  port: 5432,
});

// query functions
function getChestExercises(req, res, next) {
  console.log('in chest function');
  const query = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from chest";
  db.any(query)
    .then(function resolve(data) {
      console.log(data, '------');
      res.status(200).send(data);
    })
    .catch(function error(err) {
      console.log('looks like an error');
      return next(err);
    });
}

function getBicepExercises(req, res, next) {
  const query = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from bicep";
  db.any(query)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

function getBackExercises(req, res, next) {
  const query = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from back";
  db.any(query)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

function getTricepExercises(req, res, next) {
  const query = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from tricep";
  db.any(query)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

function getLegsExercises(req, res, next) {
  const query = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from legs";
  db.any(query)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

function getShouldersExercises(req, res, next) {
  const query = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from shoulders";
  db.any(query)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

function getCoreExercises(req, res, next) {
  const query = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from core";
  db.any(query)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

function fetchPushGroup(req, res, next) {
  const query1 = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from chest";
  const query2 = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from tricep";
  db.any(query1)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
  db.any(query2)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

function fetchPullGroup(req, res, next) {
  const query1 = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from back";
  const query2 = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from bicep";
  db.any(query1)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
  db.any(query2)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

function fetchLowerBodyGroup(req, res, next) {
  const query1 = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from legs";
  const query2 = "select name, concat(set_min, '-', set_max) as SetRange, \
  concat(light_rep_min, '-', light_rep_max) as LightRepRange, \
  concat(heavy_rep_min, '-', heavy_rep_max) as HeavyRepRange, \
  break_under_min, superset_type, build_type \
  from core";
  db.any(query1)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
  db.any(query2)
    .then(function resolve(data) {
      res.status(200).send(data);
    })
    .catch(function error(err) {
      return next(err);
    });
}

module.exports = {
  getChestExercises: getChestExercises,
  getBicepExercises: getBicepExercises,
  getBackExercises: getBackExercises,
  getTricepExercises: getTricepExercises,
  getLegsExercises: getLegsExercises,
  getShouldersExercises: getShouldersExercises,
  getCoreExercises: getCoreExercises,
  fetchPushGroup: fetchPushGroup,
  fetchPullGroup: fetchPullGroup,
  fetchLowerBodyGroup: fetchLowerBodyGroup
};


