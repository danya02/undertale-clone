0x000000:
    if !(!= global.facing self.stepped) goto 0x000088
0x000018:
    if !(== global.facing 3s) goto 0x000050
0x00002C:
    other.y = (+ other.y 1s)
    self.stepped = 3s
0x000050:
    if !(== global.facing 1s) goto 0x000088
0x000064:
    other.y = (- other.y 1s)
    self.stepped = 1s
0x000088:
    exit
