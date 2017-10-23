#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_NOTION_GNOME = $(PREFIX)/bin/notion-gnome
PATH_NOTION_GNOME_DESKTOP = $(PREFIX)/share/applications/notion-gnome.desktop
PATH_NOTION_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/notion-gnome.session
PATH_NOTION_GNOME_XSESSION = $(PREFIX)/share/xsessions/notion-gnome.desktop

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/notion-gnome-xsession.desktop $(PATH_NOTION_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/notion-gnome.desktop $(PATH_NOTION_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/notion-gnome.session $(PATH_NOTION_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/notion-gnome $(PATH_NOTION_GNOME)


uninstall:
	rm -f $(PATH_NOTION_GNOME)
	rm -f $(PATH_NOTION_GNOME_DESKTOP)
	rm -f $(PATH_NOTION_GNOME_SESSION)
	rm -f $(PATH_NOTION_GNOME_XSESSION)


.PHONY: all install uninstall
