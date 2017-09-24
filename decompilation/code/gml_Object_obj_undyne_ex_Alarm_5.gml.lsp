0x000000:
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
    if !(== 743.sprite_index 39s) goto 0x000058
0x000038:
    global.border = 12s
    call (event_user[]:int32 (var 2s))
0x000058:
    exit
