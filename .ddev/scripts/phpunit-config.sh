#!/bin/bash

MINK_DRIVER_ARGS_WEBDRIVER='["chrome", {"browserName":"chrome","chromeOptions":{"args":["--disable-gpu","--headless", "--no-sandbox"]}}, "http://chromedriver:9515"]'

cp web/core/phpunit.xml.dist web/core/phpunit.xml
#sed -i -e "s|env name=\"SIMPLETEST_BASE_URL\" value=\"\"|env name=\"SIMPLETEST_BASE_URL\" value=\"$DDEV_PRIMARY_URL\"|g" web/core/phpunit.xml
sed -i -e 's|env name="SIMPLETEST_BASE_URL" value=""|env name="SIMPLETEST_BASE_URL" value="http://web"|g' web/core/phpunit.xml
sed -i -e 's|env name="SIMPLETEST_DB" value=""|env name="SIMPLETEST_DB" value="mysql:\/\/db:db@db\/db"|g' web/core/phpunit.xml
sed -i -e "s|env name=\"MINK_DRIVER_ARGS_WEBDRIVER\" value=''|env name=\"MINK_DRIVER_ARGS_WEBDRIVER\" value='$MINK_DRIVER_ARGS_WEBDRIVER'|g" web/core/phpunit.xml
