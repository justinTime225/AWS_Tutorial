DROP DATABASE IF EXISTS training;
CREATE DATABASE training;

\c training;

CREATE TABLE chest (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  set_min INTEGER,
  set_max INTEGER,
  light_rep_min INTEGER,
  light_rep_max INTEGER,
  heavy_rep_min INTEGER,
  heavy_rep_max INTEGER,
  break_under_min INTEGER,
  core INTEGER,
  superset_type VARCHAR,
  superset_ID INTEGER,
  build_type VARCHAR
);

CREATE TABLE bicep (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  set_min INTEGER,
  set_max INTEGER,
  light_rep_min INTEGER,
  light_rep_max INTEGER,
  heavy_rep_min INTEGER,
  heavy_rep_max INTEGER,
  break_under_min INTEGER,
  core INTEGER,
  superset_type VARCHAR,
  superset_ID INTEGER,
  build_type VARCHAR
);

CREATE TABLE back (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  set_min INTEGER,
  set_max INTEGER,
  light_rep_min INTEGER,
  light_rep_max INTEGER,
  heavy_rep_min INTEGER,
  heavy_rep_max INTEGER,
  break_under_min INTEGER,
  core INTEGER,
  superset_type VARCHAR,
  superset_ID INTEGER,
  build_type VARCHAR
);

CREATE TABLE tricep (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  set_min INTEGER,
  set_max INTEGER,
  light_rep_min INTEGER,
  light_rep_max INTEGER,
  heavy_rep_min INTEGER,
  heavy_rep_max INTEGER,
  break_under_min INTEGER,
  core INTEGER,
  superset_type VARCHAR,
  superset_ID INTEGER,
  build_type VARCHAR
);

CREATE TABLE legs (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  set_min INTEGER,
  set_max INTEGER,
  light_rep_min INTEGER,
  light_rep_max INTEGER,
  heavy_rep_min INTEGER,
  heavy_rep_max INTEGER,
  break_under_min INTEGER,
  core INTEGER,
  superset_type VARCHAR,
  superset_ID INTEGER,
  build_type VARCHAR
);

CREATE TABLE shoulders (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  set_min INTEGER,
  set_max INTEGER,
  light_rep_min INTEGER,
  light_rep_max INTEGER,
  heavy_rep_min INTEGER,
  heavy_rep_max INTEGER,
  break_under_min INTEGER,
  core INTEGER,
  superset_type VARCHAR,
  superset_ID INTEGER,
  build_type VARCHAR
);

CREATE TABLE core (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  set_min INTEGER,
  set_max INTEGER,
  light_rep_min INTEGER,
  light_rep_max INTEGER,
  heavy_rep_min INTEGER,
  heavy_rep_max INTEGER,
  break_under_min INTEGER,
  core INTEGER,
  superset_type VARCHAR,
  superset_ID INTEGER,
  build_type VARCHAR
);

INSERT INTO chest (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('InclinePress', 4, 5, 8, 12, 4, 6, 1, 1, 'Bicep', 2, 'Bulk');

INSERT INTO chest (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('FlatPress', 4, 5, 8, 12, 4, 6, 1, 1, 'Bicep', 2, 'Bulk');

INSERT INTO chest (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('DeclinePress', 4, 5, 8, 12, 4, 8, 1, 1, 'Bicep', 2, 'Bulk');

INSERT INTO chest (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('ChestFlyes', 3, 4, 15, 20, 5, 10, 1, 0, 'Chest', 5, 'Tone');

INSERT INTO chest (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('Dips', 3, 4, 6, 12, 15, 20, 1, 0, 'Chest', 2, 'Tone');

INSERT INTO bicep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('StandingCurl', 4, 5, 8, 10, 4, 6, 1, 0, 'Tricep', 2, 'Bulk');

INSERT INTO bicep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('HammerCurl', 4, 5, 8, 10, 4, 6, 1, 0, 'Tricep', 4, 'Bulk');

INSERT INTO bicep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('InclineDumbbellCurl', 5, 8, 5, 12, 4, 8, 1, 0, 'Shoulders', 3, 'Bulk');

INSERT INTO bicep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('ReverseGripBentOverRows', 3, 5, 5, 10, 2, 5, 1, 0, 'Bicep', 5, 'Bulk');

INSERT INTO bicep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('ConcentrationCurl', 4, 5, 10, 15, 4, 8, 1, 0, 'Chest', 4, 'Bulk');

INSERT INTO back (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('RomanianDeadlift', 3, 5, 10, 12, 2, 6, 1, 1, 'Back', 2, 'Bulk');

INSERT INTO back (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('PullUp', 3, 5, 2, 3, 4, 6, 1, 1, 'Tricep', 4, 'Bulk');

INSERT INTO back (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('LateralPulldown', 3, 5, 8, 10, 4, 6, 1, 0, 'Tricep', 4, 'Tone');

INSERT INTO back (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('DumbbellRow', 3, 5, 8, 10, 4, 6, 1, 0, 'Tricep', 2, 'Tone');

INSERT INTO back (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('SeatedRow', 3, 5, 8, 10, 4, 6, 1, 0, 'Tricep', 1, 'Tone');

INSERT INTO tricep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('CloseGripBenchPress', 2, 5, 10, 20, 4, 5, 1, 0, 'Bicep', 1, 'Bulk');

INSERT INTO tricep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('TricepHammer', 3, 5, 10, 20, 5, 10, 1, 1, 'Bicep', 2, 'Tone');

INSERT INTO tricep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('DumbbellKickback', 4, 5, 10, 12, 3, 8, 1, 0, 'Bicep', 3, 'Bulk');

INSERT INTO tricep (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('Pushdown', 3, 6, 8, 15, 4, 7, 1, 1, 'Bicep', 4, 'Bulk');

INSERT INTO legs (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('Squats', 4, 5, 10, 15, 4, 8, 1, 1, 'Shoulders', 1, 'Bulk');

INSERT INTO legs (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('Lunges', 3, 5, 6, 10, 15, 20, 1, 1, 'Shoulders', 1, 'Tone');

INSERT INTO legs (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('SumoDeadlift', 4, 5, 4, 6, 8, 10, 1, 1, 'Shoulders', 2, 'Bulk');

INSERT INTO legs (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('LegExtension', 3, 5, 4, 6, 8, 10, 1, 0, 'Back', 2, 'Bulk');

INSERT INTO legs (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('LegCurl', 3, 5, 4, 6, 8, 10, 1, 0, 'Back', 3, 'Bulk');

INSERT INTO legs (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('CalveRaise', 3, 5, 10, 12, 15, 20, 1, 1, 'Back', 4, 'Tone');

INSERT INTO shoulders (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('StandingDumbbellPress', 3, 5, 5, 15, 2, 4, 1, 1, 'Leg', 1, 'Bulk');

INSERT INTO shoulders (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('LateralRaise', 3, 5, 5, 20, 2, 4, 1, 1, 'Leg', 5, 'Bulk');

INSERT INTO shoulders (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('SeatedDumbbellPress', 3, 5, 10, 20, 2, 4, 1, 1, 'Leg', 6, 'Bulk');

INSERT INTO core (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('ObliqueSideBend', 3, 5, 8, 12, 15, 20, 1, 0, 'Core', 2, 'Tone');

INSERT INTO core (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('AbPullDown', 3, 5, 8, 12, 15, 20, 1, 0, 'Core', 3, 'Tone');

INSERT INTO core (name, set_min, set_max, light_rep_min, light_rep_max, 
heavy_rep_min, heavy_rep_max, break_under_min, core, superset_type, superset_ID, build_type)
  VALUES ('WeightCrunch', 3, 5, 8, 12, 15, 20, 1, 0, 'Core', 1, 'Tone');




