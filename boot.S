#Setting up Magic Number for multiboot
.set MAGIC, 0x1BADB002

#SETTING UP FLAGS
.set FLAGS, 0

#setting up Checksum
.set CHECKSUM, -(MAGIC + FLAGS)

#ADDing Additional Fiends if necessary


#Settign up Multiboot
.section .multiboot

#Setting Types for MAGIC, Flags, etc
.long MAGIC
.long FLAGS
.long CHECKSUM


####Stacking our KERNEL FUnctions###############
#Path of stack growth -> Higher to Lower
################################################

#Setting Stack Bottom point
stackBottom:
.skip 512   #Allocating 512 size

#Setting Stack Top point
stackTop:

#Set Sections
.section .text
.global _start
.type _start, @function

#Starting point 

_start:

        #getting current stack pointer from esp
        mov $stackTop, %esp

        #calling the main KERNEL Function
        call KERNEL_MAIN

        #clear the interrupts
        cli

#Putting SYSTEM in Infinite loop
hltloop:
        hlt
        jmp hltloop


.size _start, . - _start
