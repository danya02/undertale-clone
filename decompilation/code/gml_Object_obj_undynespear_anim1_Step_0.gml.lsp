0x000000:
    if !(== self.part 1s) goto 0x0000A0
0x000014:
    self.sprite_index = 1449s
    call (scr_getideal[]:int32 (- 1570.y 5s) (- 1570.x 13s))
    self.part = 2s
    stog.alarm[4s] = 16s
    self.image_angle = (- self.image_angle 450s)
    self.curangle = self.image_angle
    self.ss = 0s
0x0000A0:
    if !(== self.part 2s) goto 0x0000F8
0x0000B4:
    self.ss = (+ self.ss 1s)
    call (scr_moveideal[]:int32 (var 16s))
    self.image_angle = (+ self.image_angle 10s)
0x0000F8:
    if !(== self.part 3s) goto 0x000148
0x00010C:
    self.image_angle = 140s
    call (instance_create[]:int32 (var 1062s) (var 155s) (var 210s))
    call (instance_destroy[]:int32 )
0x000148:
    exit
