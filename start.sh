#!/bin/bash
echo ServerName $(hostname) >> /etc/apache2/apache2.conf
/usr/sbin/apache2ctl -D FOREGROUND
