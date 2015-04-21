export INSTALL_DIR = /opt/sms2mail
export BIN_DIR = $(INSTALL_DIR)/bin
export CONF_DIR = $(INSTALL_DIR)/conf
export CONFIG = $(CONF_DIR)/sms2mail.conf.sh

.PHONY: install conf src

all: conf src

conf:
	$(MAKE) -C conf/

src:
	$(MAKE) -C src/

install:
	$(MAKE) install -C conf/
	$(MAKE) install -C src/

clean:
	$(MAKE) clean -C conf/
	$(MAKE) clean -C src/

