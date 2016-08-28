import { BASIC_WORKOUT } from '../actions/basicWorkouts.action.js';

const defaultState = {list: [], item: null};
export default function(state = defaultState, action) {
  if (action.type === BASIC_WORKOUT) {
    return {list: [...action.payload.data], item: null};
  }
  return state;
}
