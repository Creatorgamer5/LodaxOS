section .multiboot_header
header_start:
    ;Magical Number
    dd 0xe85250d6 ; Multiboot 2 compliance
    ;Archiecture
    dd 0 ;Protected mode(32Bit)
    ;Header length
    dd header_end - header_start
    ; Checksum
    dd 0x100000000 - (0xe85250d6 - 0 (header_end - header_start))
    ;End this
    dw 0
    dw 0
    dd 8
header_end: