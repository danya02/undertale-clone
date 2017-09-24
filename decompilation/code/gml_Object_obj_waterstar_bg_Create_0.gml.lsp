0x000000:
    self.f_test = 1s
    self.g_heart = 0s
    self.rememberx = 1570.x
    push -1s
    self.rememberview = 0s:view_xview
    stog.view_xview[0s] = 300s
    [obj_mainchara].x = 300s
    self.size = 1s
    stog.alarm[0s] = 1s
    self.scrollspeed = self.size
    self.xhome = self.xstart
    if !(== global.entrance 1s) goto 0x0002D4
0x0000B4:
    if !(< self.x 0s) goto 0x0000F8
0x0000C8:
    self.x = (+ self.x 350s)
    self.xhome = (+ self.xhome 350s)
0x0000F8:
    if !(> self.x 320s) goto 0x00013C
0x00010C:
    self.x = (- self.x 350s)
    self.xhome = (- self.xhome 350s)
0x00013C:
    if !(< self.x 0s) goto 0x000180
0x000150:
    self.x = (+ self.x 350s)
    self.xhome = (+ self.xhome 350s)
0x000180:
    if !(> self.x 320s) goto 0x0001C4
0x000194:
    self.x = (- self.x 350s)
    self.xhome = (- self.xhome 350s)
0x0001C4:
    if !(< self.x 0s) goto 0x000208
0x0001D8:
    self.x = (+ self.x 350s)
    self.xhome = (+ self.xhome 350s)
0x000208:
    if !(> self.x 320s) goto 0x00024C
0x00021C:
    self.x = (- self.x 350s)
    self.xhome = (- self.xhome 350s)
0x00024C:
    if !(< self.x 0s) goto 0x000290
0x000260:
    self.x = (+ self.x 350s)
    self.xhome = (+ self.xhome 350s)
0x000290:
    if !(> self.x 320s) goto 0x0002D4
0x0002A4:
    self.x = (- self.x 350s)
    self.xhome = (- self.xhome 350s)
0x0002D4:
    if !(== global.entrance 2s) goto 0x0003D4
0x0002E8:
    if (<= 5s 0) goto 0x0003D0
0x000300:
    push 5s
    push self.x
    if !(< self.room_width (- -1s 0s:view_wview)) goto 0x00035C
0x00032C:
    self.x = (+ self.x 350s)
    self.xhome = (+ self.xhome 350s)
0x00035C:
    push self.x
    if !(> self.room_width (- -1s 0s:view_wview)) goto 0x0003B8
0x000388:
    self.x = (- self.x 350s)
    self.xhome = (- self.xhome 350s)
0x0003B8:
    if (bool (- pop 1)) goto 0x000300
0x0003D0:
    push (- pop 1)
    pop
0x0003D4:
    self.x = self.xhome
    [obj_mainchara].x = self.rememberx
0x0003F4:
    exit
