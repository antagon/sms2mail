.PHONY: clean install

all: recvsms.sh forwsms.sh run.sh

install: recvsms.sh forwsms.sh run.sh
	mkdir -p $(BIN_DIR)
	install -m 0755 -t $(BIN_DIR) $^

recvsms.sh: recvsms.sh.in
	sed 's|@CONFIG@|$(CONFIG)|g' $< > $@

forwsms.sh: forwsms.sh.in
	sed 's|@CONFIG@|$(CONFIG)|g' $< > $@

run.sh: run.sh.in
	sed -e 's|@CONFIG@|$(CONFIG)|g' -e 's|@BIN_DIR@|$(BIN_DIR)|g' $< > $@

clean:
	rm -f recvsms.sh forwsms.sh run.sh

