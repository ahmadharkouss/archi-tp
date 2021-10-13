convert  
         tst.b (a0) 
         beq   \false 
         
         
         jsr  ischarerror 
         beq  \false
         
         jsr ismaxerror
         beq  \false 
         
         jsr  atoui

\false ori.b   #11111011,ccr  
       rts     


\true  ori.b   #00000100,ccr
       rts 
