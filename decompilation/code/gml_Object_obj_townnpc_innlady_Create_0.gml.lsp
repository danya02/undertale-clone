0x000000:
    self.jtext = 0s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    self.conversation = 0s
    push -5s
    if !(== 73s:flag 1s) goto 0x00009C
0x000070:
    self.conversation = 5s
    global.interact = 1s
    stog.alarm[6s] = 15s
0x00009C:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    exit
