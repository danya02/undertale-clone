0x000000:
    if !(== self.falling 0s) goto 0x000184
0x000014:
    if !(== self.bonk 1s) goto 0x000050
0x000028:
    self.hspeed = 0s
    self.vspeed = 0s
    self.bonk = 0s
    goto 0x000178
0x000050:
    push -1s
    if !(< 2s:alarm 1s) goto 0x000178
0x00006C:
    self.xxx = (/ (+ other.bbox_left other.bbox_right) (double 2s))
    self.yyy = (/ (+ other.bbox_top other.bbox_bottom) (double 2s))
    self.direction = (point_direction[]:int32 self.yyy self.xxx self.y self.x)
    self.speed = 4s
    self.speed = (+ self.speed (+ (/ (double 1s) self.size) 0.1d))
    self.hspeed = (- self.hspeed)
    self.vspeed = (- self.vspeed)
    self.shrinko = 30s
    stog.alarm[2s] = 15s
0x000178:
    self.t = 1s
0x000184:
    self.timeincrease = 1s
0x000190:
    exit
