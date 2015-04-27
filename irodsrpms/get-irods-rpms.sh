#!/bin/bash

# get-irods-rpms
# Author: Michael J. Stealey

#######################
### iRODS RPM FILES ###
#######################

ICAT_SERVER='ftp://ftp.renci.org/pub/irods/releases/4.0.3/irods-icat-4.0.3-64bit-centos6.rpm'
DATABASE_PLUGIN='ftp://ftp.renci.org/pub/irods/releases/4.0.3-with-v1.4-database-plugins/irods-database-plugin-postgres93-1.4-centos6.rpm'
DEVELOPMENT_TOOLS='ftp://ftp.renci.org/pub/irods/releases/4.0.3/irods-dev-4.0.3-64bit-centos6.rpm'
RUNTIME_LIBRARIES='ftp://ftp.renci.org/pub/irods/releases/4.0.3/irods-runtime-4.0.3-64bit-centos6.rpm'
MICROSERVICE_PLUGIN='ftp://ftp.renci.org/pub/irods/plugins/irods_microservice_plugins_curl/1.1/irods-microservice-plugins-curl-1.1-centos6.rpm'

############################
### WGET iRODS RPM FILES ###
############################

if [ ! -f $(echo "${ICAT_SERVER##*/}") ]; then
    echo "*** Downloading $(echo "${ICAT_SERVER##*/}") ***"
    wget $ICAT_SERVER;
fi
if [ ! -f $(echo "${DATABASE_PLUGIN##*/}") ]; then
    echo "*** Downloading $(echo "${DATABASE_PLUGIN##*/}") ***"
    wget $DATABASE_PLUGIN
fi
if [ ! -f $(echo "${DEVELOPMENT_TOOLS##*/}") ]; then
    echo "*** Downloading $(echo "${DEVELOPMENT_TOOLS##*/}") ***"
    wget $DEVELOPMENT_TOOLS
fi
if [ ! -f $(echo "${RUNTIME_LIBRARIES##*/}") ]; then
    echo "*** Downloading $(echo "${RUNTIME_LIBRARIES##*/}") ***"
    wget $RUNTIME_LIBRARIES
fi
if [ ! -f $(echo "${MICROSERVICE_PLUGIN##*/}") ]; then
    echo "*** Downloading $(echo "${MICROSERVICE_PLUGIN##*/}") ***"
    wget $MICROSERVICE_PLUGIN
fi
