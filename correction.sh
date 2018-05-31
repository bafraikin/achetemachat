#!/bin/bash

bundle install --without production
rails db:migrate
rails db:seed
rails s

