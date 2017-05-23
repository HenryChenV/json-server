help:
	@echo "install           install packages"
	@echo "server            start json-serer"

install:
	npm i

server:
ifeq ($(DB)'', '')
	@echo
	@echo "    Usage: make server DB=your_db.json"
	@echo
else
	@node bin/index.js --watch $(DB) $(OPTIONS)
endif

server-help:
	@node bin/index.js --help
