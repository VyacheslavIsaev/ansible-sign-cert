#!/bin/bash

openssl x509 -req -CA {{ca-cert}} -CAkey {{ca-key}} -in $1 -out $2 -days $3 -CAcreateserial -passin pass:$SRVPASS
