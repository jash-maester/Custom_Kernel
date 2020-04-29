/*Setting up ENtry point of our bootloader main function*/
ENTRY(_start)

SECTIONS
{
    /*So minimum Requirement is 1MB Size, so setting up 1MB for it */
    . = 1M;

    /*Size of Teexts requirement at least 4KB in each section*/
    .text BLOCK(4K) : ALIGN(4K)
    {
        *(.multiboot)
        *(.text)
    }

    /*Read-Only DAta*/
    .rodata BLOCK(4K) : ALIGN(4K)
    {
        *(.rodata)
    }

    /*Actual Data*/
    .data BLOCK(4K) : ALIGN(4K)
    {
        *(.data)
    }
    
    /*BSS section*/
    .bss BLOCK(4K) : ALIGN(4K)
    {
        *(.COMMON)
        *(.bss)
    }
}
