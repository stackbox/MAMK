KERNEL=kernel.elf

include ./config.make

all: $(KERNEL)

$(KERNEL) : bootset.asm
		nasm -f bin bootset.asm -o $(KERNEL)

clean:
		rm $(KERNEL)
close:
		cd ../tools && ./close.sh
