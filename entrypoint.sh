#!/bin/bash

# Source apache variables for configuration
. /etc/apache2/envvars

echo "Entrypoint (entrypoint.sh)"
ls -l
ls -ldg /data
ls -l /data/

# some shells will allow the user to click on the URL in the following lines
echo && echo && echo "----> Point your browser at http://localhost:8086/public_html/" && echo && echo

# Run apache not as daemon, just for testing
exec apache2 -D FOREGROUND