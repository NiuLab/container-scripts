BINS = run_bts run_sip stop_bts stop_sip openbts_start openbts_stop sipserver_start sipserver_stop
LIBS = libvbs

INSTALL = install
prefix = /usr/local
bindir = ${prefix}/bin
libdir = ${prefix}/lib
all: install

install:
	$(INSTALL) -d $(DESTDIR)/$(bindir)
	$(INSTALL) -d $(DESTDIR)/$(libdir)
	$(INSTALL) -m 755 $(BINS) $(DESTDIR)/$(bindir)
	$(INSTALL) -m 644 $(LIBS) $(DESTDIR)/$(libdir)
