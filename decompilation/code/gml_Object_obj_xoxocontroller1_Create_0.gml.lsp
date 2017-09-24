0x000000:
    self.vic = 0s
    self.fvic = 0s
    self.image_speed = 0s
    if !(>= (scr_murderlv[]:int32 ) 4s) goto 0x000054
0x000038:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x0000B8
0x00005C:
    if !(< global.plot 57s) goto 0x00007C
0x000070:
    global.plot = 57s
0x00007C:
    if !(== self.room 63s) goto 0x0000A4
0x000090:
    push (< global.plot 63s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000B8
0x0000AC:
    global.plot = 63s
0x0000B8:
    exit
