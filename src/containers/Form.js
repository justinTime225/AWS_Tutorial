import React, { Component } from 'react';
import {reduxForm} from 'redux-form';
// import { Button, Form, FormField, FormInput, Checkbox } from 'elemental' 
export default class Form extends Component {
  render() {
    console.log('in test route');
    return <div>
      <div>Create Form</div>
      <form>
        
          <div className="form-group">
            <label>Title</label>
            <input type="text" className="form-control"/>
          </div>
          <div className="form-group">
            <label>Category</label>
            <input type="text" className="form-control"/>
          </div>
          <div className="form-group">
            <label>Content</label>
            <input type="text" className="form-control"/>
          </div>
          <button type="submit" className="btn btn-primary">Submit</button>
        

      </form>
    </div>;
  }
}

// export default reduxForm({
//   form: 'UserForm',
//   fields: ['theme', 'superset', 'buildType', 'intensity']
// })(Form);