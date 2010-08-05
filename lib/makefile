#Makefile for Thinix

ASM		= as
AR		= ar
CC		= gcc
LD		= ld
CFLAGS		= -I ../include -c -fno-builtin -fno-stack-protector
LDFLAGS		= -I ../include -r

OBJS		= printk.o
.PHONY		: all clean everything

everything	: klib.a


all		: clean everything

clean		:
	rm -f $(OBJS) $(THINIXKERNEL)

klib.a	: $(OBJS)
	$(AR) rcs $@ $(OBJS)
	sync

printk.o	: printk.c
	$(CC) $(CFLAGS) -o $@ $<

