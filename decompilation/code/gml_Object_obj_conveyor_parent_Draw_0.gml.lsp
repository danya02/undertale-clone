0x000000:
    if !(> self.image_yscale 1s) goto 0x000194
0x000014:
    self.i = 0s
    if !(< self.i self.image_yscale) goto 0x000194
0x000038:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 20s)) self.x self.image_index self.sprite_index)
    if !(> self.image_xscale 1s) goto 0x000178
0x0000B8:
    self.j = 0s
    if !(< self.j self.image_xscale) goto 0x000178
0x0000DC:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 20s)) (+ self.x (* self.j 20s)) self.image_index self.sprite_index)
    self.j = (+ self.j 1s)
    goto 0x0000C4
0x000178:
    self.i = (+ self.i 1s)
    goto 0x000020
0x000194:
    if !(> self.image_xscale 1s) goto 0x0001BC
0x0001A8:
    push (== self.image_yscale 1s)
    goto 0x0001C0
0x0001BC:
    push 0s
0x0001C0:
    if !pop goto 0x000284
0x0001C4:
    self.j = 0s
    if !(< self.j self.image_xscale) goto 0x000284
0x0001E8:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 20s)) (+ self.x (* self.j 20s)) self.image_index self.sprite_index)
    self.j = (+ self.j 1s)
    goto 0x0001D0
0x000284:
    if !(== self.image_xscale 1s) goto 0x0002AC
0x000298:
    push (== self.image_yscale 1s)
    goto 0x0002B0
0x0002AC:
    push 0s
0x0002B0:
    if !pop goto 0x0002E0
0x0002B4:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x0002E0:
    exit
