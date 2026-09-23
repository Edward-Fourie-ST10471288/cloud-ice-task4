#!/bin/bash
# Checks whether a list of websites is reachable

websites=(
  "https://www.google.com"
  "https://www.github.com"
  "https://www.microsoft.com"
  "https://www.example.com"
)

for site in "${websites[@]}"; do
  status=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$site")
  if [[ "$status" -ge 200 && "$status" -lt 400 ]]; then
    echo "$site is UP (HTTP $status)"
  else
    echo "$site is DOWN (HTTP $status)"
  fi
done
