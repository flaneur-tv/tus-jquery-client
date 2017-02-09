#!/bin/bash

[ -z "$TUS_ENDPOINT" ] && TUS_ENDPOINT="http://localhost:1080"

sed -i 's|\(endpoint: '\''\).*\(\/files\/'\''.*$\)|\1'$TUS_ENDPOINT'\2|g' /usr/src/app/demo.js

npm start
