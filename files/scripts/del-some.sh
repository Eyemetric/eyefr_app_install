#!/bin/bash

curl -k -X POST -H "Content-Type: application/json" -d @$1 http://localhost:3000/fr/enrollment/delete  | jq
