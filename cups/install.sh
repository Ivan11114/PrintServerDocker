#!/bin/bash

useradd -G lpadmin -m $CUPS_ADMIN_USERNAME
echo "$CUPS_ADMIN_USERNAME":"$CUPS_ADMIN_PASSWRD" | chpasswd

chsh -s /bin/bash $CUPS_ADMIN_USERNAME

# TODO: Add regular users
