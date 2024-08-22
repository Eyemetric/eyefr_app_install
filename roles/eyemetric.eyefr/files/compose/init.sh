#!/bin/bash
VERSION="1.6.2"

start_docker() {
    ansible-playbook /opt/eyemetric_${VERSION}/fr/compose/paravision-dkup.yml
    ansible-playbook /opt/eyemetric_${VERSION}/fr/compose/safr-dkup.yml
}

start_podman() {
    ansible-playbook /opt/eyemetric_${VERSION}/fr/compose/paravision-pdup.yml
    ansible-playbook /opt/eyemetric_${VERSION}/fr/compose/safr-pdup.yml
}

start_docker_cpu() {
    ansible-playbook /opt/eyemetric_${VERSION}/fr/compose/paravision-dkup-cpu.yml
    ansible-playbook /opt/eyemetric_${VERSION}/fr/compose/safr-dkup-cpu.yml
}

start_podman_cpu() {
    ansible-playbook /opt/eyemetric_${VERSION}/fr/compose/paravision-pdup-cpu.yml
    ansible-playbook /opt/eyemetric_${VERSION}/fr/compose/safr-pdup-cpu.yml
}

# If CONTAINER_ENGINE is set, check its value
if [ "$CONTAINER_ENGINE" == "docker" ]; then
        start_docker
elif [ "$CONTAINER_ENGINE" == "podman" ]; then
        start_podman
else
        start_podman
fi
~
~
~