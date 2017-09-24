0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) self.image_yscale self.image_xscale (+ self.ystart (random[]:int32 self.r)) (+ self.xstart (random[]:int32 self.r)) self.image_index self.sprite_index)
    if !(!= self.atk 3s) goto 0x000114
0x000094:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) self.image_yscale self.image_xscale (+ self.facey (random[]:int32 self.r)) (+ self.facex (random[]:int32 self.r)) self.image_index (var 254s))
0x000114:
    if !(< self.r 2s) goto 0x000148
0x000128:
    self.r = (+ self.r 0.01d)
0x000148:
    if !(> self.atk 0s) goto 0x000168
0x00015C:
    self.r = 0s
0x000168:
    self.facetime = (+ self.facetime 1s)
    if !(> self.facetime 300s) goto 0x0001B4
0x000194:
    push (< self.facex (+ self.x 100s))
    goto 0x0001B8
0x0001B4:
    push 0s
0x0001B8:
    if !pop goto 0x0001DC
0x0001BC:
    self.facex = (+ self.facex 0.01d)
0x0001DC:
    if !(== self.atk 3s) goto 0x000294
0x0001F0:
    if !(< self.smuggy 100s) goto 0x00021C
0x000204:
    self.smuggy = (+ self.smuggy 1s)
0x00021C:
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) (var 1s) (var 1s) self.y (+ self.x 100s) self.smuggy (var 100s) (var 0s) (var 0s) (var 0s) (var 250s))
0x000294:
    exit
