#!/bin/bash

echo "Allowed hosts" >> /etc/sane.d/saned.conf
echo "$SANE_ALLOWED_HOSTS" >> /etc/sane.d/saned.conf
echo "Allowed hosts" >> /etc/sane.d/saned.conf
for HOST in $SANE_ALLOWED_HOSTS; do
  echo $HOST >> /etc/sane.d/saned.conf
done