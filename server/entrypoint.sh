#!/bin/bash
curl --silent --show-error https://getcomposer.org/installer | php
php composer.phar update
./build
exec apache2-foreground