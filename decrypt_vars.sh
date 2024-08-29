#!/bin/bash


ansible-vault decrypt  group_vars/all.yml --vault-password-file=~/.vault/eyefr_vault_key
ansible-vault decrypt  roles/eyemetric.eyefr/files/compose/vars.yml --vault-password-file=~/.vault/eyefr_vault_key
