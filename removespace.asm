RemoveSpace 
              movem.l d0/a0/a1,-(a7)
              movea.l a0,a1 
              
\loop         move.b (a0)+,d0

              cmpi.b #' ',d0
              beq    \loop 
              
              
              
              move.b d0,(a1)+ 
              bne    \loop 

\quit         movem.l (a7)+,d0/a0/a1
              rts 
