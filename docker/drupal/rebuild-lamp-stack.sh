#!/bin/bash

docker-compose stop
docker-compose rm -f

sudo rm -rf data/

docker-compose up -d


WEBADDRESS=$(docker exec drupal_drupalweb_1 ip addr | grep "inet " | grep -v 127 | cut -d '/' -f 1 | sed -e 's/.*inet //')
WEBHOST=$(docker exec drupal_drupalweb_1 hostname)

DBADDRESS=$(docker exec drupal_drupaldb_1 ip addr | grep "inet " | grep -v 127 | cut -d '/' -f 1 | sed -e 's/.*inet //')
DBHOST=$(docker exec drupal_drupaldb_1 hostname)

echo ""
echo "Apache: $WEBHOST ($WEBADDRESS)"
echo "Database: $DBHOST ($DBADDRESS)"
echo ""

echo ""
echo "Run the setup page: http://localhost:2080/ "
echo ""
echo "Database Configuration:"
echo "  Database Name: drupaldb"
echo "  Database Username: drupaladmin"
echo "  Database Password: Passw0rd"
echo "  Advanced Options"
echo "    Host: $DBHOST"
echo "    Table Name Prefix: drupal_"
echo ""
