import React, { Component } from 'react';

export default class Test extends Component {
  render() {
    console.log('in test route');
    return <div>
      This is main App component
      {this.props.children}
    </div>
  }
}