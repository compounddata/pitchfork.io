#!/usr/bin/env make

VENV = $(CURDIR)/venv
PIP = ${VENV}/bin/pip
RST2HTML5 = ${VENV}/bin/rst2html5
VENV_CMD = virtualenv-3

include .dest

default: $(VENV)

$(VENV):
	$(VENV_CMD) $@
	$(PIP) install rst2html5-tools
	mkdir web-root

generate: $(VENV)
	$(RST2HTML5) --bootstrap-css --pretty-print-code \
	    --stylesheet-path=css/rst2html5.css \
	    --jquery --embed-content index.rst > web-root/index.html

upload: generate
	rsync -avP web-root/index.html ${DEST}

clean:
	rm -rf $(VENV) web-root
