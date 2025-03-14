MEMORY
{
    RAM : ORIGIN = 0X80000000, LENGTH = 4K
}

SECTIONS
{
    .text : {
        *(.text*)
    } > RAM
}