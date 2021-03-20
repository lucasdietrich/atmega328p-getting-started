
.pio/build/pro16MHzatmega328/firmware.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   8:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  10:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  14:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  18:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  1c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  20:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  24:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  28:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  2c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  30:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  34:	0c 94 40 00 	jmp	0x80	; 0x80 <__vector_13>
  38:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  3c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  40:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  44:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  48:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  4c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  50:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  54:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  58:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  5c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  60:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  64:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61
  74:	0e 94 58 00 	call	0xb0	; 0xb0 <main>
  78:	0c 94 78 00 	jmp	0xf0	; 0xf0 <_exit>

0000007c <__bad_interrupt>:
  7c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000080 <__vector_13>:
  80:	1f 92       	push	r1
  82:	0f 92       	push	r0
  84:	0f b6       	in	r0, 0x3f	; 63
  86:	0f 92       	push	r0
  88:	11 24       	eor	r1, r1
  8a:	8f 93       	push	r24
  8c:	9f 93       	push	r25
  8e:	86 ef       	ldi	r24, 0xF6	; 246
  90:	92 ec       	ldi	r25, 0xC2	; 194
  92:	90 93 85 00 	sts	0x0085, r25	; 0x800085 <__TEXT_REGION_LENGTH__+0x7e0085>
  96:	80 93 84 00 	sts	0x0084, r24	; 0x800084 <__TEXT_REGION_LENGTH__+0x7e0084>
  9a:	85 b1       	in	r24, 0x05	; 5
  9c:	90 e2       	ldi	r25, 0x20	; 32
  9e:	89 27       	eor	r24, r25
  a0:	85 b9       	out	0x05, r24	; 5
  a2:	9f 91       	pop	r25
  a4:	8f 91       	pop	r24
  a6:	0f 90       	pop	r0
  a8:	0f be       	out	0x3f, r0	; 63
  aa:	0f 90       	pop	r0
  ac:	1f 90       	pop	r1
  ae:	18 95       	reti

000000b0 <main>:
  b0:	25 9a       	sbi	0x04, 5	; 4
  b2:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
  b6:	10 92 80 00 	sts	0x0080, r1	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
  ba:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
  be:	84 60       	ori	r24, 0x04	; 4
  c0:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
  c4:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
  c8:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
  cc:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
  d0:	81 60       	ori	r24, 0x01	; 1
  d2:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
  d6:	86 ef       	ldi	r24, 0xF6	; 246
  d8:	92 ec       	ldi	r25, 0xC2	; 194
  da:	90 93 85 00 	sts	0x0085, r25	; 0x800085 <__TEXT_REGION_LENGTH__+0x7e0085>
  de:	80 93 84 00 	sts	0x0084, r24	; 0x800084 <__TEXT_REGION_LENGTH__+0x7e0084>
  e2:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
  e6:	81 60       	ori	r24, 0x01	; 1
  e8:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
  ec:	78 94       	sei
  ee:	ff cf       	rjmp	.-2      	; 0xee <main+0x3e>

000000f0 <_exit>:
  f0:	f8 94       	cli

000000f2 <__stop_program>:
  f2:	ff cf       	rjmp	.-2      	; 0xf2 <__stop_program>
