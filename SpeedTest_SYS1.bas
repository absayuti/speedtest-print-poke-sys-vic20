10 REM speedtest sys #1
20 REM sys 22 lines
30 GOSUB 160
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
150 REM ml code for print at: sys x,y,s$
160 ml = 828
170 FOR i = 0 TO 63
180 READ a% : POKE ml+i,a%: NEXT i
190 RETURN
200 DATA 32,19,209,32,155,215,142,123
210 DATA 3,32,19,209,32,155,215,142
220 DATA 122,3,32,19,209,32,115,0
230 DATA 32,158,205,165,7,240,30,32
240 DATA 163,214,133,251,174,122,3,172
250 DATA 123,3,24,32,240,255,160,0
260 DATA 196,251,240,9,177,34,32,210
270 DATA 255,200,76,108,3,96,0,0