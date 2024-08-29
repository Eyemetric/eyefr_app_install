#!/bin/bash 


ansible-vault encrypt  group_vars/all.yml --vault-password-file=~/.vault/eyefr_vault_key
ansible-vault encrypt  roles/eyemetric.eyefr/files/compose/vars.yml --vault-password-file=~/.vault/eyefr_vault_key
