0x000000:
    self.myinteract = 0s
    self.mychip = (instance_create[]:int32 (var 1363s) self.y (+ self.x self.sprite_width))
    push 0s
    stog.image_index* = (int32 self.mychip)
    push (+ self.depth 1s)
    stog.depth* = (int32 self.mychip)
    push 1671s
    stog.sprite_index* = (int32 self.mychip)
    push 0s
    stog.image_speed* = (int32 self.mychip)
    push 1s
    stog.visible* = (int32 self.mychip)
    self.image_speed = 0.2d
    push -5s
    if !(== 374s:flag 1s) goto 0x000108
0x0000F4:
    push (== self.room 148s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x00011C
0x000110:
    self.sprite_index = 1673s
0x00011C:
    push -5s
    if !(== 399s:flag 1s) goto 0x00014C
0x000138:
    push (== self.room 171s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x000160
0x000154:
    self.sprite_index = 1673s
0x000160:
    self.did = 0s
    if !(> global.plot 132s) goto 0x000194
0x000180:
    push (== self.room 148s)
    goto 0x000198
0x000194:
    push 0s
0x000198:
    if !pop goto 0x0001A8
0x00019C:
    self.did = 1s
0x0001A8:
    if !(> global.plot 163s) goto 0x0001D0
0x0001BC:
    push (== self.room 171s)
    goto 0x0001D4
0x0001D0:
    push 0s
0x0001D4:
    if !pop goto 0x0001E4
0x0001D8:
    self.did = 1s
0x0001E4:
    if !(== self.did 1s) goto 0x000224
0x0001F8:
    call (event_user[]:int32 (var 1s))
    self.x = (- self.x 20s)
0x000224:
    exit
