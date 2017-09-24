0x000000:
    if !(== self.pause 0s) goto 0x00011C
0x000014:
    if !(== self.sad 0s) goto 0x0000A8
0x000028:
    self.siner = (+ self.siner 1s)
    self.timer = (+ self.timer 1s)
    self.timer_e = (+ self.timer_e 1s)
    self.bodyy = (floor[]:int32 (* (sin[]:int32 (/ self.siner (double 6s))) 2s))
    goto 0x000118
0x0000A8:
    self.timer = 0s
    self.timer_e = 0s
    self.bodyy = 0s
    self.eyey = -20s
    self.siner = (+ self.siner 0.2d)
    self.mouth_index = (+ self.mouth_index 0.25d)
0x000118:
    goto 0x000164
0x00011C:
    self.siner = 0s
    self.eyey = 0s
    self.simer = 0s
    self.timer_e = 0s
    self.bodyy = 0s
    self.mouth_index = 0s
0x000164:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ (+ self.y 6s) 52s) (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) (+ self.x (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) (var 0s) (var 818s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var -2s) (+ (+ (+ self.y 6s) 52s) (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) (- (+ self.x 52s) (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) (var 0s) (var 818s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (- (+ (+ self.y 16s) 56s) (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) (+ self.x (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) (var 0s) (var 819s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var -2s) (- (+ (+ self.y 16s) 56s) (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) (- (+ self.x 52s) (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) (var 0s) (var 819s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 100s) self.x (var 0s) (var 814s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 100s) (+ self.x 50s) (var 0s) (var 814s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y self.bodyy) self.x (var 0s) (var 811s))
    if !(== self.pause 0s) goto 0x0007E4
0x000594:
    if !(== self.sad 0s) goto 0x000630
0x0005A8:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (floor[]:int32 (+ (+ (+ self.y 50s) self.bodyy) self.eyey)) (+ self.x 6s) self.eyey (var 812s))
0x000630:
    if !(== self.sad 1s) goto 0x0006CC
0x000644:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (floor[]:int32 (+ (+ (+ self.y 50s) self.bodyy) self.eyey)) (+ self.x 6s) self.mouth_index (var 812s))
0x0006CC:
    if !(== self.sad 0s) goto 0x00075C
0x0006E0:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 66s) self.bodyy) (+ self.x 8s) (floor[]:int32 self.mouth_index) (var 815s))
0x00075C:
    if !(== self.sad 1s) goto 0x0007E4
0x000770:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 66s) self.bodyy) (+ self.x 8s) (var 0s) (var 817s))
0x0007E4:
    if !(== self.pause 1s) goto 0x0008F4
0x0007F8:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (floor[]:int32 (+ (+ (+ self.y 50s) self.bodyy) self.eyey)) (+ self.x 6s) self.eyey (var 813s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 66s) self.bodyy) (+ self.x 8s) (var 0s) (var 816s))
0x0008F4:
    if !(>= self.timer 40s) goto 0x00091C
0x000908:
    push (<= self.timer 50s)
    goto 0x000920
0x00091C:
    push 0s
0x000920:
    if !pop goto 0x000944
0x000924:
    self.mouth_index = (+ self.mouth_index 0.5d)
0x000944:
    if !(== self.timer 51s) goto 0x000970
0x000958:
    self.timer = 0s
    self.mouth_index = 0s
0x000970:
    if !(== self.sad 0s) goto 0x000A44
0x000984:
    if !(> self.timer_e 90s) goto 0x0009AC
0x000998:
    push (<= self.timer_e 110s)
    goto 0x0009B0
0x0009AC:
    push 0s
0x0009B0:
    if !pop goto 0x0009D4
0x0009B4:
    self.eyey = (- self.eyey 0.8d)
0x0009D4:
    if !(> self.timer_e 150s) goto 0x0009FC
0x0009E8:
    push (<= self.timer_e 170s)
    goto 0x000A00
0x0009FC:
    push 0s
0x000A00:
    if !pop goto 0x000A24
0x000A04:
    self.eyey = (+ self.eyey 0.8d)
0x000A24:
    if !(== self.timer_e 180s) goto 0x000A44
0x000A38:
    self.timer_e = 0s
0x000A44:
    exit
