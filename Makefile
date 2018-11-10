PREFIX ?= ${HOME}

all: install

install:
	@echo "installing to ${DESTDIR}${PREFIX}/bin"
	mkdir -p ${DESTDIR}${PREFIX}/bin
	ln -sf ${PWD}/switch_interfaces ${DESTDIR}${PREFIX}/bin
