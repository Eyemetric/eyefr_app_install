#!/bin/bash

if [ "$CONTAINER_ENGINE" == "docker" ]; then
    ansible-playbook /opt/eyemetric/fr/compose/paravision-dkdown.yml
    ansible-playbook /opt/eyemetric/fr/compose/safr-dkdown.yml
elif [ "$CONTAINER_ENGINE" == "podman" ]; then
    ansible-playbook /opt/eyemetric/fr/compose/paravision-pddown.yml
    ansible-playbook /opt/eyemetric/fr/compose/safr-pddown.yml
else
    echo "The CONTAINER_ENGINE environment variable is set to an unrecognized value: $CONTAINER_ENGINE"
fi

