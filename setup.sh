#!/bin/sh
UBUNTU_VERSION=`lsb_release -sc`
case $UBUNTU_VERSION in
    precise)
    echo +++ Ubuntu version: $UBUNTU_VERSION
    echo +++ Copying files...
    cp -v xmonad.desktop /usr/share/applications/
    cp -v xmonad.session /usr/share/gnome-session/sessions/
    cp -v xmonad-gnome-session.desktop /usr/share/xsessions/
    echo +++ Done.
    ;;
    *)
    echo Unsupported version
    ;;
esac
