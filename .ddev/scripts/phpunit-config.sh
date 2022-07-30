#!/bin/bash

cp web/core/phpunit.xml.dist web/core/phpunit.xml
sed -i -e "s|env name=\"SIMPLETEST_BASE_URL\" value=\"\"|env name=\"SIMPLETEST_BASE_URL\" value=\"$DDEV_PRIMARY_URL\"|g" web/core/phpunit.xml
sed -i -e 's|env name="SIMPLETEST_DB" value=""|env name="SIMPLETEST_DB" value="mysql:\/\/db:db@db\/db"|g' web/core/phpunit.xml
