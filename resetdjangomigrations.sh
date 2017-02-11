#!/usr/bin/env bash

git rm -r $1/migrations

rm -rf $1/migrations

./manage.py schemamigration $1 --initial
./manage.py migrate $1 --fake --delete-ghost-migrations
./manage.py migrate $1 --list
