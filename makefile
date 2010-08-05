#Makefile for Thinix

ASM		= as
CC		= gcc
LD		= ld
CFLAGS		= -I include -c -fno-builtin -fno-stack-protector
LDFLAGS		= -I include -Ttext 0x100000 -e start

THINIXKERNEL	= kernel.img
OBJS		= boot/startup.o kernel/kernel.o lib/klib.a init/init.o
.PHONY		: all clean everything

everything	: $(THINIXKERNEL)

all		: clean everything

clean		: 
	rm -f $(OBJS) $(THINIXKERNEL)
	(cd boot;make clean)
	(cd kernel;make clean)
	(cd lib;make clean)
	(cd init;make clean)

boot/startup.o	: 
	(cd boot;make all)

kernel/kernel.o	:
	(cd kernel;make all)	

lib/klib.a	:
	(cd lib;make all)

init/init.o	:
	(cd init;make all)

$(THINIXKERNEL)	: $(OBJS)
	$(LD) $(LDFLAGS) -o $(THINIXKERNEL) $(OBJS)
	cp $(THINIXKERNEL) ../run/img/

