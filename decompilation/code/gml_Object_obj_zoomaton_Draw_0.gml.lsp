0x000000:
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) self.scalefactor self.scalefactor self.y self.x self.height self.width self.top self.left (var 0s) self.sprite_index)
    if !(== self.on 0s) goto 0x0000B8
0x000084:
    if !(< self.image_alpha 1s) goto 0x0000B8
0x000098:
    self.image_alpha = (+ self.image_alpha 0.03d)
0x0000B8:
    if !(== self.on 1s) goto 0x000178
0x0000CC:
    self.left = (+ self.left self.ldiff)
    self.top = (+ self.top self.tdiff)
    self.height = (+ self.height self.hdiff)
    self.width = (+ self.width self.wdiff)
    self.scalefactor = (+ self.scalefactor self.sdiff)
    if !(<= self.left 0s) goto 0x000178
0x00016C:
    self.on = 2s
0x000178:
    if !(> self.on 1s) goto 0x0001A4
0x00018C:
    self.on = (+ self.on 1s)
0x0001A4:
    if !(> self.on 60s) goto 0x000200
0x0001B8:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(< self.image_alpha 0.05d) goto 0x000200
0x0001F4:
    call (instance_destroy[]:int32 )
0x000200:
    exit
