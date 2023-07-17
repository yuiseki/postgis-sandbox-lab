#!/bin/bash
set -ex

# Create databases
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -c "CREATE DATABASE sandbox TEMPLATE=template_postgis"

# Create btree_gist extensions
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -c "CREATE EXTENSION btree_gist" -d sandbox

# Create hstore extensions
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -c "CREATE EXTENSION hstore" -d sandbox
