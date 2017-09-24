0x000000:
    if !(== self.sl 1s) goto 0x0002EC
0x000014:
    self.fc = 2s
    push -5s
    if !(== 11s:tempvalue 0s) goto 0x000058
0x00003C:
    push -5s
    push (== 396s:flag 5s)
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x00006C
0x000060:
    self.doom = 1s
0x00006C:
    push -5s
    if !(== 396s:flag 6s) goto 0x000094
0x000088:
    self.doom = 2s
0x000094:
    if !(== self.doom 1s) goto 0x0000F8
0x0000A8:
    if !(== self.onner 1s) goto 0x0000C8
0x0000BC:
    self.fc = 3s
0x0000C8:
    if !(== self.onner 0s) goto 0x0000EC
0x0000DC:
    self.onner = 1s
    goto 0x0000F8
0x0000EC:
    self.onner = 0s
0x0000F8:
    if (== 1570.xprevious (- 1570.x 3s)) goto 0x000138
0x000118:
    push (== 1570.xprevious (- 1570.x 2s))
    goto 0x00013C
0x000138:
    push 1s
0x00013C:
    if !pop goto 0x000168
0x000140:
    [obj_mainchara].x = (- 1570.x self.fc)
    [obj_mainchara].moving = 1s
0x000168:
    if (== 1570.xprevious (+ 1570.x 3s)) goto 0x0001A8
0x000188:
    push (== 1570.xprevious (+ 1570.x 2s))
    goto 0x0001AC
0x0001A8:
    push 1s
0x0001AC:
    if !pop goto 0x0001D8
0x0001B0:
    [obj_mainchara].x = (+ 1570.x self.fc)
    [obj_mainchara].moving = 1s
0x0001D8:
    if (== 1570.yprevious (- 1570.y 3s)) goto 0x000218
0x0001F8:
    push (== 1570.yprevious (- 1570.y 2s))
    goto 0x00021C
0x000218:
    push 1s
0x00021C:
    if !pop goto 0x000248
0x000220:
    [obj_mainchara].y = (- 1570.y self.fc)
    [obj_mainchara].moving = 1s
0x000248:
    if (== 1570.yprevious (+ 1570.y 3s)) goto 0x000288
0x000268:
    push (== 1570.yprevious (+ 1570.y 2s))
    goto 0x00028C
0x000288:
    push 1s
0x00028C:
    if !pop goto 0x0002B8
0x000290:
    [obj_mainchara].y = (+ 1570.y self.fc)
    [obj_mainchara].moving = 1s
0x0002B8:
    if !(== self.doom 2s) goto 0x0002EC
0x0002CC:
    [obj_mainchara].x = 1570.xprevious
    [obj_mainchara].y = 1570.yprevious
0x0002EC:
    [obj_mainchara].cutscene = 1s
    stog.view_xview[0s] = (- 1570.x 150s)
0x000318:
    exit
