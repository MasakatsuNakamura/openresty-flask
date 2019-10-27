#!/bin/sh
/usr/local/openresty/bin/openresty
chmod -R 777 main.py
uwsgi --ini uwsgi.ini
