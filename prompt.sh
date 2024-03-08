#
# This function prints a prompt to the user in a pink color, then waits for their response.
# The user input is then echoed so that it can be captured using command substitution.
# Example: username=$(prompt "Enter your username: ")
#
# Usage: prompt [message]
#

function prompt(){
  msg=$1
  echo "\033[35m${msg}\033[0m\c" >&2
  read response
  echo $response
}
