0x000000:
    self.check = 1s
    if !(== self.blue 1s) goto 0x000064
0x000020:
    if !(== 1570.x 1570.xprevious) goto 0x000050
0x000038:
    push (== 1570.y 1570.yprevious)
    goto 0x000054
0x000050:
    push 0s
0x000054:
    if !pop goto 0x000064
0x000058:
    self.check = 0s
0x000064:
    if !(== self.blue 2s) goto 0x0000BC
0x000078:
    if (!= 1570.x 1570.xprevious) goto 0x0000A8
0x000090:
    push (!= 1570.y 1570.yprevious)
    goto 0x0000AC
0x0000A8:
    push 1s
0x0000AC:
    if !pop goto 0x0000BC
0x0000B0:
    self.check = 0s
0x0000BC:
    if !(== self.check 1s) goto 0x0000E4
0x0000D0:
    push (== global.interact 0s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x0001C8
0x0000EC:
    global.border = 20s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    stog.flag[370s] = 2s
    if (== self.room 192s) goto 0x00015C
0x000148:
    push (== self.room 193s)
    goto 0x000160
0x00015C:
    push 1s
0x000160:
    if !pop goto 0x000178
0x000164:
    stog.flag[370s] = 3s
0x000178:
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 144s) (var 0s) (var 0s))
    [obj_bluelaser_o].active = 0s
    push 60s
    push 1281s
    stog.alarm[] = 0s
0x0001C8:
    exit
