#!/bin/bash

key=`ls -l | grep com.key | awk '{print $9}'`
crt=`ls -l | grep com.crt | awk '{print $9}'`

openssl rsa -noout -modulus -in ${key} | openssl md5
openssl x509 -noout -modulus -in ${crt} | openssl md5
