#!/bin/bash
 
if [ -f /mnt/pinas_storage/.1125a7bf-495d-45d9-bb22-50bc674ef5ec ]; then
    echo "Connection pinas_storage already established"
else
    echo "Connecting pinas_storage"
    sshfs pinas:/mnt/storage /mnt/pinas_storage
    if [ -f /mnt/pinas_storage/.1125a7bf-495d-45d9-bb22-50bc674ef5ec ]; then
        echo "Connecton pinas_storage established"
    else
        echo "Connection to pinas_storage failed"
        echo "Unmount Mounts/pinas_storage"
        umount /mnt/pinas_storage
    fi
fi
