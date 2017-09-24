0x000000:
    self.image_xscale = -1s
    push -5s
    self.x = (- 0s:idealborder self.sprite_width)
    push -5s
    self.y = (- (- 3s:idealborder self.sprite_height) 36s)
    stog.alarm[0s] = 10s
    self.visible = 1s
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x0000C4
0x000090:
    stog.alarm[0s] = 60s
    stog.alarm[2s] = 60s
    global.turntimer = 170s
0x0000C4:
    exit
