//将前446个byte拷贝到mbr的中，notrunc是指modify源文件的意思
 dd if=boot.bin of=disk.img bs=446 count=1 conv=notrunc  


