
Debian
====================
This directory contains files used to package icomtechd/icomtech-qt
for Debian-based Linux systems. If you compile icomtechd/icomtech-qt yourself, there are some useful files here.

## icomtech: URI support ##


icomtech-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install icomtech-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your icomtech-qt binary to `/usr/bin`
and the `../../share/pixmaps/icomtech128.png` to `/usr/share/pixmaps`

icomtech-qt.protocol (KDE)

