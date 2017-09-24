0x000000:
    self.l = 0s
    self.t = 0s
    self.w = self.sprite_width
    self.h = self.sprite_height
    push -5s
    self.ll = (+ (- 0s:idealborder self.x) 1s)
    push -5s
    self.tt = (+ (- 2s:idealborder self.y) 1s)
    push (+ self.x self.w)
    self.ww = (- (- -5s 1s:idealborder) 1s)
    push (+ self.y self.h)
    self.hh = (- (- -5s 3s:idealborder) 1s)
    if !(> self.ll 0s) goto 0x000130
0x000114:
    self.l = (+ self.l self.ll)
0x000130:
    if !(> self.tt 0s) goto 0x000160
0x000144:
    self.t = (+ self.t self.tt)
0x000160:
    if !(> self.ww 0s) goto 0x000190
0x000174:
    self.w = (- self.w self.ww)
0x000190:
    if !(> self.hh 0s) goto 0x0001C0
0x0001A4:
    self.h = (- self.h self.hh)
0x0001C0:
    self.w = (round[]:int32 self.w)
    self.h = (round[]:int32 self.h)
    self.l = (round[]:int32 self.l)
    self.t = (round[]:int32 self.t)
    if !(> self.w 0s) goto 0x000248
0x000234:
    push (> self.h 0s)
    goto 0x00024C
0x000248:
    push 0s
0x00024C:
    if !pop goto 0x0003A4
0x000250:
    if !(< self.l self.w) goto 0x000280
0x000268:
    push (< self.t self.h)
    goto 0x000284
0x000280:
    push 0s
0x000284:
    if !pop goto 0x0003A4
0x000288:
    if !(== self.blue 1s) goto 0x0002A8
0x00029C:
    self.image_index = 1s
0x0002A8:
    call (draw_sprite_part[]:int32 (+ self.y self.t) (+ self.x self.l) (- self.h self.t) (- self.w self.l) self.t self.l self.image_index (var 106s))
    push -5s
    call (draw_sprite_part[]:int32 (- 3s:idealborder 10s) (+ self.x self.l) (- self.h self.t) (- self.w self.l) self.t self.l self.image_index (var 105s))
0x0003A4:
    push self.x
    if !(> -5s (- 0s:idealborder 5s)) goto 0x0003F4
0x0003CC:
    push self.x
    push (< -5s (- 1s:idealborder 4s))
    goto 0x0003F8
0x0003F4:
    push 0s
0x0003F8:
    if !pop goto 0x0004A8
0x0003FC:
    self.drawn = 1s
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.blue 1s) goto 0x00044C
0x000434:
    call (draw_set_color[]:int32 (var 16754964))
0x00044C:
    push (var 0s)
    call (draw_rectangle[]:int32 -5s (- 3s:idealborder 6s) (+ self.x 9s) (+ self.y 4s) (+ self.x 3s))
0x0004A8:
    if !(< (abs[]:int32 (- 743.x self.x)) 15s) goto 0x0004E4
0x0004D0:
    push (< global.invc 1s)
    goto 0x0004E8
0x0004E4:
    push 0s
0x0004E8:
    if !pop goto 0x000570
0x0004EC:
    push (var 1s)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 743s) -5s (- 3s:idealborder 2s) (+ self.x 9s) (+ self.y 2s) (+ self.x 3s))) goto 0x000570
0x00055C:
    call (event_user[]:int32 (var 1s))
0x000570:
    push self.x
    if !(< -5s (- 0s:idealborder 10s)) goto 0x0005AC
0x000598:
    push (< self.hspeed 0s)
    goto 0x0005B0
0x0005AC:
    push 0s
0x0005B0:
    if !pop goto 0x0005C0
0x0005B4:
    call (instance_destroy[]:int32 )
0x0005C0:
    push self.x
    if !(> -5s (+ 1s:idealborder 10s)) goto 0x0005FC
0x0005E8:
    push (> self.hspeed 0s)
    goto 0x000600
0x0005FC:
    push 0s
0x000600:
    if !pop goto 0x000610
0x000604:
    call (instance_destroy[]:int32 )
0x000610:
    exit
