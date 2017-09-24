0x000000:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    push (+ -5s 2s:monster)
    if !(== (- -5s (int32 self.myself):monster) 0s) goto 0x00006C
0x000060:
    self.mercymod = 100s
0x00006C:
    if !(> self.mercymod 0s) goto 0x0000A0
0x000080:
    self.sprite_index = 188s
    self.image_speed = 0.1d
0x0000A0:
    self.blcon = (instance_create[]:int32 (var 186s) self.ystart (- (+ self.x self.sprite_width) 8s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(< self.mercymod 0s) goto 0x0002C0
0x000110:
    if !(>= self.mycommand 0s) goto 0x000138
0x000124:
    push (< self.mycommand 20s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x000158
0x000140:
    stog.msg[0s] = "FILTHY&SINGLE&MINDER.."
0x000158:
    if !(>= self.mycommand 20s) goto 0x000180
0x00016C:
    push (< self.mycommand 40s)
    goto 0x000184
0x000180:
    push 0s
0x000184:
    if !pop goto 0x0001A0
0x000188:
    stog.msg[0s] = "OBEY&THE&OVERMIND&.."
0x0001A0:
    if !(>= self.mycommand 40s) goto 0x0001C8
0x0001B4:
    push (< self.mycommand 60s)
    goto 0x0001CC
0x0001C8:
    push 0s
0x0001CC:
    if !pop goto 0x0001E8
0x0001D0:
    stog.msg[0s] = "LEGION!&WE&ARE&LEGION"
0x0001E8:
    if !(>= self.mycommand 60s) goto 0x000210
0x0001FC:
    push (<= self.mycommand 80s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x000230
0x000218:
    stog.msg[0s] = "HEED&THE&SWARM"
0x000230:
    if !(>= self.mycommand 80s) goto 0x000258
0x000244:
    push (<= self.mycommand 100s)
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x000278
0x000260:
    stog.msg[0s] = "IN&UNISON,&NOW"
0x000278:
    if (== self.whatiheard 1s) goto 0x0002A0
0x00028C:
    push (== self.whatiheard 3s)
    goto 0x0002A4
0x0002A0:
    push 1s
0x0002A4:
    if !pop goto 0x0002C0
0x0002A8:
    stog.msg[0s] = "I&DON'T&CARE."
0x0002C0:
    if !(> self.mercymod 0s) goto 0x000484
0x0002D4:
    if !(>= self.mycommand 0s) goto 0x0002FC
0x0002E8:
    push (< self.mycommand 20s)
    goto 0x000300
0x0002FC:
    push 0s
0x000300:
    if !pop goto 0x00031C
0x000304:
    stog.msg[0s] = "Bein' me&is the&best!"
0x00031C:
    if !(>= self.mycommand 20s) goto 0x000344
0x000330:
    push (< self.mycommand 40s)
    goto 0x000348
0x000344:
    push 0s
0x000348:
    if !pop goto 0x000364
0x00034C:
    stog.msg[0s] = "La la~&Just be&yourself~"
0x000364:
    if !(>= self.mycommand 40s) goto 0x00038C
0x000378:
    push (< self.mycommand 60s)
    goto 0x000390
0x00038C:
    push 0s
0x000390:
    if !pop goto 0x0003AC
0x000394:
    stog.msg[0s] = "Nothin'&like&alone&time!"
0x0003AC:
    if !(>= self.mycommand 60s) goto 0x0003D4
0x0003C0:
    push (<= self.mycommand 80s)
    goto 0x0003D8
0x0003D4:
    push 0s
0x0003D8:
    if !pop goto 0x0003F4
0x0003DC:
    stog.msg[0s] = "Mmm, cha&cha cha!"
0x0003F4:
    if !(>= self.mycommand 80s) goto 0x00041C
0x000408:
    push (<= self.mycommand 100s)
    goto 0x000420
0x00041C:
    push 0s
0x000420:
    if !pop goto 0x00043C
0x000424:
    stog.msg[0s] = "Swing&your&arms,&baby"
0x00043C:
    if (== self.whatiheard 1s) goto 0x000464
0x000450:
    push (== self.whatiheard 3s)
    goto 0x000468
0x000464:
    push 1s
0x000468:
    if !pop goto 0x000484
0x00046C:
    stog.msg[0s] = "Hiya~"
0x000484:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 3s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000594:
    exit
