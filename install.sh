#!/bin/sh
[ "$UID" != "0" ] && echo "Not root!" && exit 1
mkdir -p /opt/mass-print && cp --preserve=timestamps,mode -r mass-print locale /opt/mass-print/ && ln -s /opt/mass-print/mass-print /usr/local/bin/mass-print && cp --preserve=timestamps,mode mass-print.desktop /usr/share/applications/