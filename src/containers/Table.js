
import React, { Component } from 'react';
import { connect } from 'react-redux';
import Reactable from 'reactable';
import Button from 'muicss/lib/react/button'; 

/* Action creators */
import { getChestExercises } from '../actions/basicWorkouts.action.js';
import { getBicepExercises } from '../actions/basicWorkouts.action.js';
import { getBackExercises } from '../actions/basicWorkouts.action.js';
import { getTricepExercises } from '../actions/basicWorkouts.action.js';
import { getShouldersExercises } from '../actions/basicWorkouts.action.js';
import { getLegsExercises } from '../actions/basicWorkouts.action.js';
import { getCoreExercises } from '../actions/basicWorkouts.action.js';

const Table = Reactable.Table;

class App extends Component {
  componentWillMount() {
    // console.log(this.props.basicWorkout);
    this.props.getBicepExercises().then(function() {
      console.log('done', this.props.basicWorkout);
    }.bind(this));
    this.props.getBackExercises().then(function() {
      console.log('done', this.props.basicWorkout);
    }.bind(this));
  }
  render() {
    console.log(' in app route');
    return (
      <div >

        <div>
          <Button onClick={() => {this.props.getChestExercises()}}>Chest</Button>
          <Button color="primary" onClick={() => {this.props.getBackExercises()}}>Back</Button>
          <Button color="danger" onClick={() => {this.props.getBicepExercises()}}>Biceps</Button>
          <Button color="accent" onClick={() => {this.props.getTricepExercises()}}>Triceps</Button>
          <Button onClick={() => {this.props.getShouldersExercises()}}>Shoulders</Button>
          <Button color="primary" onClick={() => {this.props.getLegsExercises()}}>Legs</Button>
          <Button color="danger" onClick={() => {this.props.getCoreExercises()}}>Core</Button>
        </div>

        <Table className="table" data={this.props.basicWorkout} />
        
      </div>
    );
  }
}

function mapStateToProps(state) {
  return {
    basicWorkout: state.basicWorkout.list
  };
}

export default connect(mapStateToProps, {getChestExercises, getBicepExercises, getBackExercises, getTricepExercises, getShouldersExercises, getLegsExercises, getCoreExercises})(App);
