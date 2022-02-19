#!/bin/bash

# get apache environment variables

. /etc/apache2/envvars

echo "Entry point (entrypoint.sh)"

# show long dir structure
ls -la
# show complete list 
ls -l /datos/

echo "----> Apunte su navegador a http://localhost:8086/public_html/"

 exec apache2 -D FIRST PLANE