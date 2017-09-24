0x000000:
    if !(< self.x -100s) goto 0x00006C
0x000014:
    push -1s
    if !(< 0s:view_xview 0s) goto 0x000058
0x000030:
    push -1s
    stog.view_xview[(+ 0s:view_xview 4s)] = 0s
    goto 0x00006C
0x000058:
    stog.view_xview[0s] = 0s
0x00006C:
    if !(> self.x -440s) goto 0x000094
0x000080:
    push (== self.td 0s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x000118
0x00009C:
    self.td = 1s
    push (var 1689s)
    self.t1 = (instance_create[]:int32 -1s (+ 0s:view_yview 20s) (var 10s))
    push "ASGORE"
    stog.text* = (int32 self.t1)
    push "by Toby"
    stog.text2* = (int32 self.t1)
0x000118:
    if !(> self.x 0s) goto 0x000140
0x00012C:
    push (== self.td 1s)
    goto 0x000144
0x000140:
    push 0s
0x000144:
    if !pop goto 0x0001C4
0x000148:
    push (var 1689s)
    self.t2 = (instance_create[]:int32 -1s (+ 0s:view_yview 120s) (var 10s))
    push "MONSTER#KID"
    stog.text* = (int32 self.t2)
    push "by#Magnolia Porter"
    stog.text2* = (int32 self.t2)
    self.td = 2s
0x0001C4:
    if !(>= self.x 195s) goto 0x0001EC
0x0001D8:
    push (== self.con 0s)
    goto 0x0001F0
0x0001EC:
    push 0s
0x0001F0:
    if !pop goto 0x0002A0
0x0001F4:
    self.hspeed = 0s
    self.x = 198s
    self.con = 1s
    self.sprite_index = 1389s
    self.image_index = 0s
    self.image_speed = 0.25d
    push 2451s
    stog.sprite_index* = (int32 self.asg)
    push 0s
    stog.image_speed* = (int32 self.asg)
    push 0s
    stog.image_index* = (int32 self.asg)
    stog.alarm[5s] = -1s
0x0002A0:
    if !(== self.con 1s) goto 0x0002F4
0x0002B4:
    if !(>= self.image_index 19s) goto 0x0002F4
0x0002C8:
    self.image_speed = 0s
    self.con = 2s
    stog.alarm[4s] = 30s
0x0002F4:
    if !(< self.y 360s) goto 0x00031C
0x000308:
    push (== self.td 2s)
    goto 0x000320
0x00031C:
    push 0s
0x000320:
    if !pop goto 0x000370
0x000324:
    pushenv (int32 self.t1) 0x000340
0x000334:
    self.fader = 1s
0x000340:
    popenv 0x000334
0x000344:
    pushenv (int32 self.t2) 0x000360
0x000354:
    self.fader = 1s
0x000360:
    popenv 0x000354
0x000364:
    self.td = 3s
0x000370:
    if !(bool (instance_exists[]:int32 self.t3)) goto 0x0003E8
0x000388:
    push (int32 self.t3):y
    if !(> -1s (+ 0s:view_yview 84s)) goto 0x0003E8
0x0003BC:
    push -1s
    push (+ 0s:view_yview 84s)
    stog.y* = (int32 self.t3)
0x0003E8:
    if !(== self.con 3s) goto 0x000498
0x0003FC:
    push 2450s
    stog.sprite_index* = (int32 self.asg)
    push 0.1d
    stog.image_speed* = (int32 self.asg)
    stog.alarm[5s] = 10s
    self.x = (+ self.x 13s)
    self.sprite_index = 1400s
    self.image_speed = 0.2d
    self.vspeed = -1s
    self.con = 4s
0x000498:
    if !(== self.con 4s) goto 0x0005DC
0x0004AC:
    push -1s
    if !(> 0s:view_yview 0s) goto 0x0004F0
0x0004C8:
    push -1s
    stog.view_yview[(- 0s:view_yview 1s)] = 0s
    goto 0x0005DC
0x0004F0:
    self.vspeed = -0.5d
    self.image_speed = 0.1d
    if !(bool (instance_exists[]:int32 self.t3)) goto 0x00054C
0x000530:
    push 1s
    stog.fader* = (int32 self.t3)
    goto 0x0005DC
0x00054C:
    self.vol = (- self.vol 0.01d)
    call (caster_set_volume[]:int32 self.vol (var -3s))
    push -1s
    stog.view_xview[(- 0s:view_xview 2s)] = 0s
    push -1s
    if !(< 0s:view_xview -200s) goto 0x0005DC
0x0005C8:
    call (room_goto[]:int32 (var 283s))
0x0005DC:
    exit
