0x000000:
    self.sprite_index = 917s
    self.whitepro = 0s
    self.timer = -10s
    self.d = 0s
    self.x = (+ self.x 3s)
    push -5s
    if !(== 7s:flag 1s) goto 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    exit
