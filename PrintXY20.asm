; PRINT AT X,Y,string

; Target: Unexpanded VIC-20 (Example starts at $1D00 / 7424)
* = $033C

CHKCOM  = $D113         ; Check for comma
GETBYT  = $D79B         ; Evaluates expression, returns byte in .X
CHRGET  = $0073         ; Get next character
FRMEVL  = $CD9E         ; Evaluate formula
FRESTR  = $D6A3         ; Get string descriptor
GETINT  = $D1AA         ; Convert the FAC result to a 16-bit integer
TXTPTR  = $7A           ; Pointer to current expression (by BASIC)
VALTYP  = $07           ; Result: flag 0 = numeric / $FF = string
FACC    = $61           ; Result: Floating Point Accumulator ($61-$66)
DESCR   = $22           ; Result: String descriptor
ZTEMP   = $FB           ; Zero page storage 

;SCREEN  = $1E00        ; Screen location for unexpanded VIC
SCREEN  = $1000         ; Screen location for VIC + 8K
PLOT    = $FFF0         ; X = Row, Y = Column number. Must CLC before calling
CHROUT  = $FFD2         ; Print the character at cursor position

Param1
        JSR CHKCOM
        JSR GETBYT
        STX COLUMN
Param2
        JSR CHKCOM
        JSR GETBYT
        STX ROW
Param3
        JSR CHKCOM
        JSR CHRGET
        JSR FRMEVL
        LDA VALTYP
        BEQ Done        ; If not string, skip this
GetString
        JSR FRESTR
        STA ZTEMP       ; Save length of string
MoveCursor
        LDX ROW
        LDY COLUMN
        CLC
        JSR PLOT
PrintString
        LDY #$00        ; Reset index        
Ploop
        CPY ZTEMP       ; Reached length of string?
        BEQ Done
        LDA (DESCR),Y   ; Get next char in string
        JSR CHROUT
        INY             ; Next char
        JMP Ploop
Done
        RTS
;----------------------------------------
ROW     byte 0
COLUMN  byte 0

