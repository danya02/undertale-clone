0x000000:
    if !(== self.active 1s) goto 0x00021C
0x000014:
    if !(< self.image_xscale 1s) goto 0x000074
0x000028:
    self.image_xscale = (+ self.image_xscale 0.08d)
    if !(> self.image_xscale 0.2d) goto 0x000070
0x000064:
    self.visible = 1s
0x000070:
    goto 0x0000B4
0x000074:
    if !(== self.con 0s) goto 0x0000B4
0x000088:
    self.image_xscale = 1s
    self.con = 2s
    stog.alarm[4s] = 10s
0x0000B4:
    if !(== self.con 3s) goto 0x0000E8
0x0000C8:
    self.con = 4s
    stog.alarm[4s] = 3s
0x0000E8:
    if !(== self.con 4s) goto 0x000164
0x0000FC:
    push 160s
    push (+ -1s (* 4s:alarm 23.3333333333333d))
    self.image_blend = (make_color_rgb[]:int32 160s (+ -1s (* 4s:alarm 23.3333333333333d)) (var 255s))
0x000164:
    if !(== self.con 5s) goto 0x00021C
0x000178:
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(== self.memorymode 0s) goto 0x0001D4
0x0001AC:
    if !(< self.image_alpha 0.1d) goto 0x0001D4
0x0001C8:
    call (instance_destroy[]:int32 )
0x0001D4:
    if !(== self.memorymode 1s) goto 0x00021C
0x0001E8:
    if !(< self.image_alpha 0.1d) goto 0x00021C
0x000204:
    self.visible = 0s
    self.active = 0s
0x00021C:
    exit
