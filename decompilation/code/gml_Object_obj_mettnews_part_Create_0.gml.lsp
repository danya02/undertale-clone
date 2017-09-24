0x000000:
    push self.xstart
    self.stayx = (- -1s 0s:view_xview)
    push self.ystart
    self.stayy = (- -1s 0s:view_yview)
    self.on = 1s
    self.ang = (+ 1s (* (random[]:int32 (var 2s)) (choose[]:int32 (var -1s) (var 1s))))
    if !(> self.ang 0s) goto 0x0000BC
0x0000A4:
    self.ang = (/ self.ang 2s)
0x0000BC:
    self.thischara = 1570s
0x0000C8:
    exit
