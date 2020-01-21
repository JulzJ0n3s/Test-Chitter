CREATE DATABASE chitter_manager;
CREATE DATABASE chitter_manager_test;



CREATE TABLE chitter_peeps (id SERIAL PRIMARY KEY NOT NULL, title VARCHAR(50), peep VARCHAR(150) NOT NULL, time_id TIMESTAMP NOT NULL);
CREATE TABLE chitter_users (id SERIAL PRIMARY KEY NOT NULL, username VARCHAR(50) NOT NULL, names VARCHAR(50), surname VARCHAR(50), email_address VARCHAR(100) NOT NULL, peep_id INTEGER REFERENCES chitter_peeps (id));

title peep time_id