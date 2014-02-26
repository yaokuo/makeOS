;hello-os

;fat12 fs
db 0xeb,0x4e,0x90  ;this is a jum instruction

db "hellooipl"
dw 512             ;just like db ,but bytemaximum=255,so we use define word
db 1               ;1cluster == here 1sector ,for other fs 1 cluster is not 1sector
dw 1		   ;the start point of fat ,for the first one sector
db 2               ;the numbers of fat ,i don`t know why
dw 224             ;root directory size =224
dw 2880            ;how big the floppy is ,2880 sectors
db 0xf0            ;the type of disk ,must be 0xf0
dw 9               ;fat table length ,must 9 sector
dw 18              ; one track has 18 sectors
dw 2               ; 2 heads
dd 0               ;no partition ,must be 0
dd 2880            ;write again ,how big the floppy is
db 0,0,0x29        ; no meaning ,but fixed
dd 0xffffffff      ;maybe something
db "hello-os  "    ;11 bytes  ,name of disk
db "fat12   "      ;8  bytes ,format of disk
resb 18            ; leave 18 bytes alone

;the code is here
db 0xb8, 0x00,0x00,0x8e,0xd0,0xbc,0x00,0x7c
db 0x8e, 0xd8,0x8e,0xc0,0xbe,0x74,0x7c,0x8a 
db 0x04, 0x83,0xc6,0x01,0x3c,0x00,0x74,0x09
db 0xb4, 0x0e,0xbb,0x0f,0x00,0xcd,0x10,0xeb
db 0xee, 0xf4,0xeb,0xfd

;this is information for display
db 0x0a,0x0a   ; two \n
db "hello,world"
db 0x0a
;RESB 0x1fe-$  ; i don`t know why this have an error,so use tiems
times 510-($-$$) db 0
db 0x55, 0xaa
