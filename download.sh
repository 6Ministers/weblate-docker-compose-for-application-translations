#!/bin/bash

DESTINATION=$1

# clone Flectra directory
git clone --depth=1 https://github.com/6Ministers/weblate-docker-compose-for-application-translations $DESTINATION
rm -rf $DESTINATION/.git


