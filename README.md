# Aircall.io - DevOps technical test

This test is a part of our hiring process at Aircall for [DevOps positions](https://aircall.io/jobs#SystemAdministrator). It should take you between 3 and 6 hours depending on your experience.

__Feel free to apply! Drop us a line with your Linkedin/Github/Twitter/AnySocialProfileWhereYouAreActive at jobs@aircall.io__


## Summary

The purpose of the test is to reproduce one of our typical use case on the DevOps part of Aircall: __deployment__!

The story is the following:

Our backend team just developed a new service in order to make custom integrations for special customers. We need to deploy this service on one different virtual context for each customer, with a reproducible process.

It's 9AM in the office and first calls are coming in!


## Instructions

In this repository, you'll find a simple Rails project with one model. The main route in order to use this application is _/users_.

### Technical stack

Here are the technical requirements for your virtual context

* Ruby version
- 2.3

* Rails version
- 4.2.1

* System dependencies
- ruby
- mysql
- nginx

### Configuration

Here are the files you need to modify in order to configure the launch of the application

- config/environment.yml
- config/database.yml
- config/puma/*.rb

### Deployment (update 'production' to 'development' if you want to test locally)

Here are the commands you need to launch in order to deploy this application

* App dependencies
- bundle install
- RACK_ENV=production RAILS_env=production rake assets:precompile

* Database creation
- RACK_ENV=production RAILS_env=production rake db:create

* Database initialization
- RACK_ENV=production RAILS_env=production rake db:migrate

* Web server initialization
- RACK_ENV=production RAILS_env=production bundle exec puma