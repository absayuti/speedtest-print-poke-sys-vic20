10 REM speedtest poke #3
20 REM poke at random XY
30 sm=7680 :cm=38400
40 x=RND(-TI)
50 PRINT "{clear}"
60 TI$="000000"
70 FOR i=1 TO 1000
80   x=RND(1)*22
90   y=RND(1)*21
100  POKE sm+22*y+x,24
110  POKE cm+22*y+x,2
120 NEXT
130 t = TI
140 PRINT "{home}{blue}";t/60;"s"