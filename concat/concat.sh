#!/bin/bash
cd "$(dirname "$0")"

cat ./chunks/*.sql > merged.sql
rm -r ./chunks/*.sql