10 REM speedtest print #2
20 REM print char by char
30 sm=7680: cm=38400
40 PRINT "{home}";
50 TI$="000000"
60 FOR i=0 TO 21
70   FOR j=0 TO 21
80     PRINT "{red}"CHR$(64+i);
90   NEXT
100 NEXT
110 t = TI
120 PRINT "{home}{blue}";t/60;"s"