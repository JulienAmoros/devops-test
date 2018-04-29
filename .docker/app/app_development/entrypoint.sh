#!/bin/bash
# Catch signal TERM to delete rails' tmp files
function clean_pid {
  rm -rf /aircall/tmp
}

function print_ip {
  sleep 2;
  printf '\033[0;31mAccess server at '$( ip -4 a | grep inet | sed -n '2p' | awk '{print $2}' | awk -F '[/]' '{print $1}' )':3000\033[0m\n';
}

trap clean_pid SIGTERM SIGKILL EXIT

# Print container connection port
print_ip &

# Remove Rails tmp files
rm -rf /aircall/tmp

# migrate database
rails db:migrate

# Start main process
rails s -b 0.0.0.0

