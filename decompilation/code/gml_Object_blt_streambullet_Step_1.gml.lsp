0x000000:
    if !(== self.dropdown 1s) goto 0x000054
0x000014:
    if !(> self.x (- 743.x 4s)) goto 0x000054
0x000034:
    push (< self.x (+ 743.x 10s))
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x0000B4
0x00005C:
    self.gravity = 0.1d
    self.gravity_direction = 270s
    self.hspeed = 0s
    self.vspeed = 1.5d
    self.dropdown = 0s
    self.image_angle = 0s
0x0000B4:
    exit
