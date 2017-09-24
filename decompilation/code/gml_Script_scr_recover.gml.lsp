0x000000:
    self.recovered = self.argument0
    self.maxedout = 0s
    if !(< global.hp global.maxhp) goto 0x000054
0x000034:
    global.hp = (+ global.hp self.argument0)
    goto 0x000060
0x000054:
    self.maxedout = 1s
0x000060:
    if !(>= global.hp global.maxhp) goto 0x00008C
0x000078:
    push (== self.maxedout 0s)
    goto 0x000090
0x00008C:
    push 0s
0x000090:
    if !pop goto 0x0000B0
0x000094:
    global.hp = global.maxhp
    self.maxedout = 1s
0x0000B0:
    exit
