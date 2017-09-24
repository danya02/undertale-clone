0x000000:
    if !(== self.golf 0s) goto 0x000028
0x000014:
    push (== self.falling 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0001B8
0x000030:
    self.y = self.yprevious
    self.x = self.xprevious
    if !(<= self.speed 0.06d) goto 0x00007C
0x00006C:
    self.speed = 0s
    goto 0x00009C
0x00007C:
    self.speed = (- self.speed 0.05d)
0x00009C:
    if !(< other.bbox_right self.bbox_left) goto 0x0000E0
0x0000B4:
    self.x = (+ self.x 2s)
    self.hspeed = (- self.hspeed)
0x0000E0:
    if !(> other.bbox_left self.bbox_right) goto 0x000124
0x0000F8:
    self.x = (- self.x 2s)
    self.hspeed = (- self.hspeed)
0x000124:
    if !(> other.bbox_top self.bbox_bottom) goto 0x000168
0x00013C:
    self.y = (- self.y 2s)
    self.vspeed = (- self.vspeed)
0x000168:
    if !(< other.bbox_bottom self.bbox_top) goto 0x0001AC
0x000180:
    self.y = (+ self.y 2s)
    self.vspeed = (- self.vspeed)
0x0001AC:
    self.golf = 1s
0x0001B8:
    exit
