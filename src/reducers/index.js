import { combineReducers } from 'redux';
import basicWorkout from './basicWorkouts.reducer.js';
const rootReducer = combineReducers({
  basicWorkout: basicWorkout
});

export default rootReducer;
