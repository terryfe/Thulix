#ifndef _KSTDIO_
#define _KSTDIO_

#define COLUMNS 80
/* The number of lines. */
#define LINES 24
/* The attribute of an character. */
#define ATTRIBUTE 7
/* The video memory address. */
#define VIDEO 0xB8000
static volatile unsigned char *video;
static int xpos;
static int ypos;
void printk(const char* format,...);

void itoa (char *buf, int base, int d);
void putchar(int c);
#endif
