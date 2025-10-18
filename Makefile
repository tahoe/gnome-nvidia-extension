# SPDX-License-Identifier: GPL-3.0-or-later
# SPDX-FileCopyrightText: Contributors to the rnvtop project.

all:
	glib-compile-schemas src/rnvtop@djdtahoe.relishit.net/schemas/
	cd src/rnvtop@djdtahoe.relishit.net && zip -r rnvtop@djdtahoe.relishit.net * && mv rnvtop@djdtahoe.relishit.net.zip ../..

install:
	mkdir -p ~/.local/share/gnome-shell/extensions
	cp -r src/rnvtop@djdtahoe.relishit.net ~/.local/share/gnome-shell/extensions/
