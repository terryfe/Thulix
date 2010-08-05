#Makefile for Thinix

ASM		= as
CC		= gcc
LD		= ld
CFLAGS		= -I ../include -c -fno-builtin
LDFLAGS		= -I ../include -r

OBJS		= exit.o
.PHONY		: all clean everything

everything	: kernel.o


all		: clean everything

clean		:
	rm -f $(OBJS) $(THINIXKERNEL)

kernel.o	: $(OBJS)
	$(LD) $(LDFLAGS) -o kernel.o $(OBJS)

exit.o		: exit.c
	$(CC) $(CFLAGS) -o $@ $<
