as -o fac.o fac.s #assembling the code

ld -o fac fac.o #linking to executable

./fac #executing

gdb fac #running GNU Debugger

info files #start address of the program

disas <hex_address_of_program> #disassemble the program

print/x <start_address> + 4 * <number_of_instructions> #the last program instrucion

disas <start_address>,<end_address> #disassemble the entire program

b *<hex_address_of_a_breakpoint> #set the breakpoint

run #execute the program

info register pc #examine the pc register

p (int)<variable> #examine the variable in .data section

p &<variable> #examine address of the variable

x/2xw <address_of_a_variable> #examine two consecutive values in hex, each 4 bytes 'w'

set {int}<variable_address> = <value> #overwrite the variable

dsiable <number_of_a_breakpoint> #disable the breakpoint

hexdump -C fac #hex dump of a program/sequential listing of the bytes in the file

objdump -s fac #hexdump in sections

objdump -d fac #disassemble

objdump -d /bin/ls > ls.txt #disassemble built-in GNU tools