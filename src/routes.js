import React from 'react';
import { Route, IndexRoute } from 'react-router';
import App from './containers/App.js';
import Table from './containers/Table.js';
import Form from './containers/Form.js';
export default (
  <Route path="/" component={App}>
    <IndexRoute component={Form}/>
    <Route path="table" component={Table}/>
  </Route>
);