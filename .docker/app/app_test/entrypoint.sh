#!/bin/bash
bundle exec rake db:create
bundle exec rake db:schema:load
bundle exec rake db:migrate
bundle exec rake test