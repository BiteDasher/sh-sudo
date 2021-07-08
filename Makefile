ifeq ($(INSTALL),)
	INSTALL := /usr/bin
endif
ifdef $(DESTDIR)
	DESTDIR := $(DESTDIR)/
endif

install:
	install -Dm755 root_client $(DESTDIR)$(INSTALL)/rc
	install -Dm755 root_daemon $(DESTDIR)$(INSTALL)/rd
	install -Dm644 root_daemon.service $(DESTDIR)/etc/systemd/system/root_daemon.service

remove:
	rm $(DESTDIR)$(INSTALL)/rc
	rm $(DESTDIR)$(INSTALL)/rd
	rm $(DESTDIR)/etc/systemd/system/root_daemon.service
