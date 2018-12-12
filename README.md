# README
[![Build Status](https://travis-ci.org/dkwagner/equipo-wiki.svg?branch=master)](https://travis-ci.org/dkwagner/equipo-wiki)

This is a wiki site using Ruby on Rails. The following technologies were used:
* ruby 2.5.1
* rails 5.2.1
* devise - to manage admin accounts
* ckeditor - to manage text formatting / article creation
* rspec and simplecov - for testing suite
* papertrail - for keeping track of article version history
* sqlite3 - for database

To develop on this project:
1. Install rvm
2. Install bundle
3. Navigate to the project folder and run 'bundle install'
4. To run the project in development mode run 'rails s'
5. To run the test suite run 'rake spec'