0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    self.xadd = (* (sin[]:int32 (/ self.siner (double 4s))) 4s)
    self.yadd = (* (cos[]:int32 (/ self.siner (double 4s))) 4s)
    call (draw_rectangle[]:int32 (var 0s) (+ (+ self.y self.height) self.yadd) (+ (+ self.x 4s) self.xadd) (- (+ 662.y 662.sprite_height) 8s) (+ self.x self.xadd))
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (+ (+ self.y self.height) self.yadd) (+ (+ self.x 4s) self.xadd) (- (+ 662.y 662.sprite_height) 8s) (+ self.x self.xadd))) goto 0x000198
0x000184:
    call (event_user[]:int32 (var 2s))
0x000198:
    call (draw_sprite[]:int32 (+ (+ self.y self.height) self.yadd) (- (+ self.x self.xadd) 5s) (var 0s) (var 120s))
0x0001F0:
    exit
