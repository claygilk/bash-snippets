# Check number of commits per author for given repo
git log | grep Author | awk '{print tolower($NF)}' | sort | uniq -c
