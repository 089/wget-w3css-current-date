#!/usr/bin/env bash
#
# Downloads the w3.css file and renames it using the current 
# date. Additionally it generates a symbolic link which refers 
# to the latest download.
# 
# Author: https://github.com/089
# License: 

# settings
ULR=http://www.w3schools.com/lib/w3.css
TODAY=`date +%Y-%m-%d`
FILENAME="${TODAY}_w3.css"
LATEST="latest-w3.css"

# download
wget http://www.w3schools.com/lib/w3.css -O ${FILENAME}

# symbolic link
if [ -f ${LATEST} ]
then
  rm ${LATEST}
fi

ln -s ${FILENAME} ${LATEST}
