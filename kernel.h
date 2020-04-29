#ifndef KERNEL_H
#define KERNEL_H

//DEFINING VGA ADDRESS
#define VGA_ADDRESS 0xB8000     //Using 16bit Common address

//ASSIGNING DEFAULT COLOR
#define COLOR 12

//Defining 16bit unsigned type
typedef unsigned short UINT16;

//Creating a buffer that points to VGA
UINT16 *VGA_BUFFER;

#endif
