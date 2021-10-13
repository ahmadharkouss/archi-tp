ismaxerror     movem.l  d0/a0,-(a7)
               
               jsr      Strlen 
               
               cmpi.l   #5,d0
               bhi      \true 
               blo      \false 
               
               
               cmpi.b  #'3',(a0)+                
               bhi     \true                
               blo     \false
               cmpi.b  #'2',(a0)+               
               bhi     \true                
               blo     \false
               cmpi.b  #'7',(a0)+                
               bhi     \true               
               blo     \false
               cmpi.b  #'6',(a0)+               
               bhi     \true                
               blo     \false
               cmpi.b  #'7',(a0)                
               bhi     \true

\false         andi.b   #%11111011,ccr
               bra      \quit 
               

\true          ori.b     #%00000100,ccr

\quit          movem.l (a7)+,d0/a0
               rts
