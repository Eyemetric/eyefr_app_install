#!/bin/bash


ansible-vault decrypt  group_vars/all.yml --vault-password-file=~/.vault/eyefr_vault_key
