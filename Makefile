all: build

build:
	xmltoman man/update-grml-rescueboot.xml > man/update-grml-rescueboot.8

install:
	mkdir -p $(DESTDIR)/etc/grub.d $(DESTDIR)/usr/share/doc/grml-rescueboot/ $(DESTDIR)/etc/default $(DESTDIR)/usr/sbin/
	install -m 755 42_grml                     $(DESTDIR)/etc/grub.d/
	install -m 644 debian/README               $(DESTDIR)/usr/share/doc/grml-rescueboot/
	install -m 644 etc/default/grml-rescueboot $(DESTDIR)/etc/default/grml-rescueboot
	install -m 755 update-grml-rescueboot      $(DESTDIR)/usr/sbin/

clean:
	rm -f man/update-grml-rescueboot.en.8
