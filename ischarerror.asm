ischarerror 
             movem.l  d0/a0,-(a7)
             
\loop        move.b (a0)+,d0
             beq    \false 
             
             cmpi.b  #'0',d0
             blo     \true
             
             
             
             cmpi.b  #'9',d0   
             bls     \loop
             
\true        ori.b    #%00000100,ccr
             bra      \quit 


\false       andi.b    #%11111011,ccr


\quit        movem.l (a7)+,d0/a0
             rts
