#!/bin/bash
# This script receive an integer argument with the number of queries to be run in parallel.
source ./functions
set_paralelismo_max $1
while read -r query
do
   esperar
   ./launch_one.sh $query &
done < query_list.out