#!/bin/bash
# if your database name is not bludb, change the name for the correct one.
rm -f $1.out
db2batch -d bludb -f $1.sql -i complete -iso ur -o r 1 -r $1.out