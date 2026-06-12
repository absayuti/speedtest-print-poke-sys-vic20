10 REM speedtest print #1
20 REM print 22 lines
30 sm=7680: cm=38400
40 DIM a$(21)
50 PRINT"{clear}setting up strings..."
60 FOR i=0 TO 21
70   FOR j=0 TO 21
80     a$(i)=a$(i)+chr$(64+i)
90   NEXT
100 NEXT
110 REM **************
120 PRINT "{home}{red}";
130 TI$="000000"
140 FOR i=0 TO 21
150   PRINT a$(i);
160 NEXT
170 t = TI
180 PRINT "{home}{blue}";t/60;"s"