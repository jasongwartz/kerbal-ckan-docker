#!/bin/bash

echo 'mono /ckan.exe $@' > /usr/local/bin/ckan
chmod +x /usr/local/bin/ckan

ckan ksp add default-kerbal /kerbal/
ckan help

exec "$@"
