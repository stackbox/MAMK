KERNEL=kernel.elf

include ./config.make

all: $(KERNEL)

$(KERNEL) : boot.asm
		nasm -f bin boot.asm -o $(KERNEL)

clean:
		rm $(KERNEL)
close:
		cd ../tools && ./close.sh
