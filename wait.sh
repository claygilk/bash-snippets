#
# This function allows a script to wait for a given number of seconds.
# While waiting a count down and spinner will be displayed.
# 
# Usage: wait [seconds]
#

wait() {
  secs=$1
  endTime=$(( $(date +%s) + secs ))
  wait_animation=('-' "\\" '|' '/' )

  while [ $(date +%s) -lt $endTime ] ; do
    for frame in "${wait_animation[@]}" ; do
      remaining=$((endTime - $(date +%s) ))
      minutes=$((remaining / 60))
      seconds=$((remaining % 60))
      printf "\rTime Remaining: %02d:%02d %s" $minutes $seconds $frame
      sleep 0.25
    done
  done

  echo ""
  echo "Done Loading"
}
