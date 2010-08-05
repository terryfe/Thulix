#Makefile for Thinix /boot

ASM		= as
CC		= gcc
LD		= ld
CFLAGS		= -I ../include -c -fno-builtin
LDFLAGS		= -I ../include -r

OBJS		= boot.o head.o
.PHONY		: all clean everything

everything	: startup.o

all		: clean everything

clean		:
	rm -f $(OBJS) startup.o

startup.o : $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

boot.o	: boot.S
	$(CC) $(CFLAGS) -o $@ $<

head.o	: head.c
	$(CC) $(CFLAGS) -o $@ $<


