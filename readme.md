# Arduino Pro - ATmega328p 

This simple program use the Timer1 to toggle a led every seconds.

Works on Arduin Pro.

## Disassembly

On Ubuntu (WSL 2)

Install `binutils-avr` with command : `sudo apt-get install binutils-avr`

Disassembly with command : `avr-objdump -d .pio/build/pro16MHzatmega328/firmware.elf > disassembly.s`.

Disassembly (cpp + asm) with command : `avr-objdump -S -d .pio/build/pro16MHzatmega328/firmware.elf > disassembly`.



## Sources :

- previous arduino program done :
https://gitlab.adecy.fr/dietrich/can/arduino-scripts/-/blob/master/timer1_blink_hal_prog/timer1_blink_hal_prog.ino

- ATmega328p datasheet :
https://gitlab.adecy.fr/embedded/datasheets/-/blob/master/avr/ATmega328P.pdf

- Atmel AVR 8-bit instruction set
https://gitlab.adecy.fr/embedded/datasheets/-/blob/master/avr/Atmel%20AVR%208-bit%20Instruction%20Set.pdf

- external interrupts tutorial :
https://www.youtube.com/watch?v=w37FOUrXO6s
