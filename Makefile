ctoasm:
	riscv64-unknown-elf-gcc -O0 -ggdb -nostdlib -march=rv32i -mabi=ilp32 -Wl,-Tm.ld asm.s c-asm.c -o main.elf



compile:
	riscv64-unknown-elf-gcc -O0 -ggdb -nostdlib -march=rv32i -mabi=ilp32 -Wl,-Tm.ld m.s -o main.elf

assemblygdb:c-asm.c
	riscv64-unknown-elf-gcc -O0 -ggdb -nostdlib -march=rv32i -mabi=ilp32 -Wl,-Tm.ld c-asm.c -S

assembly:c-asm.c
	riscv64-unknown-elf-gcc -O0 -nostdlib -march=rv32i -mabi=ilp32 -Wl,-Tm.ld c-asm.c -S
	

emulate:
	qemu-system-riscv32 --S -M virt -nographic -bios none -kernel main.elf -gdb tcp::1234

debugging:
	gdb-multiarch main.elf -ex "target remote localhost:1234" -ex "break _start" -ex "continue" -q	

binary:
	xxd -e -c 4 -g 4 main.bin

objcopy:
	riscv64-unknown-elf-objcopy -O binary main.elf main.bin	

clean:
	rm -rf *.out *.bin *.elf c-asm.s