ENTRY(start)

SECTIONS
{
    . = 1MB;

    .boot :
    {
        KEEP(*(.multiboot_header))
    }

    .text :
    {
        *(.text)
    }
}
