0x000000:
    self.image_speed = 0s
    stog.alarm[0s] = (+ 60s (random[]:int32 (var 20s)))
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    exit
