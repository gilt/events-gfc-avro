targetdir := target

SHELL = /bin/bash

PROTOCOL = gfc

help:
	cat $(lastword $(MAKEFILE_LIST))

avro: avro-protocol avro-schemas avro-codegen $(targetdir)

avro-codegen: avro-protocol $(targetdir)
	avro-tools compile protocol $(targetdir)/$(PROTOCOL).avpr $(targetdir)/java-src
	cd $(targetdir) && tar -czf $(PROTOCOL)-java-src.tar.gz java-src
	@rm -rf $(targetdir)/java-src
	@echo
	@echo "Your can find your generated JAVA code here: $(targetdir)/$(PROTOCOL)-java-src.tar.gz"
	@echo

avro-protocol: $(targetdir)
	avro-tools idl $(PROTOCOL).avdl > $(targetdir)/$(PROTOCOL).avpr

avro-schemas: $(targetdir)
	avro-tools idl2schemata $(PROTOCOL).avdl $(targetdir)/schemas
	cd $(targetdir) && tar -czf $(PROTOCOL)-schemas.tar.gz schemas
	@rm -rf $(targetdir)/schemas
	@echo
	@echo "Your can find your Avro schema definitions here: $(targetdir)/$(PROTOCOL)-schemas.tar.gz"
	@echo

clean:
	git clean -dfX

$(targetdir):
	@mkdir -p $@
