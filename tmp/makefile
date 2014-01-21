help:
	@echo ""
	@echo "\033[32mMakefile for building SRK's operating system \033[0m"
	@echo "Usage: make [all | clean| help | build | run]"
	@echo ""
	@echo

all:
	make -C ./kernel all

run:
	@echo "Running Dev Operating System."
	cd ./tools && ./qemu.sh

clean:
	make -C ./kernel clean

close:
	cd ./tools && ./close.sh
