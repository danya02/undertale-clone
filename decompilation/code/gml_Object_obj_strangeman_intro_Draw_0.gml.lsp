0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    push -5s
    push 3s:idealborder
    push -5s
    call (draw_rectangle[]:int32 (+ 1s:idealborder 100s) -5s 2s:idealborder -5s (+ 1s:idealborder 1s))
    push self.x
    if !(< -5s (+ (- 1s:idealborder self.sprite_width) 20s)) goto 0x000118
0x000104:
    push (== self.con 0s)
    goto 0x00011C
0x000118:
    push 0s
0x00011C:
    if !pop goto 0x000170
0x000120:
    self.nowx = self.x
    self.nowy = self.y
    self.hspeed = 0s
    self.image_index = 0s
    self.image_speed = 0s
    self.con = 1s
0x000170:
    if !(== self.con 1s) goto 0x0001B8
0x000184:
    self.con = 2s
    stog.alarm[5s] = 60s
    stog.alarm[4s] = 130s
0x0001B8:
    if !(== self.con 3s) goto 0x000204
0x0001CC:
    self.shake = 1s
    self.sprite_index = 699s
    self.con = 4s
    stog.alarm[4s] = 80s
0x000204:
    if !(== self.con 5s) goto 0x00026C
0x000218:
    self.nowy = (+ self.nowy 14s)
    self.shake = 2s
    self.sprite_index = 698s
    self.y = (+ self.y 14s)
    self.con = 6s
0x00026C:
    if !(> self.shake 0s) goto 0x000310
0x000280:
    self.shake = (+ self.shake 0.03d)
    self.x = (- (+ self.nowx (random[]:int32 self.shake)) (random[]:int32 self.shake))
    self.y = (- (+ self.nowy (random[]:int32 self.shake)) (random[]:int32 self.shake))
0x000310:
    if !(< global.turntimer 1s) goto 0x000330
0x000324:
    call (instance_destroy[]:int32 )
0x000330:
    exit
