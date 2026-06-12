10 REM speedtest sys #2
20 REM sys char by char
30 GOSUB 150
40 x=RND(-TI)
50 PRINT "{clear}"
60 TI$="000000"
70 FOR i=0 TO 21
80   FOR j=0 TO 21
90    SYS ml,j,i,"{red}"+CHR$(64+i)
100  NEXT
110 NEXT
120 t = TI
130 PRINT "{home}{blue}";t/60;"s"
140 END
!------------------------------------------------------------------------------
!- ML CODE FOR PRINT AT: SYS X,Y,S$
150 ml = 828
160 FOR i = 0 TO 63
170 READ a% : POKE ml+i,a%: NEXT i
180 RETURN
190 DATA 32,19,209,32,155,215,142,123
200 DATA 3,32,19,209,32,155,215,142
210 DATA 122,3,32,19,209,32,115,0
220 DATA 32,158,205,165,7,240,30,32
230 DATA 163,214,133,251,174,122,3,172
240 DATA 123,3,24,32,240,255,160,0
250 DATA 196,251,240,9,177,34,32,210
260 DATA 255,200,76,108,3,96,0,0