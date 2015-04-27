#!/bin/bash
RODS_PASSWORD=$1

# generate configuration responses
/scripts/generate-irods-responses.sh /scripts/setup_responses

if [ -n "$RODS_PASSWORD" ]
  then
    sed -i "11s/.*/$RODS_PASSWORD/" /scripts/setup_responses
fi

# set up the iCAT database
#service postgresql start
/scripts/setup-irods-db.sh /scripts/setup_responses
# set up iRODS
/scripts/configure-irods.sh /scripts/setup_responses
#change irods user's irodsEnv file to point to localhost, since it was configured with a transient Docker container's $
#sed -i 's/^irodsHost.*/irodsHost localhost/' /var/lib/irods/.irods/.irodsEnv
# this script must end with a persistent foreground process
#tail -f /var/lib/irods/iRODS/server/log/rodsLog.*