#Makefile for Thinix

ASM		= as
CC		= gcc
LD		= ld
CFLAGS		= -I ../include -c -fno-builtin
LDFLAGS		= -I ../include -r

OBJS		= init.o
.PHONY		: all clean everything

everything	: $(OBJS)


all		: clean everything

clean		:
	rm -f $(OBJS)

init.o	: main.c ../include/thinix/multiboot.h ../include/kstdio.h
	$(CC) $(CFLAGS) -o $@ $<

