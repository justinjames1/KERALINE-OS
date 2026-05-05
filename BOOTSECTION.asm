org 0x7C00
;16 bit 

;i hate evey fucking bit of this asm 

    mov si, title    
    mov ah, 0x0e       

start:
    lodsb              
    or al, al       
    jz halt
    int 0x10           

title db "Kernaline os bootloader.", 0 



    mov si, select    
    mov ah, 0x0e       


    lodsb              
    or al, al       
    jz halt            
    int 0x10           
Jmp start


select db "select a drive..", 0 

halt:
hlt
nohlt:

Times 510 db 0
db 0x55, 0xaa 
