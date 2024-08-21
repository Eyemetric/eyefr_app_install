#!/bin/bash

curl -k -X POST -H "Content-Type: application/json" -d '{ "page_size": 10000 }' http://localhost:3000/fr/idents | jq
