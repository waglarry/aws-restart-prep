#!/bin/bash
echo "Type a username"
read NAME
sudo adduser ${NAME}
echo "User Created"