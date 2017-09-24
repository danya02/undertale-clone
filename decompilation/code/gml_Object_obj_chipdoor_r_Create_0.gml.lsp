0x000000:
    self.myinteract = 0s
    self.x = (+ self.x self.sprite_width)
    self.mychip = (instance_create[]:int32 (var 1363s) self.y (- self.x 6s))
    push 1s
    stog.image_index* = (int32 self.mychip)
    push (+ self.depth 1s)
    stog.depth* = (int32 self.mychip)
    push 1671s
    stog.sprite_index* = (int32 self.mychip)
    push 0s
    stog.image_speed* = (int32 self.mychip)
    push 1s
    stog.visible* = (int32 self.mychip)
    self.image_xscale = -1s
    self.image_speed = 0.2d
    push -5s
    if !(== 375s:flag 1s) goto 0x00012C
0x000118:
    push (== self.room 148s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x000140
0x000134:
    self.sprite_index = 1673s
0x000140:
    push -5s
    if !(== 400s:flag 1s) goto 0x000170
0x00015C:
    push (== self.room 171s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x000184
0x000178:
    self.sprite_index = 1673s
0x000184:
    self.did = 0s
    if !(> global.plot 132s) goto 0x0001B8
0x0001A4:
    push (== self.room 148s)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x0001CC
0x0001C0:
    self.did = 1s
0x0001CC:
    if !(> global.plot 163s) goto 0x0001F4
0x0001E0:
    push (== self.room 171s)
    goto 0x0001F8
0x0001F4:
    push 0s
0x0001F8:
    if !pop goto 0x000208
0x0001FC:
    self.did = 1s
0x000208:
    if !(== self.did 1s) goto 0x000234
0x00021C:
    self.x = (+ self.x 20s)
0x000234:
    exit
