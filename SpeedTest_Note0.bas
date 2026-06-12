!- SpeedTest - Note #0
!-
10 POKE 36879,110 : PRINT"{clear}{white}{ct n}"
!-
!- Screen and color memories
60 sm=7680:cm=38400
!------------------------------------------------------------------------------
!-  Main Routine
!---------------!---------!---------!-!
200 PRINT: PRINT"{clear}{yellow} *** Speed Test ***"
210 PRINT: PRINT"  PRINT, POKE, SYS"
215 GOSUB 3100
220 PRINT: PRINT"{white}How fast or slow are"
230 PRINT: PRINT" the 3 commands in"
240 PRINT: PRINT" putting characters"
250 PRINT: PRINT" & strings onto the"
260 PRINT: PRINT"      screen?"
270 GOSUB 3000
!---------------!---------!---------!-!
280 PRINT: PRINT"{yellow}3 types of test:"
290 PRINT: PRINT"{white}{down}#1-Line by line"
300 PRINT: PRINT"{down}#2-Character by char."
310 PRINT: PRINT"{down}#3-Random positions"
320 GOSUB 3000
!---------------!---------!---------!-!
330 PRINT: PRINT"{yellow}{reverse on}Test #1{reverse off}"
340 PRINT: PRINT"{white}PRINT 22 strings of"
350 PRINT: PRINT"characters to fill in"
360 PRINT: PRINT"the screen, except"
370 PRINT: PRINT"the last line."
380 GOSUB 3000
400 PRINT: PRINT"{yellow}{reverse on}1a: PRINT 22 lines{reverse off}"
405 PRINT
410 PRINT: PRINT"{white}Using PRINT command"
420 PRINT: PRINT"to print an array of"
430 PRINT: PRINT"strings."
432 PRINT
435 PRINT: PRINT"{cyan}Time is measured with"
438 PRINT: PRINT"TI$ and TI."
440 GOSUB 3000
450 PRINT: PRINT"{yellow}{reverse on}1b: POKE 22 lines{reverse off}"
455 PRINT
460 PRINT: PRINT"{white}Using FOR-loops to"
470 PRINT: PRINT"POKE 22 characters"
480 PRINT: PRINT"by 22 lines."
485 PRINT: PRINT"{down}Also POKE colours"
488 PRINT: PRINT"for the characters."
490 GOSUB 3000
500 PRINT: PRINT"{yellow}{reverse on}1c: SYS 22 lines{reverse off}"
505 PRINT
510 PRINT: PRINT"{white}SYS calls a machine"
520 PRINT: PRINT"language routine (ML)"
530 PRINT: PRINT"that accepts a string"
540 PRINT: PRINT"plus X & Y as"
550 PRINT: PRINT"position on screen."
570 GOSUB 3000
580 PRINT :PRINT"{cyan}{reverse on}Test #2{reverse off}"
582 PRINT :PRINT"{white}Fill the screen with"
584 PRINT :PRINT"rows of characters,"
586 PRINT :PRINT"one character at a"
588 PRINT :PRINT"time."
594 GOSUB 3000
600 PRINT: PRINT"{cyan}{reverse on}2a: PRINT chars{reverse off}"
605 PRINT
610 PRINT: PRINT"{white}This time PRINT a"
620 PRINT: PRINT"character at a time"
630 PRINT: PRINT"in FOR-loops."
640 GOSUB 3000
650 PRINT: PRINT"{cyan}{reverse on}2b: POKE chars{reverse off}"
655 PRINT
660 PRINT: PRINT"{white}Same as previous"
670 PRINT: PRINT"POKEs routine."
680 PRINT: PRINT"{down}FOR-loops, POKE char"
685 PRINT: PRINT"and colours. 22x22"
688 PRINT: PRINT"times."
690 GOSUB 3000
700 PRINT: PRINT"{cyan}{reverse on}2c: SYS chars{reverse off}"
705 print
710 PRINT: PRINT"{white}Similar to POKEs,"
720 PRINT: PRINT"FOR-loops, SYS string"
730 PRINT: PRINT"22x22 times."
740 gosub 3000
!---------------!---------!---------!-!
742 PRINT: PRINT"{green}{reverse on}Test #3{reverse off}"
744 PRINT: PRINT"{white}Output a character"
746 PRINT: PRINT"at a random location"
748 PRINT: PRINT"XY on screen."
749 GOSUB 3000
750 PRINT: PRINT"{green}{reverse on}3a: PRINT at XY loca-"
760 PRINT: PRINT"{reverse on}tion on screen"
765 print
770 PRINT: PRINT"{white}X&Y computed randomly"
780 PRINT: PRINT"1000 times."
790 PRINT: PRINT"Positioning done with"
792 PRINT: PRINT"LEFT$(R$,N) trick."
795 GOSUB 3000
800 PRINT: PRINT"{green}{reverse on}3b: POKE at XY locn.{reverse off}"
805 print
810 PRINT: PRINT"{white}Position calculated"
820 PRINT: PRINT"using 7680+22*Y+X."
830 PRINT: PRINT"{down}Also POKE colours too."
840 GOSUB 3000
!---------------!---------!---------!-!
850 PRINT: PRINT"{green}{reverse on}3c: SYS at XY locn.{reverse off}"
855 print
860 PRINT: PRINT"{white}X,Y randomly computed"
870 PRINT: PRINT"ML called like so:"
880 PRINT: PRINT"{down}SYS ML,X,Y,A$."
890 GOSUB 3000
900 PRINT: PRINT"{yellow}{reverse on}  ** RESULT **  {reverse off}{white}"
910 PRINT: PRINT"TEST :   1    2    3"
920 PRINT: PRINT"PRINT: 0.25 3.18 31.3"
930 PRINT: PRINT"POKE : 7.97 7.92 35.6"
940 PRINT: PRINT"SYS  : 4.93 4.93 22.0"
950 PRINT: PRINT"       All in seconds"
960 GOSUB 3000
970 PRINT: PRINT"{purple}{reverse on}  ** CONCLUSION **"
972 PRINT: PRINT"{yellow}PRINT{white} is the fastest"
974 PRINT: PRINT"in filling up screen."
976 PRINT: PRINT"{down}{cyan}SYS{white} (ml) is the best"
978 PRINT: PRINT"to position a single"
980 PRINT: PRINT"character on screen."
982 PRINT: PRINT"{down}{green}POKE{white} is worst overall."
984 GOSUB 3100
988 PRINT: PRINT: PRINT 
990 END
!------------------------------------------------------------------------------
!- Wait for keypress & clear
3000 GET k$: IF k$="" THEN 3000
3010 PRINT"{clear}";
3020 RETURN
!------------------------------------------------------------------------------
!- Wait for keypress, skip few lines
3100 GET k$: IF k$="" THEN 3100
3110 PRINT: PRINT: PRINT
3120 RETURN
