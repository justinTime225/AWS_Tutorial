import axios from 'axios';

export const BASIC_WORKOUT = 'BASIC_WORKOUT';
export function getChestExercises() {
  const request = axios.get('/chest');
  return {
    type: BASIC_WORKOUT,
    payload: request
  };
}
export function getBicepExercises() {
  const request = axios.get('/bicep');
  return {
    type: BASIC_WORKOUT,
    payload: request
  };
}
export function getBackExercises() {
  const request = axios.get('/back');
  return {
    type: BASIC_WORKOUT,
    payload: request
  };
}
export function getTricepExercises() {
  const request = axios.get('/tricep');
  return {
    type: BASIC_WORKOUT,
    payload: request
  };
}
export function getLegsExercises() {
  const request = axios.get('/legs');
  return {
    type: BASIC_WORKOUT,
    payload: request
  };
}
export function getShouldersExercises() {
  const request = axios.get('/shoulders');
  return {
    type: BASIC_WORKOUT,
    payload: request
  };
}
export function getCoreExercises() {
  const request = axios.get('/core');
  return {
    type: BASIC_WORKOUT,
    payload: request
  };
}
