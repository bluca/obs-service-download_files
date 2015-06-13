prefix = /usr
localstatedir = /var
sysconfdir = /etc

servicedir = ${prefix}/lib/obs/service
serviceconfdir = ${sysconfdir}/obs/services
servicecachedir = ${localstatedir}/cache/obs

all:

install:
	install -d $(DESTDIR)$(servicedir)
	install -m 0755 download_files $(DESTDIR)$(servicedir)
	install -m 0644 download_files.service $(DESTDIR)$(servicedir)
	install -d $(DESTDIR)$(serviceconfdir)
	install -m 0644 download_files.rc $(DESTDIR)$(serviceconfdir)/download_files
	install -d $(DESTDIR)$(servicecachedir)/download_files/file
	install -d $(DESTDIR)$(servicecachedir)/download_files/filename

.PHONY: all install
