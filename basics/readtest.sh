#!/bin/bash

read -p "what is your good name: " name
read -p "Enter the password: " -s password
echo $name
echo $password
read -p "it will timeout in 10 seconds: " -t 10
