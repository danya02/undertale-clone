0x000000:
    self.myletter = (string_char_at[]:int32 self.stringpos self.originalstring)
    if !(> self.shake 38s) goto 0x000058
0x000034:
    self.speed = 2s
    self.direction = (+ self.direction 20s)
0x000058:
    if !(== self.shake 42s) goto 0x000090
0x00006C:
    self.speed = 4s
    self.direction = (- self.direction 19s)
0x000090:
    if (== self.halt 3s) goto 0x0000B8
0x0000A4:
    push (== self.dfy 1s)
    goto 0x0000BC
0x0000B8:
    push 1s
0x0000BC:
    if !pop goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    exit
