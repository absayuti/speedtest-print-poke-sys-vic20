10 REM speedtest print #3
20 REM print at random XY
30 r$="{home}{down*22}" :c$="{right*21}"
40 x=RND(-TI)
50 PRINT "{clear}"
60 TI$="000000"
70 FOR i=1 TO 1000
80   x=RND(1)*22
90   y=RND(1)*22+1
100   PRINT LEFT$(r$,y)LEFT$(c$,x)"{red}x";
110 NEXT
120 t = TI
130 PRINT "{home}{blue}";t/60;"s"