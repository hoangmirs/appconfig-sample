#!/bin/bash

# Exit on fail
set -e

if [ -f tmp/pids/server.pid ]; then
  rm -f tmp/pids/server.pid
fi

# Run pending migrations (if any) and start rails
# bundle exec rails db:migrate

curl "http://localhost:2772/applications/zfdxfbn/environments/mrjp3ni/configurations/test_data"

bundle exec rails s -p $PORT -b 0.0.0.0
