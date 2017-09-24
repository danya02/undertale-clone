0x000000:
    self.image_index = global.faceemotion
    self.rr1 = (- (random[]:int32 (var 0.6d)) (random[]:int32 (var 0.6d)))
    self.rr2 = (- (random[]:int32 (var 0.6d)) (random[]:int32 (var 0.6d)))
    if !(== global.faceemotion 2s) goto 0x0000FC
0x00009C:
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 self.siner) 1s)) self.x self.image_index self.sprite_index)
0x0000FC:
    if !(== global.faceemotion 3s) goto 0x00017C
0x000110:
    call (draw_sprite[]:int32 (+ self.y (* self.rr2 1.1d)) (+ (- self.x 20s) (* self.rr1 1.1d)) (var 0s) (var 866s))
0x00017C:
    if !(!= global.faceemotion 5s) goto 0x0001B8
0x000190:
    if !(!= global.faceemotion 2s) goto 0x0001B8
0x0001A4:
    push (!= global.faceemotion 1s)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x0001EC
0x0001C0:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x0001EC:
    if (== global.faceemotion 5s) goto 0x000214
0x000200:
    push (== global.faceemotion 1s)
    goto 0x000218
0x000214:
    push 1s
0x000218:
    if !pop goto 0x000260
0x00021C:
    call (draw_sprite[]:int32 (+ self.y self.rr2) (+ self.x self.rr1) self.image_index self.sprite_index)
0x000260:
    if !(== global.faceemotion 6s) goto 0x0002A8
0x000274:
    call (draw_sprite[]:int32 self.y (- self.x 5s) self.anim (var 865s))
0x0002A8:
    self.anim = (+ self.anim 0.1d)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 124s) (var 600s) (var 120s) (var 0s))
0x000314:
    exit
