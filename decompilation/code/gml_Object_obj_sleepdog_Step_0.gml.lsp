0x000000:
    if (!= 743.x 743.xprevious) goto 0x000030
0x000018:
    push (!= 743.y 743.yprevious)
    goto 0x000034
0x000030:
    push 1s
0x000034:
    if !pop goto 0x000050
0x000038:
    self.hmove = (+ self.hmove 1s)
0x000050:
    if !(> self.hmove 7s) goto 0x0000AC
0x000064:
    self.hmove = -99999
    self.sprite_index = 86s
    self.image_speed = 0s
    self.image_index = 0s
    stog.alarm[2s] = 2s
0x0000AC:
    if !(< global.turntimer 1s) goto 0x0000E4
0x0000C0:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x0000E4:
    exit
