#!/bin/bash

if [ ! -f /etc/challenge ]; then
    sudo touch /etc/challenge
fi

## Date should always reset the file before inserting new data/information

date > /etc/challenge 
hostname -f >> /etc/challenge
