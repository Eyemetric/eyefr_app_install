#!/bin/bash

curl -k -X GET http://localhost:3000/tpass/get-companies | jq
