i686-elf-as bootloader.S -o bootloader.o 
i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib bootloader.o kernel.o -lgcc
cd .. 
sudo chmod 777 -R MARK2
cd MARK2
qemu-system-i386 -kernel myos.bin