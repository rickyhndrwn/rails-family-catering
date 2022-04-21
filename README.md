# Rails GIGIH Family Catering

## Description
This is a Final Project Assignment repository for Generasi GIGIH 2.0 Back-end Track. This project is a web apps that simulate the management of items and orders of a Catering business.

## ERD
![Project's ERD](image-db-erd.jpg)

## User Stories
- User should be able to create item
- User should be able to see all created item(s)
- User should be able to edit an existing item
- User should be able to delete an existing item
- User should be able to create order
- User should be able to edit the status of an existing order
- User should be able to see daily order

## Getting Started
### Steps to run this locally
- Clone this repo
- run `bundle install` to install the required libraries and depenencies
- run `rails db:migrate` to run the database migrations
- run `rails db:migrate RAILS_ENV=test` to run the test database migrations
- run `rails db:seed` to populate some tables from the seeder
- run `rails s` to start the local server
