#!/bin/bash

sudo rsync -v /etc/netctl/* ./netctl/
rsync -r -v /etc/pacman.d/mirrorlist .
rsync -r -v /etc/pacman.conf .
rsync -r -v /usr/share/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def .
rsync -r -v /etc/hosts .
rsync -r -v /usr/lib/udev/rules.d/51-android.rules .
rsync -r -v /etc/tomcat/tomcat-users.xml .
rsync -r -v /etc/acpi/handler.sh .
