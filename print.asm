          org   $0 
          
vector_000  dc.l  $ffb500
vector_001  dc.l    Main
          
            org     $500
            lea     sTest,a0
            move.b  #24,d1
            move.b  #20,d2
            jsr     Print
          
            illegal
          
          
Print     




PrintChar incbin "PrintChar.bin"





stest     dc.b  "Hello World",0

           
