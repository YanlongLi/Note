#!/bin/bash

sudo cat pacman.conf.add >> /etc/pacman.conf

sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.back 
sudo cp mirrorlist /etc/pacman.d/mirrorlist

sudo mv /usr/share/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def /usr/share/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def.back
sudo cp ctex-xecjk-winfonts.def /usr/share/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def 

sudo mv /etc/hosts /etc/hosts.back
sudo cp hosts /etc/hosts 

sudo mv /usr/lib/udev/rules.d/51-android.rules /usr/lib/udev/rules.d/51-android.rules.back
sudo cp 51-android.rules /usr/lib/udev/rules.d/51-android.rules 

sudo mv /etc/tomcat/tomcat-users.xml /etc/tomcat/tomcat-users.xml.back
sudo cp tomcat-users.xml /etc/tomcat/tomcat-users.xml 

sudo mv /etc/acpi/handler.sh /etc/acpi/handler.sh.back
sudo cp handler.sh /etc/acpi/handler.sh 

