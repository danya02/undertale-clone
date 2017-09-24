0x000000:
    stog.view_xview[0s] = 300s
    [obj_mainchara].x = 300s
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.image_alpha = (+ (/ self.size (double 2s)) 0.2d)
    self.y = (+ (+ (- self.ystart 15s) (random[]:int32 (var 5s))) (/ (double 30s) self.size))
    self.scrollspeed = (+ (/ self.size (double 5s)) 0.1d)
    self.image_index = (random[]:int32 (var 10s))
    self.image_speed = 0.25d
    self.go = 1s
    [obj_mainchara].x = self.rememberx
    stog.view_xview[0s] = self.rememberview
    self.x = self.xhome
    if !(> 1570.x (- self.room_width 90s)) goto 0x0001E8
0x00016C:
    if (<= 5s 0) goto 0x0001E4
0x000184:
    push 5s
    if !(> self.x self.room_width) goto 0x0001CC
0x00019C:
    self.x = (- self.x 320s)
    self.xhome = (- self.xhome 320s)
0x0001CC:
    if (bool (- pop 1)) goto 0x000184
0x0001E4:
    push (- pop 1)
    pop
0x0001E8:
    exit
