0x000000:
    if !(>= self.create 0s) goto 0x0000D8
0x000014:
    call (draw_sprite_ext[]:int32 (- 1s (/ self.create (double 10s))) (var 16777215) (* self.create 10s) (+ 1s (/ self.create (double 10s))) (+ 1s (/ self.create (double 10s))) (+ self.y 10s) (+ self.x 10s) (var 0s) (var 1812s))
    self.create = (- self.create 1s)
0x0000D8:
    if !(< self.create 0s) goto 0x000118
0x0000EC:
    call (draw_sprite[]:int32 self.cury self.curx self.image_index self.sprite_index)
0x000118:
    if !(> self.curx self.x) goto 0x000148
0x000130:
    self.curx = (- self.curx 5s)
0x000148:
    if !(< self.curx self.x) goto 0x000178
0x000160:
    self.curx = (+ self.curx 5s)
0x000178:
    if !(> self.cury self.y) goto 0x0001A8
0x000190:
    self.cury = (- self.cury 5s)
0x0001A8:
    if !(< self.cury self.y) goto 0x0001D8
0x0001C0:
    self.cury = (+ self.cury 5s)
0x0001D8:
    exit
