targetdir := target

SHELL = /bin/bash

help:
	cat $(lastword $(MAKEFILE_LIST))

avro-codegen: avro-protocol $(targetdir)
	avro-tools compile protocol $(targetdir)/events.avpr $(targetdir)/java-src
	cd $(targetdir) && tar -cf - java-src | gzip -c > events.tar.gz
	@rm -rf $(targetdir)/java-src
	@echo
	@echo "Your can find your generated JAVA code here: $(CURDIR)/$(targetdir)/events.tar.gz"
	@echo

avro-protocol: $(targetdir)
	avro-tools idl events.avdl > $(targetdir)/events.avpr

clean:
	rm -rf $(targetdir)

$(targetdir):
	@mkdir -p $@
