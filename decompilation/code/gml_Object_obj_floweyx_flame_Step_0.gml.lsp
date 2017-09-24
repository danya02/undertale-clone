0x000000:
    self.image_angle = self.direction
    self.friction = 0.3d
    if !(> self.hspeed 0s) goto 0x000058
0x000038:
    self.hspeed = (- self.hspeed 0.1d)
0x000058:
    if !(< self.hspeed 0s) goto 0x00008C
0x00006C:
    self.hspeed = (+ self.hspeed 0.1d)
0x00008C:
    if !(> (+ 1581.x 8s) self.x) goto 0x0000CC
0x0000AC:
    self.hspeed = (+ self.hspeed 0.1d)
0x0000CC:
    if !(> (+ 1581.y 8s) self.y) goto 0x00010C
0x0000EC:
    self.vspeed = (+ self.vspeed 0.1d)
0x00010C:
    if !(< (+ 1581.y 8s) self.y) goto 0x00014C
0x00012C:
    self.vspeed = (- self.vspeed 0.12d)
0x00014C:
    if !(< (+ 1581.x 8s) self.x) goto 0x00018C
0x00016C:
    self.hspeed = (- self.hspeed 0.1d)
0x00018C:
    if !(> self.y 380s) goto 0x0001C0
0x0001A0:
    self.hspeed = (* self.hspeed 1.12d)
0x0001C0:
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(> self.image_index 9s) goto 0x000208
0x0001F4:
    push (< self.rp 2s)
    goto 0x00020C
0x000208:
    push 0s
0x00020C:
    if !pop goto 0x000234
0x000210:
    self.image_index = 5s
    self.rp = (+ self.rp 1s)
0x000234:
    if !(> self.image_index 18s) goto 0x0002F4
0x000248:
    if !(> self.image_alpha 0.8d) goto 0x000278
0x000264:
    self.image_alpha = 0.8d
0x000278:
    self.image_blend = (merge_color[]:int32 (var 0.1d) (var 16776960) self.image_blend)
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(<= self.image_alpha 0.1d) goto 0x0002F4
0x0002E8:
    call (instance_destroy[]:int32 )
0x0002F4:
    if !(>= self.image_index 40s) goto 0x000314
0x000308:
    call (instance_destroy[]:int32 )
0x000314:
    exit
