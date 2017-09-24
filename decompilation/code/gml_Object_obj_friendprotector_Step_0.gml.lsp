0x000000:
    if !(== self.fade 1s) goto 0x000088
0x000014:
    self.l_timer = (+ self.l_timer 1s)
    if !(> self.l_timer 15s) goto 0x000060
0x000040:
    self.image_alpha = (- self.image_alpha 0.1d)
0x000060:
    if !(< self.image_alpha 0.1d) goto 0x000088
0x00007C:
    call (instance_destroy[]:int32 )
0x000088:
    if !(== self.oo 0s) goto 0x0000A8
0x00009C:
    self.visible = 0s
0x0000A8:
    if !(== self.oo 1s) goto 0x0000C8
0x0000BC:
    self.visible = 1s
0x0000C8:
    if !(> self.timer 7s) goto 0x00011C
0x0000DC:
    self.oo = 1s
    self.visible = 1s
    if !(== self.go 1s) goto 0x00011C
0x000108:
    self.speed = 0.5d
0x00011C:
    if !(== self.oo 0s) goto 0x000140
0x000130:
    self.oo = 1s
    goto 0x00014C
0x000140:
    self.oo = 0s
0x00014C:
    self.timer = (+ self.timer 1s)
0x000164:
    exit
