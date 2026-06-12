10 REM speedtest poke #1
20 REM poke 22 lines
30 sm=7680 :cm=38400
40 x=RND(-TI)
50 PRINT "{clear}"
60 TI$="000000"
70 FOR i=0 TO 21
80   FOR j=0 TO 21
90     POKE sm+22*i+j,i
100    POKE cm+22*i+j,2
110   NEXT
120 NEXT
130 t = TI
140 PRINT "{home}{blue}";t/60;"s"