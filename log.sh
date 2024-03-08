#
# This very simple logging function prints out a timestamp and a message.
# The timestamp is colored purple.
#
# Usage: log [message]
#

function log(){
  msg=$1
  date=$(date "+%Y-%m-%dT%H:%M:%S")
  echo "\033[34m${date}\033[0m ${msg} "
}
