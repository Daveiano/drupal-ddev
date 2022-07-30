#!/bin/bash

if ! drush status bootstrap | grep -q Successful; then
    echo '$settings["config_sync_directory"] = "./../config";' >> web/sites/default/settings.php
    drush site-install -y --db-url=mysql://db:db@db/db --existing-config
fi

