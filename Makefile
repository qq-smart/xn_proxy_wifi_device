CC       = cc
TARGET   = xn_proxy_wifi_device


default: preparation build


preparation:
	test -d objs || mkdir objs && rm -f objs/*


build:
	$(MAKE) -f core/Makefile
	$(MAKE) -f os/Makefile
	$(MAKE) -f event/Makefile
	$(MAKE) -f app/Makefile

	$(CC) objs/*.o -o objs/$(TARGET) -lm -lmysqlclient


clean:
	rm -rf objs
	rm -rf *.o


install:
	test -d /usr/local/$(TARGET) \
		|| mkdir /usr/local/$(TARGET) \
		&& rm -f /usr/local/$(TARGET)/*

	cp objs/$(TARGET) /usr/local/$(TARGET)/
