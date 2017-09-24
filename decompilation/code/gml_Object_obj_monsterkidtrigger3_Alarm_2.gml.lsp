0x000000:
    if !(< self.numero 2s) goto 0x0000C8
0x000014:
    self.con = 6s
    self.x = 60s
    push 2.1d
    stog.follow* = (int32 self.mkid)
    push (- 1570.x 8s)
    stog.x* = (int32 self.mkid)
    push (+ 1570.y 8s)
    stog.y* = (int32 self.mkid)
    push (int32 self.mkid):usprite
    stog.sprite_index* = (int32 self.mkid)
    self.numero = 2s
0x0000C8:
    exit
