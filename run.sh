#!/bin/bash

exit=0
out=$(./ssl-cert-check -x 45 -i -f ssldomains)

if $(echo "$out" | grep -q 'Expiring\|Expired'); then
  printf "\n$out\n\n"
  exit 1
fi
printf "\n$out\n\n"
