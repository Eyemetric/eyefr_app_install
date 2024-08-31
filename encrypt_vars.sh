#!/bin/bash 


ansible-vault encrypt  group_vars/all.yml --vault-password-file=~/.vault/eyefr_vault_key
