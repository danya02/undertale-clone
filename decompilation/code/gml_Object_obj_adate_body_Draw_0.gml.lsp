0x000000:
    self.shaker = (- (random[]:int32 self.shake) (random[]:int32 self.shake))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y (+ self.x self.shaker) (var 0s) (var 805s))
    if !(== self.set 0s) goto 0x000108
0x0000A4:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y (+ self.x self.shaker) global.faceemotion (var 803s))
0x000108:
    if !(== self.set 1s) goto 0x000180
0x00011C:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y (+ self.x self.shaker) global.faceemotion (var 804s))
0x000180:
    push self.image_alpha
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) self.y (+ (- self.x 8s) self.shaker) -5s 20s:flag (var 806s))
    if !(== self.item 1s) goto 0x000268
0x000208:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 68s) self.x self.aa (var 802s))
0x000268:
    stog.alarm[3s] = 10s
0x00027C:
    exit
