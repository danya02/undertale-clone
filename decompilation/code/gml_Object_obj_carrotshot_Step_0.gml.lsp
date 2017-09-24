0x000000:
    if !(== self.shake 0s) goto 0x0000A8
0x000014:
    push self.x
    if !(> -5s (- 1s:idealborder self.sprite_width)) goto 0x000064
0x000040:
    self.x = self.xprevious
    self.hspeed = (- self.hspeed)
0x000064:
    push self.x
    if !(< -5s 0s:idealborder) goto 0x0000A8
0x000084:
    self.x = self.xprevious
    self.hspeed = (- self.hspeed)
0x0000A8:
    if (> self.y self.room_height) goto 0x0000D4
0x0000C0:
    push (< self.y 0s)
    goto 0x0000D8
0x0000D4:
    push 1s
0x0000D8:
    if !pop goto 0x0000E8
0x0000DC:
    call (instance_destroy[]:int32 )
0x0000E8:
    if !(== self.shake 1s) goto 0x000184
0x0000FC:
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 2s))) 2s))
    self.image_angle = (+ self.image_angle (* (sin[]:int32 (/ self.siner (double 2s))) 2s))
    self.siner = (+ self.siner 1s)
0x000184:
    if !(!= global.mnfight 2s) goto 0x0001A4
0x000198:
    call (instance_destroy[]:int32 )
0x0001A4:
    exit
