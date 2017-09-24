0x000000:
    self.image_angle = (+ self.image_angle 10s)
    if !(< self.image_alpha 1s) goto 0x00004C
0x00002C:
    self.image_alpha = (+ self.image_alpha 0.1d)
0x00004C:
    push self.y
    if !(> -5s 3s:idealborder) goto 0x000080
0x00006C:
    push (> self.vspeed 0s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x0000D0
0x000088:
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(< self.image_alpha 0.1d) goto 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 10s) (+ self.x 10s) (- self.y 10s) (- self.x 10s))) goto 0x00014C
0x000138:
    call (event_user[]:int32 (var 0s))
0x00014C:
    exit
