0x000000:
    self.anger = (choose[]:int32 (var -4s) (var 4s))
    self.sp = (choose[]:int32 (var 1s) (var -1s))
    self.image_angle = 0s
    self.image_speed = 0s
    self.type = 0s
    self.j = 0s
    if !(< self.j 6s) goto 0x0001B4
0x000084:
    self.i = 0s
    if !(< self.i 7s) goto 0x000198
0x0000A4:
    self.kn = (instance_create[]:int32 (var 1625s) (+ (* (- self.sprite_width) 2s) (* self.sprite_width self.j)) (+ (* (- self.sprite_width) 4s) (* self.sprite_width self.i)))
    push (- (int32 self.kn):xstart self.x)
    stog.relx* = (int32 self.kn)
    push (- (int32 self.kn):ystart self.y)
    stog.rely* = (int32 self.kn)
    self.i = (+ self.i 1s)
    goto 0x000090
0x000198:
    self.j = (+ self.j 1s)
    goto 0x000070
0x0001B4:
    pushenv 1584s 0x0001D4
0x0001BC:
    self.soulmax = (+ self.soulmax 90s)
0x0001D4:
    popenv 0x0001BC
0x0001D8:
    self.visible = 0s
    stog.alarm[0s] = 1s
    self.con = 0s
0x000204:
    exit
