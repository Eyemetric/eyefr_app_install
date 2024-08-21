#!/bin/bash
#echo "delete them all! "
curl -k -X POST http://localhost:3000/fr/v2/enrollment/reset | jq


