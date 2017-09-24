0x000000:
    if (== self.room 24s) goto 0x000028
0x000014:
    push (== self.room 26s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x0000EC
0x000030:
    global.interact = 4s
    global.phasing = 1s
    if !(== self.room 24s) goto 0x000080
0x00005C:
    push -5s
    stog.flag[(+ 51s:flag 1s)] = 51s
0x000080:
    stog.alarm[1s] = 30s
    stog.alarm[2s] = 30s
    call (snd_play[]:int32 (var 106s))
    call (instance_create[]:int32 (var 921s) (+ 1570.y 20s) 1570.x)
    goto 0x000184
0x0000EC:
    self.myinteract = 3s
    if !(== self.room 23s) goto 0x000118
0x00010C:
    global.msc = 519s
0x000118:
    if !(== self.room 25s) goto 0x000138
0x00012C:
    global.msc = 521s
0x000138:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000184:
    exit
