#include "kernel.h"

//Creating primary function to return value of each 16 bit that we specified in kernel.h in VGA_BUFFER

static UINT16 VGA_DefaultEntry(unsigned char ch)
{
    return (UINT16)ch | (UINT16)COLOR << 8;   //The left shift will convert the color to some drawable character in pixel
}

//KERNEL main Function
void KERNEL_MAIN()
{
    //Initializing the terminal Buffer
    VGA_BUFFER = (UINT16*)VGA_ADDRESS;
    
    //ACCESSING THE VGA_BUFFER AND PRINTING STUFF
    VGA_BUFFER[0] = VGA_DefaultEntry('J');
    VGA_BUFFER[1] = VGA_DefaultEntry('a');
    VGA_BUFFER[2] = VGA_DefaultEntry('s');
    VGA_BUFFER[3] = VGA_DefaultEntry('h');
    VGA_BUFFER[4] = VGA_DefaultEntry(' ');
    VGA_BUFFER[5] = VGA_DefaultEntry('i');
    VGA_BUFFER[6] = VGA_DefaultEntry('s');
    VGA_BUFFER[7] = VGA_DefaultEntry(' ');
    VGA_BUFFER[8] = VGA_DefaultEntry('N');
    VGA_BUFFER[9] = VGA_DefaultEntry('O');
    VGA_BUFFER[10] = VGA_DefaultEntry('O');
    VGA_BUFFER[11] = VGA_DefaultEntry('B');
    VGA_BUFFER[12] = VGA_DefaultEntry('!');
}
