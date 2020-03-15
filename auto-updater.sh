#!/bin/bash

VERSION=$(curl -sL https://api.github.com/repos/geerlingguy/ansible-role-nodejs/tags | jq -r .[0].name)

echo $VERSION


#| sed -e "s|dip_\(.*\)-0.deb|\1|")

sed -i "s|\(    version:\) .*|\1 ${VERSION}|" meta/main.yml
sed -i "s|\(  version:\) .*|\1 ${VERSION}|" molecule/default/requirements.yml
