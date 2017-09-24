0x000000:
    self.width = 0s
    self.le = 0s
    self.rc_cut = 0s
    self.rc_le = 0s
    push -5s
    self.ww1 = (- 1s:idealborder self.x)
    if !(> self.ww1 0s) goto 0x000078
0x000068:
    self.width = self.ww1
0x000078:
    push self.x
    self.ww2 = (- -5s (+ 0s:idealborder 5s))
    if !(< self.ww2 0s) goto 0x0000E4
0x0000B8:
    self.le = (- self.ww2)
    self.width = (+ 10s self.ww2)
0x0000E4:
    if !(> self.width 10s) goto 0x000104
0x0000F8:
    self.width = 10s
0x000104:
    if !(< self.width 9s) goto 0x000150
0x000118:
    self.rc_cut = (- 8s self.width)
    if !(< self.rc_cut 1s) goto 0x000150
0x000144:
    self.rc_cut = 0s
0x000150:
    if !(> self.le 1s) goto 0x0001A8
0x000164:
    self.rc_le = (- self.le 2s)
    self.rc_cut = 0s
    if !(> self.rc_le 8s) goto 0x0001A8
0x00019C:
    self.rc_le = 0s
0x0001A8:
    exit
