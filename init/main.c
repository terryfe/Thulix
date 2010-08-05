#include <thinix/multiboot.h>
#include <kstdio.h>
void
main(unsigned long addr)
{
	multiboot_info_t *mbi=(multiboot_info_t *)addr;
	unsigned long mem_total=(unsigned)mbi->mem_lower+(unsigned)mbi->mem_upper;
	printk("Thinix Starting...\n");
	printk("Total Memory : %uKB\n",mem_total);
	printk("Setting up GDT...\n");
	//set_up_gdt(mem_total);
    	while(1);
}
