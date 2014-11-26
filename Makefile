targetdir := target

SHELL = /bin/bash

help:
	cat $(lastword $(MAKEFILE_LIST))

avro: avro-protocol avro-schemas avro-codegen $(targetdir)

avro-codegen: avro-protocol $(targetdir)
	avro-tools compile protocol $(targetdir)/events.avpr $(targetdir)/java-src
	cd $(targetdir) && tar -czf java-src.tar.gz java-src
	@rm -rf $(targetdir)/java-src
	@echo
	@echo "Your can find your generated JAVA code here: $(targetdir)/java-src.tar.gz"
	@echo

avro-protocol: $(targetdir)
	avro-tools idl events.avdl > $(targetdir)/events.avpr

avro-schemas: $(targetdir)
	avro-tools idl2schemata events.avdl $(targetdir)/schemas
	cd $(targetdir) && tar -czf schemas.tar.gz schemas
	@rm -rf $(targetdir)/schemas
	@echo
	@echo "Your can find your Avro schema definitions here: $(targetdir)/schemas.tar.gz"
	@echo

clean:
	git clean -dfX

$(targetdir):
	@mkdir -p $@
