#!/bin/bash
#
# This script changes the ownership of data volumes to specified UID and GID
# and run command as that user, so external data volumes are correctly
# preserved.

# NOTE: Please change this line to reflect the VOLUME command in Dockerfile
DATA_VOLUMES=(/data/gitit-run /data/gitit-wiki)

if [ -n "$CT_HOST_UID" ]; then
    NEW_GID=${CT_HOST_GID:-1000}
    GROUP_CHECK=$(getent group $NEW_GID)
    [[ $? -ne 0 ]] && groupadd -g $NEW_GID all_users
    useradd -u $CT_HOST_UID -g $NEW_GID -d /home/user user
    for d in ${DATA_VOLUMES[@]}; do
        chown $CT_HOST_UID:$NEW_GID $d
    done
    gosu user $@
else
    gosu root $@
fi

