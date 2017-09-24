0x000000:
    self.image_xscale = 3s
    self.t = 0s
    if !(== self.room 57s) goto 0x000090
0x00002C:
    if !(>= (scr_murderlv[]:int32 ) 3s) goto 0x000090
0x000040:
    push -5s
    if !(== 64s:flag 0s) goto 0x000070
0x00005C:
    stog.flag[64s] = 1s
0x000070:
    if !(<= global.plot 48s) goto 0x000090
0x000084:
    global.plot = 49s
0x000090:
    exit
