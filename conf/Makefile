.PHONY: clean install

all: sms2mail.conf.sh gammu-smsd.conf

install: sms2mail.conf.sh gammu-smsd.conf
	mkdir -p $(CONF_DIR)
	install -m 0644 -t $(CONF_DIR) $^

gammu-smsd.conf: gammu-smsd.conf.in
	sed -e 's|@BIN_DIR@|$(BIN_DIR)|g' $< > $@

sms2mail.conf.sh: sms2mail.conf.sh.in
	sed -e 's|@INSTALL_DIR@|$(INSTALL_DIR)|g' -e 's|@CONF_DIR@|$(CONF_DIR)|g' $< > $@

clean:
	rm -f gammu-smsd.conf sms2mail.conf.sh

