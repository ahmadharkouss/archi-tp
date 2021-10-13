         org    $4
          
Vector_001 dc.l  Main
          
          org    $500
          
Main      move.b #18,d0 ; 18 -> D0.B
          move.b #12,d1 ; 12 -> d1.B
          add.b  d0,d1  ; 0.B + D1.B -> D1.B (12 + 18 = 30).
 
          illegal       ; Point d'arret sur une instruction
          org    $550
NUMBER1   dc.w   $2222  ;
NUMBER2   dc.w   $5555 ;
SUM	      ds.w   1    ;
          
          
