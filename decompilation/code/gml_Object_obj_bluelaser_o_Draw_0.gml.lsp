0x000000:
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(!= self.active 2s) goto 0x00026C
0x000058:
    call (draw_set_alpha[]:int32 (+ (/ (abs[]:int32 (sin[]:int32 (/ self.siner (double 3s)))) (double 2s)) 0.5d))
    if !(== self.active 0s) goto 0x0000E4
0x0000B8:
    call (draw_set_alpha[]:int32 (var 0.3d))
    self.image_speed = 0s
    goto 0x0000F8
0x0000E4:
    self.image_speed = 0.5d
0x0000F8:
    if !(== self.blue 1s) goto 0x000130
0x00010C:
    call (draw_set_color[]:int32 (var 16754964))
    self.sprite_index = 1857s
0x000130:
    if !(== self.blue 2s) goto 0x000168
0x000144:
    call (draw_set_color[]:int32 (var 4235519))
    self.sprite_index = 1856s
0x000168:
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 320s) (+ self.x 11s) (+ self.y 16s) (+ self.x 8s))
    if !(== self.active 1s) goto 0x0001E4
0x0001D0:
    push (< self.activebuffer 0s)
    goto 0x0001E8
0x0001E4:
    push 0s
0x0001E8:
    if !pop goto 0x000268
0x0001EC:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (+ self.y 320s) (+ self.x 10s) (+ self.y 18s) (+ self.x 9s))) goto 0x000268
0x000254:
    call (event_user[]:int32 (var 0s))
0x000268:
    goto 0x000278
0x00026C:
    self.sprite_index = 1858s
0x000278:
    call (draw_set_alpha[]:int32 (var 1s))
    if !(== self.ex 1s) goto 0x0002BC
0x0002A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002C0
0x0002BC:
    push 0s
0x0002C0:
    if !pop goto 0x0002E4
0x0002C4:
    stog.alarm[3s] = 1s
    self.ex = 0s
0x0002E4:
    self.activebuffer = (- self.activebuffer 1s)
    if !(!= self.active 1s) goto 0x00031C
0x000310:
    self.activebuffer = 1s
0x00031C:
    exit
