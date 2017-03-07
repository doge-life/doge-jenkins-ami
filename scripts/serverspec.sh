#!/bin/bash -e

sudo apt-get install -y curl
sudo gem install bundler --no-ri --no-rdoc
cd /tmp/tests
bundle install
bundle exec rake spec

