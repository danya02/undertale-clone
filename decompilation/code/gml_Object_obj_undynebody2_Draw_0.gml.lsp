0x000000:
    if !(== self.pause 1s) goto 0x000028
0x000014:
    push (== self.noanim 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000058
0x000030:
    self.siner = 0s
    self.x = (int32 self.parent):x
0x000058:
    if !(== self.noanim 1s) goto 0x0001E0
0x00006C:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y 60s) (/ self.goof (double 3s))) (- self.x 60s) (/ self.siner (double 5s)) (var 282s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 10s) (- self.x 4s) (var 0s) (var 292s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- (+ 6s self.y) 50s) self.x global.faceemotion (var 284s))
0x0001E0:
    if !(== self.noanim 0s) goto 0x00091C
0x0001F4:
    if !(== self.sine 0s) goto 0x000220
0x000208:
    self.siner = (+ self.siner 1s)
0x000220:
    self.goof = (* (sin[]:int32 (/ self.siner (double 5s))) 10s)
    self.doof = (* (cos[]:int32 (/ self.siner (double 4s))) 10s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y 10s) (/ self.goof (double 2s))) (- self.x 60s) (/ self.siner (double 5s)) (var 282s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 2s (/ self.goof (double 60s))) (var 2s) (+ (+ self.y 102s) 70s) (+ self.x 32s) (var 8s) (var 294s))
    if !(== self.off 0s) goto 0x0004C4
0x00039C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ (/ self.doof (double 4s)) 10s) (var 2s) (var 2s) (+ (+ self.y 60s) (/ self.goof 1.5d)) (+ self.x 44s) (var 0s) (var 298s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (/ self.doof (double 4s)) (var 2s) (var 2s) (+ (+ self.y 60s) (/ self.goof 1.5d)) (+ self.x 22s) (var 0s) (var 297s))
0x0004C4:
    if !(== self.off 1s) goto 0x000608
0x0004D8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ (/ self.doof (double 4s)) 20s) (var 2s) (var 2s) (+ (+ self.y 60s) (/ self.goof 1.5d)) (+ self.x 44s) (var 1s) (var 298s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- (/ self.doof (double 4s)) 10s) (var 2s) (var 2s) (+ (+ self.y 60s) (/ self.goof 1.5d)) (+ self.x 22s) (var 1s) (var 297s))
0x000608:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 2s (/ self.goof (double 50s))) (var 2s) (+ (+ (+ self.y 62s) 48s) (/ self.goof (double 3s))) (+ self.x 20s) (var 8s) (var 295s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ 6s self.y) (/ self.goof 1.5d)) (+ self.x (/ self.doof (double 4s))) global.faceemotion (var 284s))
    if !(== self.off 0s) goto 0x0007E4
0x00074C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ (/ self.doof (double 4s)) 10s) (var 2s) (var 2s) (+ (+ self.y 100s) (/ self.goof 1.5d)) (+ self.x 64s) (var 0s) (var 296s))
0x0007E4:
    if !(== self.off 1s) goto 0x00091C
0x0007F8:
    self.bidoof = (- self.bidoof 1s)
    self.sine = 1s
    self.spearalpha = (- self.spearalpha 0.03d)
    call (draw_sprite_ext[]:int32 self.spearalpha (var 16777215) (+ (+ (/ self.doof (double 4s)) 10s) self.bidoof) (var 2s) (var 2s) (- (+ (+ self.y 100s) (/ self.goof 1.5d)) (* self.bidoof 2s)) (+ self.x 64s) (var 1s) (var 296s))
    if !(< self.spearalpha -0.2d) goto 0x00091C
0x000910:
    self.noanim = 1s
0x00091C:
    exit
